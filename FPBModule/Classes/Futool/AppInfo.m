//
//  AppInfo.m
//  FUSEPRO
//
//  Created by DUSTSKY on 2018/7/21.
//  Copyright © 2018 FUSENANO. All rights reserved.
//

#import "AppInfo.h"
#import <sys/utsname.h>

@implementation AppInfo

@synthesize areaCode = _areaCode;
@synthesize countryCode = _countryCode;

+ (AppInfo *)sharedInfo {
    
    static AppInfo *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (NSString *)appBuild{
    
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey];
}

- (NSString *)appVersion{
    
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
}

- (NSString *)iOSVersion{
    
    return [[UIDevice currentDevice] systemVersion];;
}

- (NSString *)systemVersion{
    NSString * str = [[UIDevice currentDevice] systemVersion];
    return str;
}

- (NSString *)iphoneModel{
    
    struct utsname systemInfo;
    
    uname(&systemInfo);
    
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
    
    if ([platform isEqualToString:@"iPod5,1"]) return @"iPod touch (5th generation)";
    
    if ([platform isEqualToString:@"iPod7,1"]) return @"iPod touch (6th generation)";
    
    if ([platform isEqualToString:@"iPod9,1"]) return @"iPod touch (7th generation)";
    
    if ([platform isEqualToString:@"iPhone3,1"]||[platform isEqualToString:@"iPhone3,2"]||[platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4";
    
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4s";
    
    if ([platform isEqualToString:@"iPhone5,1"]||[platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
    
    if ([platform isEqualToString:@"iPhone5,3"]||[platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c";
    
    if ([platform isEqualToString:@"iPhone6,1"]||[platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s";
    
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
    
    if ([platform isEqualToString:@"iPhone9,1"]||[platform isEqualToString:@"iPhone9,3"]) return @"iPhone 7";
    
    if ([platform isEqualToString:@"iPhone9,2"]||[platform isEqualToString:@"iPhone9,4"]) return @"iPhone 7 Plus";
    
    if ([platform isEqualToString:@"iPhone10,1"]||[platform isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    
    if ([platform isEqualToString:@"iPhone10,2"]||[platform isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    
    if ([platform isEqualToString:@"iPhone10,3"]||[platform isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    
    if ([platform isEqualToString:@"iPhone11,2"]) return @"iPhone XS";
    
    if ([platform isEqualToString:@"iPhone11,4"]||[platform isEqualToString:@"iPhone11,6"]) return @"iPhone XS Max";
    
    if ([platform isEqualToString:@"iPhone11,8"]) return @"iPhone XR";
    
    if ([platform isEqualToString:@"iPhone12,1"]) return @"iPhone 11";
    
    if ([platform isEqualToString:@"iPhone12,3"]) return @"iPhone 11 Pro";
    
    if ([platform isEqualToString:@"iPhone12,5"]) return @"iPhone 11 Pro Max";
    
    if ([platform isEqualToString:@"iPad2,1"]||[platform isEqualToString:@"iPad2,2"]||[platform isEqualToString:@"iPad2,4"]||[platform isEqualToString:@"iPad2,3"]) return @"iPad 2";
    
    if ([platform isEqualToString:@"iPad3,1"]||[platform isEqualToString:@"iPad3,2"]||[platform isEqualToString:@"iPad3,3"]) return @"iPad (3rd generation)";
    
    if ([platform isEqualToString:@"iPad3,4"]||[platform isEqualToString:@"iPad3,5"]||[platform isEqualToString:@"iPad3,6"]) return @"iPad (4th generation)";
    
    if ([platform isEqualToString:@"iPad6,11"]||[platform isEqualToString:@"iPad6,12"]) return @"iPad (5th generation)";
    
    if ([platform isEqualToString:@"iPad7,5"]||[platform isEqualToString:@"iPad7,6"]) return @"iPad (6th generation)";
    
    if ([platform isEqualToString:@"iPad7,11"]||[platform isEqualToString:@"iPad7,12"]) return @"iPad (7th generation)";
    
    if ([platform isEqualToString:@"iPad4,1"]||[platform isEqualToString:@"iPad4,2"]||[platform isEqualToString:@"iPad4,3"]) return @"iPad Air";
    
    if ([platform isEqualToString:@"iPad5,3"]||[platform isEqualToString:@"iPad5,4"]) return @"iPad Air 2";
    
    if ([platform isEqualToString:@"iPad11,4"]||[platform isEqualToString:@"iPad11,5"]) return @"iPad Air (3rd generation)";
    
    if ([platform isEqualToString:@"iPad2,5"]||[platform isEqualToString:@"iPad2,6"]||[platform isEqualToString:@"iPad2,7"]) return @"iPad mini";
    
    if ([platform isEqualToString:@"iPad4,4"]||[platform isEqualToString:@"iPad4,5"]||[platform isEqualToString:@"iPad4,6"]) return @"iPad mini 2";
    
    if ([platform isEqualToString:@"iPad4,7"]||[platform isEqualToString:@"iPad4,8"]||[platform isEqualToString:@"iPad4,9"]) return @"iPad mini 3";
    
    if ([platform isEqualToString:@"iPad5,1"]||[platform isEqualToString:@"iPad5,2"]) return @"iPad mini 4";
    
    
    if ([platform isEqualToString:@"iPad11,1"]||[platform isEqualToString:@"iPad11,2"]) return @"iPad mini (5th generation)";
    
    if ([platform isEqualToString:@"iPad6,3"]||[platform isEqualToString:@"iPad6,4"]) return @"iPad Pro (9.7-inch)";
    
    if ([platform isEqualToString:@"iPad6,7"]||[platform isEqualToString:@"iPad6,8"]) return @"iPad Pro (12.9-inch)";
    
    if ([platform isEqualToString:@"iPad6,7"]||[platform isEqualToString:@"iPad6,8"]) return @"iPad Pro (12.9-inch)";
    
    if ([platform isEqualToString:@"iPad7,1"]||[platform isEqualToString:@"iPad7,2"]) return @"iPad Pro (12.9-inch) (2nd generation)";
    
    if ([platform isEqualToString:@"iPad7,3"]||[platform isEqualToString:@"iPad7,4"]) return @"iPad Pro (10.5-inch)";
    
    if ([platform isEqualToString:@"iPad8,1"]||[platform isEqualToString:@"iPad8,2"]||[platform isEqualToString:@"iPad8,3"]||[platform isEqualToString:@"iPad8,4"]) return @"iPad Pro (11-inch)";
    
    if ([platform isEqualToString:@"iPad8,5"]||[platform isEqualToString:@"iPad8,6"]||[platform isEqualToString:@"iPad8,7"]||[platform isEqualToString:@"iPad8,8"]) return @"iPad Pro (12.9-inch) (3rd generation)";
    
    if ([platform isEqualToString:@"AppleTV5,3"]) return @"Apple TV";
    
    if ([platform isEqualToString:@"AppleTV6,2"]) return @"Apple TV 4K";
    
    if ([platform isEqualToString:@"AudioAccessory1,1"]) return @"HomePod";
    
    if ([platform isEqualToString:@"i386"]||[platform isEqualToString:@"x86_64"]) return @"Simulator";
    return platform;
    
}

- (NSString *)appBundleName{
    
    return [[NSBundle mainBundle] bundleIdentifier];
}

- (NSString *)appName{
    
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString*)kCFBundleNameKey];
}

- (NSString *)areaCode{
    
    if (_areaCode) {
        return _areaCode;
    }
    _areaCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"APP_AREA_CODE"];
    return _areaCode;
}

- (BOOL)hasIntr{
    
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"APP_HAS_INTRO"] ;
}

- (NSString *)countryCode{
    
    if (_countryCode) {
        return _countryCode;
    }
    _countryCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"APP_COUNTRY_CODE"];
    return _countryCode;
}

- (void)setAreaCode:(NSString *)areaCode{
    
    _areaCode = areaCode;
    [[NSUserDefaults standardUserDefaults] setObject:areaCode forKey:@"APP_AREA_CODE"];
}

- (void)setCountryCode:(NSString *)countryCode{
    
    _countryCode = countryCode;
    [[NSUserDefaults standardUserDefaults] setObject:countryCode forKey:@"APP_COUNTRY_CODE"];
}

- (void)setHasIntr:(BOOL)hasIntr{
    
    [[NSUserDefaults standardUserDefaults] setObject:@(hasIntr) forKey:@"APP_HAS_INTRO"];
}

- (NSString *)showVersionInApp{
    
    NSString *prefix = @"";
    #if ENV_PRODUCTION
    
    #elif ENV_PRERELEASE
        prefix = @"(UAT)";
    #elif ENV_STAGING
        prefix = @"(Staging)";
    #elif ENV_TESTING
        prefix = @"(Testing)";
    #endif
    
    return prefix;
}



@end
