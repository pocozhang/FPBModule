//
//  FullPathFileInfo.h
//
//  Created by   on 2018/5/22
//  Copyright (c) 2018 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface FullPathFileInfo : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *affixInfo;
@property (nonatomic, strong) NSString *accountId;
@property (nonatomic, strong) NSString *affixPath;
@property (nonatomic, strong) NSString *affixDate;
@property (nonatomic, strong) NSString *affixName;
@property (nonatomic, strong) NSString *affixId;
@property (nonatomic, strong) NSString *affixSeq;
@property (nonatomic, strong) NSString *affixDateTime;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
