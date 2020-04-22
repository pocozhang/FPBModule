//
//  UIImageView+FUWebImage.m
//  FUSEPRO
//
//  Created by tancheng on 2019/3/5.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

#import "UIImageView+FUWebImage.h"
#import "FullPathDataModels.h"
#import "YYCache.h"
#import "XMCenter.h"
#import "XMRequest.h"
#import "UIImageView+WebCache.h"
#import "FUtools.h"
NSString *const kCachePathKey = @"com.fuse.img.cache";

@implementation UIImageView (FUWebImage)

- (void)fu_setImageWithAffixId:(NSString *)affixId requesturl:(nonnull NSString *)requesturl placeholderImage:(nullable UIImage *)placeholderImage {
    
    UIImage *kPlaceholder = placeholderImage;
    
    if (kPlaceholder == nil) {
        kPlaceholder = [UIImage imageNamed:@"img_back"];
    }
    
    if ([FUTools isEmptyString:affixId]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.image = kPlaceholder;
        });
        return;
    }
    
    YYCache *cache = [[YYCache alloc] initWithName:kCachePathKey];
    if ([cache containsObjectForKey:affixId]) {
        NSString *imgPath = (NSString *)[cache objectForKey:affixId];
        NSURL *picURL = [NSURL URLWithString:imgPath];
        if (picURL) {
            [self sd_setImageWithURL:picURL placeholderImage:kPlaceholder];
        }else{
            dispatch_async(dispatch_get_main_queue(), ^{
                self.image = kPlaceholder;
            });;
        }
        return;
    }
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [XMCenter sendRequest:^(XMRequest * _Nonnull request) {
        request.parameters = params;
        request.httpMethod = kXMHTTPMethodPOST;
        request.headers = [FUTools headerDict:params];
        request.requestSerializerType = kXMRequestSerializerJSON;
        
        request.url = [NSString stringWithFormat:@"%@%@?affixId=%@",@"http://47.74.177.113/insurance-finance-vs-api/",@"api/fuse/file/oper/file/get",affixId];
    } onSuccess:^(id  _Nullable responseObject) {
        FullPathBaseClass *fullBase = [FullPathBaseClass modelObjectWithDictionary:responseObject];
        if (fullBase.errorCode.length == 0) {
            if (fullBase.resultObj.fileInfo.count>0) {
                
                FullPathFileInfo *fileInfo =fullBase.resultObj.fileInfo[0];
                NSString *picPath = [NSString stringWithFormat:@"%@%@",fullBase.picPath,fileInfo.affixPath];
                NSURL *picURL = [NSURL URLWithString:picPath];
                
                YYCache *cache = [[YYCache alloc] initWithName:kCachePathKey];
                [cache setObject:picPath forKey:affixId];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    if (picURL) {
                        [self sd_setImageWithURL:picURL placeholderImage:kPlaceholder];
                    }else{
                        self.image = kPlaceholder;
                    }
                });
            }else{
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.image = kPlaceholder;
                });
            }
        }
        
    } onFailure:^(NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.image = kPlaceholder;
        });
    }];
    
}

@end
