//
//  UIImageView+FUWebImage.h
//  FUSEPRO
//
//  Created by tancheng on 2019/3/5.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (FUWebImage)

- (void)fu_setImageWithAffixId:(NSString *)affixId requesturl:(NSString *)requesturl placeholderImage:(nullable UIImage *)placeholderImage;

@end

NS_ASSUME_NONNULL_END
