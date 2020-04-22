//
//  GDLocalizableController.h
//  Internationalization
//
//  Created by Qiulong-CQ on 16/12/2.
//  Copyright © 2016年 xiaoheng. All rights reserved.
//


// ----- 多语言设置
#define BAHASA @"id"
#define ENGLISH @"en"
#define GDLocalizedString(key) [[GDLocalizableController bundle] localizedStringForKey:(key) value:@"" table:nil]
//获取摸个模块中的本地字符
#define GDLocalizedStringTable(key,tbl) [[GDLocalizableController bundle] localizedStringForKey:(key) value:@"" table:(tbl)]

#define ChangeLanguageNotificationName @"changeLanguage"

//本地字符模块
#define kLocalizeTableVip @"Vip"


//财产险模块模块
#define kLocalizeTableProperty @"Property"


#define kLocalizeTablePolicy @"Policy"

#define kLocalizeTableHealth @"Health"

#define kLocalizeTableCustomer @"Customer"

#define kLocalizeTableOther @"Other"

#define kLocalizeTableClaim @"Claim"

#define KLocalizeTableMarineCargo @"Cargo"

#define KLocalizeTableMarineROP @"ROP"

#define kLocalizeTableSME @"SME"

#define kLocalizeTableDigital3C @"Digital3C"

#import <Foundation/Foundation.h>

@interface GDLocalizableController : NSObject


+(NSBundle *)bundle;//获取当前资源文件

+(void)initUserLanguage;//初始化语言文件

+(NSString *)userLanguage;//获取应用当前语言

+(void)setUserlanguage:(NSString *)language needPostNoti:(BOOL)isNeed;//设置当前语言

@end
