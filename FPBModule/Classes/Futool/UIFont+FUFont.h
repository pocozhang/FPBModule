//
//  UIFont+FUFont.h
//  FUSEPRO
//
//  Created by tancheng on 2019/1/10.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

/***
<string>Muli-ExtraLight.ttf</string>
<string>Muli-ExtraLightItalic.ttf</string>
<string>Muli-BoldItalic.ttf</string>
<string>Muli-Black.ttf</string>
<string>Muli-ExtraBold.ttf</string>
<string>Muli-Bold.ttf</string>
<string>Muli-ExtraBoldItalic.ttf</string>
<string>Muli-Italic.ttf</string>
<string>Muli-SemiBold.ttf</string>
<string>Muli-SemiBoldItalic.ttf</string>
<string>Muli-BlackItalic.ttf</string>
<string>Muli-Light.ttf</string>
<string>Muli-Regular.ttf</string>
<string>Muli-LightItalic.ttf</string>
*/
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    FUFontTypeRegular,
    FUFontTypeSemiBold,
    FUFontTypeBold,
    FUFontTypeExtraBold,
    FUFontTypeExtraLight,
    FUFontTypeExtraLightItalic,
    FUFontTypeBoldItalic,
    FUFontTypeBlack,
    FUFontTypeExtraBoldItalic,
    FUFontTypeItalic,
    FUFontTypeSemiBoldItalic,
    FUFontTypeBlackItalic,
    FUFontTypeLight,
    FUFontTypeLightItalic,
    
} FUFontType;

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (FUFont)

+ (UIFont *)fontWithType:(FUFontType)fontType fontSize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
