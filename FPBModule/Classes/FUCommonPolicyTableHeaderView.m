//
//  CarPolicyTableHeaderView.m
//  FUSEPRO
//
//  Created by Ch666 on 2018/5/14.
//  Copyright © 2018年 FUSENANO. All rights reserved.
//

#import "FUCommonPolicyTableHeaderView.h"
#import "NSBundle+SubBundle.h"

#import <Foundation/Foundation.h>

@implementation FUCommonPolicyTableHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(instancetype)FUCommonPolicyTableHeaderView
{
    
//     [[NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"FPBModule" withExtension:@"bundle"]] loadNibNamed:@"FUCommonPolicyTableHeaderView" owner:self options:nil];
     
    NSBundle * __nonnull subBundle = [NSBundle getSubBundleWithBundleName:@"FPBModule" podName:@""];

     
    return [[subBundle loadNibNamed:@"FUCommonPolicyTableHeaderView" owner:self options:nil] lastObject];
    
}

@end
