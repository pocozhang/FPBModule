//
//  GDLocalizableController.m
//  Internationalization
//
//  Created by Qiulong-CQ on 16/12/2.
//  Copyright © 2016年 xiaoheng. All rights reserved.
//

#import "GDLocalizableController.h"


@implementation GDLocalizableController

static NSBundle *bundle = nil;

+ ( NSBundle * )bundle{
    return bundle;
    
}
+(void)initUserLanguage{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    NSString *string = [def valueForKey:@"userLanguage"];
    //NSString *string = @"";
    if(string.length == 0){
        //获取系统当前语言版本
        NSArray* languages = [def objectForKey:@"AppleLanguages"];
        NSString *current = [languages objectAtIndex:0];
        NSLog(@"current---%@",current);
        if ([current containsString:@"en"] == YES) {
            current = @"en";
        }else if([current containsString:@"zh"]){
            current = @"id";
        }else{
            current = @"id";
        }
        
        if (![[NSUserDefaults standardUserDefaults] boolForKey:@"FirstBlood"]) {
            current = @"id";
            [[NSUserDefaults standardUserDefaults] setBool:true forKey:@"FirstBlood"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        string = current;
        [def setValue:current forKey:@"userLanguage"];
        [def synchronize];//持久化，不加的话不会保存
    }
    
    //获取文件路径
    NSString *path = [[NSBundle mainBundle] pathForResource:string ofType:@"lproj"];
    bundle = [NSBundle bundleWithPath:path];//生成bundle
    
}

+(NSString *)userLanguage{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    NSString *language = [def valueForKey:@"userLanguage"];
    return language;
}

+(void)setUserlanguage:(NSString *)language needPostNoti:(BOOL)isNeed{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    
    //1.第一步改变bundle的值
    NSString *path = [[NSBundle mainBundle] pathForResource:language ofType:@"lproj" ];
    bundle = [NSBundle bundleWithPath:path];
    
    //2.持久化
    [def setValue:language forKey:@"userLanguage"];
    [def synchronize];
    
    if (isNeed) {
        [[NSNotificationCenter defaultCenter] postNotificationName:ChangeLanguageNotificationName object:nil];
    }
    
}


@end
