//
//  FullPathBaseClass.h
//
//  Created by   on 2018/5/22
//  Copyright (c) 2018 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FullPathResultObj;

@interface FullPathBaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) id account;
@property (nonatomic, strong) NSString *successCode;
@property (nonatomic, assign) id serviceResult;
@property (nonatomic, assign) id params;
@property (nonatomic, assign) id sumSucessCode;
@property (nonatomic, strong) NSString *typeFlag;
@property (nonatomic, assign) id sumErrorCode;
@property (nonatomic, strong) NSString *moduleId;
@property (nonatomic, strong) NSString *errorStepNo;
@property (nonatomic, strong) NSString *errorCode;
@property (nonatomic, assign) id beforeUpdateInfo;
@property (nonatomic, strong) NSString *picPath;
@property (nonatomic, strong) FullPathResultObj *resultObj;
@property (nonatomic, strong) NSString *ex;
@property (nonatomic, strong) NSString *checkInInfo;
@property (nonatomic, strong) NSString *serviceName;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
