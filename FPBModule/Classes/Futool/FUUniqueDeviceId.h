//
//  FUUniqueDeviceId.h
//  FUSEPRO
//
//  Created by Ch666 on 2019/4/8.
//  Copyright © 2019年 FUSENANO. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FUUniqueDeviceId : NSObject

+ (void)setUniqueUUID;

+ (NSString *)getUniqueUUID;

+ (void)deleteUniqueUUID;

@end

NS_ASSUME_NONNULL_END
