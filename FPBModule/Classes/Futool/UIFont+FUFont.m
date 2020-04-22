//
//  UIFont+FUFont.m
//  FUSEPRO
//
//  Created by tancheng on 2019/1/10.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

#import "UIFont+FUFont.h"

@implementation UIFont (FUFont)

+ (UIFont *)fontWithType:(FUFontType)fontType fontSize:(CGFloat)fontSize {
    NSString *fontName;
    switch (fontType) {
        case FUFontTypeRegular:
            fontName = @"Muli-Regular";
            break;
        case FUFontTypeSemiBold:
            fontName = @"Muli-SemiBold";
            break;
        case FUFontTypeBold:
            fontName = @"Muli-Bold";
            break;
        case FUFontTypeBlack:
            fontName = @"Muli-Black";
            break;
        case FUFontTypeExtraBold:
            fontName = @"Muli-ExtraBold";
            break;
        case FUFontTypeExtraLight:
            fontName = @"Muli-ExtraLight";
            break;
        case FUFontTypeExtraLightItalic:
            fontName = @"Muli-ExtraLightItalic";
            break;
        case FUFontTypeExtraBoldItalic:
            fontName = @"Muli-ExtraBoldItalic";
            break;
        case FUFontTypeItalic:
            fontName = @"Muli-Italic";
            break;
        case FUFontTypeBoldItalic:
            fontName = @"Muli-BoldItalic";
            break;
        case FUFontTypeSemiBoldItalic:
            fontName = @"Muli-SemiBoldItalic";
            break;
        case FUFontTypeBlackItalic:
            fontName = @"Muli-BlackItalic";
            break;
        case FUFontTypeLight:
            fontName = @"Muli-Light";
            break;
        case FUFontTypeLightItalic:
            fontName = @"Muli-LightItalic";
            break;
    }
    return [UIFont fontWithName:fontName size:fontSize];
}

@end
