//
//  NSBundle+SubBundle.h
//  FUSEPRO
//111
//  Created by 张虎 on 2020/4/16.
//  Copyright © 2020 FUSENANO. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (SubBundle)

/**
 获取文件所在name，默认情况下podName和bundlename相同，传一个即可
 
 @param bundleName bundle名字，就是在resource_bundles里面的名字
 @param podName pod的名字
 @return bundle
 */

+ (NSBundle *)getSubBundleWithBundleName:(NSString *)bundleName podName:(NSString *)podName;

@end

NS_ASSUME_NONNULL_END
