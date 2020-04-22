//
//  AppInfo.h
//  FUSEPRO
//
//  Created by DUSTSKY on 2018/7/21.
//  Copyright © 2018 FUSENANO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppInfo : NSObject

+ (AppInfo *)sharedInfo;

@property (nonatomic,copy) NSString *appVersion;
@property (nonatomic,copy) NSString *appBundleName;
@property (nonatomic,copy) NSString *appBuild;
@property (nonatomic,copy) NSString *areaCode;
@property (nonatomic,copy) NSString *countryCode;
@property (nonatomic,copy) NSString *iphoneModel;
@property (nonatomic,copy) NSString *iOSVersion;
@property (nonatomic,copy) NSString *systemVersion;
@property (nonatomic,assign) BOOL hasIntr;
@property (nonatomic,assign) BOOL hasAlertSpecial;
@property (nonatomic,assign) BOOL isLocking;
- (NSString *)showVersionInApp;
@end
