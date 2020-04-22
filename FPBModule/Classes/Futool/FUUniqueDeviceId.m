//
//  FUUniqueDeviceId.m
//  FUSEPRO
//
//  Created by Ch666 on 2019/4/8.
//  Copyright © 2019年 FUSENANO. All rights reserved.
//

#import "FUUniqueDeviceId.h"
#import "SAMKeychain.h"
#import "FUDefineMacro.h"

@implementation FUUniqueDeviceId

+ (void)setUniqueUUID{
    NSString *uuid_keychain = [SAMKeychain passwordForService:kUUID_IN_KEYCHAIN account:kUUID_IN_KEYCHAIN_ACCOUNT];
    if (uuid_keychain == nil || uuid_keychain.length == 0) {
        NSString *deviceUUID = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        
        NSLog(@"%@",deviceUUID);
        [SAMKeychain setPassword:deviceUUID forService:kUUID_IN_KEYCHAIN account:kUUID_IN_KEYCHAIN_ACCOUNT];
    }

}

+ (NSString *)getUniqueUUID{
    
    NSString *uuid_keychain = [SAMKeychain passwordForService:kUUID_IN_KEYCHAIN account:kUUID_IN_KEYCHAIN_ACCOUNT];
    if (uuid_keychain != nil && uuid_keychain.length!=0) {
        return uuid_keychain;
    }
    return @"";
}

+ (void)deleteUniqueUUID{
    
    [SAMKeychain deletePasswordForService:kUUID_IN_KEYCHAIN account:kUUID_IN_KEYCHAIN_ACCOUNT];
}

@end
