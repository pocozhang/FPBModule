//
//  FullPathBaseClass.m
//
//  Created by   on 2018/5/22
//  Copyright (c) 2018 __MyCompanyName__. All rights reserved.
//

#import "FullPathBaseClass.h"
#import "FullPathResultObj.h"


NSString *const kFullPathBaseClassAccount = @"account";
NSString *const kFullPathBaseClassSuccessCode = @"successCode";
NSString *const kFullPathBaseClassServiceResult = @"serviceResult";
NSString *const kFullPathBaseClassParams = @"params";
NSString *const kFullPathBaseClassSumSucessCode = @"sumSucessCode";
NSString *const kFullPathBaseClassTypeFlag = @"typeFlag";
NSString *const kFullPathBaseClassSumErrorCode = @"sumErrorCode";
NSString *const kFullPathBaseClassModuleId = @"moduleId";
NSString *const kFullPathBaseClassErrorStepNo = @"errorStepNo";
NSString *const kFullPathBaseClassErrorCode = @"errorCode";
NSString *const kFullPathBaseClassBeforeUpdateInfo = @"beforeUpdateInfo";
NSString *const kFullPathBaseClassPicPath = @"picPath";
NSString *const kFullPathBaseClassResultObj = @"resultObj";
NSString *const kFullPathBaseClassEx = @"ex";
NSString *const kFullPathBaseClassCheckInInfo = @"checkInInfo";
NSString *const kFullPathBaseClassServiceName = @"serviceName";


@interface FullPathBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FullPathBaseClass

@synthesize account = _account;
@synthesize successCode = _successCode;
@synthesize serviceResult = _serviceResult;
@synthesize params = _params;
@synthesize sumSucessCode = _sumSucessCode;
@synthesize typeFlag = _typeFlag;
@synthesize sumErrorCode = _sumErrorCode;
@synthesize moduleId = _moduleId;
@synthesize errorStepNo = _errorStepNo;
@synthesize errorCode = _errorCode;
@synthesize beforeUpdateInfo = _beforeUpdateInfo;
@synthesize picPath = _picPath;
@synthesize resultObj = _resultObj;
@synthesize ex = _ex;
@synthesize checkInInfo = _checkInInfo;
@synthesize serviceName = _serviceName;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.account = [self objectOrNilForKey:kFullPathBaseClassAccount fromDictionary:dict];
            self.successCode = [self objectOrNilForKey:kFullPathBaseClassSuccessCode fromDictionary:dict];
            self.serviceResult = [self objectOrNilForKey:kFullPathBaseClassServiceResult fromDictionary:dict];
            self.params = [self objectOrNilForKey:kFullPathBaseClassParams fromDictionary:dict];
            self.sumSucessCode = [self objectOrNilForKey:kFullPathBaseClassSumSucessCode fromDictionary:dict];
            self.typeFlag = [self objectOrNilForKey:kFullPathBaseClassTypeFlag fromDictionary:dict];
            self.sumErrorCode = [self objectOrNilForKey:kFullPathBaseClassSumErrorCode fromDictionary:dict];
            self.moduleId = [self objectOrNilForKey:kFullPathBaseClassModuleId fromDictionary:dict];
            self.errorStepNo = [self objectOrNilForKey:kFullPathBaseClassErrorStepNo fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kFullPathBaseClassErrorCode fromDictionary:dict];
            self.beforeUpdateInfo = [self objectOrNilForKey:kFullPathBaseClassBeforeUpdateInfo fromDictionary:dict];
            self.picPath = [self objectOrNilForKey:kFullPathBaseClassPicPath fromDictionary:dict];
            self.resultObj = [FullPathResultObj modelObjectWithDictionary:[dict objectForKey:kFullPathBaseClassResultObj]];
            self.ex = [self objectOrNilForKey:kFullPathBaseClassEx fromDictionary:dict];
            self.checkInInfo = [self objectOrNilForKey:kFullPathBaseClassCheckInInfo fromDictionary:dict];
            self.serviceName = [self objectOrNilForKey:kFullPathBaseClassServiceName fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.account forKey:kFullPathBaseClassAccount];
    [mutableDict setValue:self.successCode forKey:kFullPathBaseClassSuccessCode];
    [mutableDict setValue:self.serviceResult forKey:kFullPathBaseClassServiceResult];
    [mutableDict setValue:self.params forKey:kFullPathBaseClassParams];
    [mutableDict setValue:self.sumSucessCode forKey:kFullPathBaseClassSumSucessCode];
    [mutableDict setValue:self.typeFlag forKey:kFullPathBaseClassTypeFlag];
    [mutableDict setValue:self.sumErrorCode forKey:kFullPathBaseClassSumErrorCode];
    [mutableDict setValue:self.moduleId forKey:kFullPathBaseClassModuleId];
    [mutableDict setValue:self.errorStepNo forKey:kFullPathBaseClassErrorStepNo];
    [mutableDict setValue:self.errorCode forKey:kFullPathBaseClassErrorCode];
    [mutableDict setValue:self.beforeUpdateInfo forKey:kFullPathBaseClassBeforeUpdateInfo];
    [mutableDict setValue:self.picPath forKey:kFullPathBaseClassPicPath];
    [mutableDict setValue:[self.resultObj dictionaryRepresentation] forKey:kFullPathBaseClassResultObj];
    [mutableDict setValue:self.ex forKey:kFullPathBaseClassEx];
    [mutableDict setValue:self.checkInInfo forKey:kFullPathBaseClassCheckInInfo];
    [mutableDict setValue:self.serviceName forKey:kFullPathBaseClassServiceName];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description  {
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict {
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];

    self.account = [aDecoder decodeObjectForKey:kFullPathBaseClassAccount];
    self.successCode = [aDecoder decodeObjectForKey:kFullPathBaseClassSuccessCode];
    self.serviceResult = [aDecoder decodeObjectForKey:kFullPathBaseClassServiceResult];
    self.params = [aDecoder decodeObjectForKey:kFullPathBaseClassParams];
    self.sumSucessCode = [aDecoder decodeObjectForKey:kFullPathBaseClassSumSucessCode];
    self.typeFlag = [aDecoder decodeObjectForKey:kFullPathBaseClassTypeFlag];
    self.sumErrorCode = [aDecoder decodeObjectForKey:kFullPathBaseClassSumErrorCode];
    self.moduleId = [aDecoder decodeObjectForKey:kFullPathBaseClassModuleId];
    self.errorStepNo = [aDecoder decodeObjectForKey:kFullPathBaseClassErrorStepNo];
    self.errorCode = [aDecoder decodeObjectForKey:kFullPathBaseClassErrorCode];
    self.beforeUpdateInfo = [aDecoder decodeObjectForKey:kFullPathBaseClassBeforeUpdateInfo];
    self.picPath = [aDecoder decodeObjectForKey:kFullPathBaseClassPicPath];
    self.resultObj = [aDecoder decodeObjectForKey:kFullPathBaseClassResultObj];
    self.ex = [aDecoder decodeObjectForKey:kFullPathBaseClassEx];
    self.checkInInfo = [aDecoder decodeObjectForKey:kFullPathBaseClassCheckInInfo];
    self.serviceName = [aDecoder decodeObjectForKey:kFullPathBaseClassServiceName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_account forKey:kFullPathBaseClassAccount];
    [aCoder encodeObject:_successCode forKey:kFullPathBaseClassSuccessCode];
    [aCoder encodeObject:_serviceResult forKey:kFullPathBaseClassServiceResult];
    [aCoder encodeObject:_params forKey:kFullPathBaseClassParams];
    [aCoder encodeObject:_sumSucessCode forKey:kFullPathBaseClassSumSucessCode];
    [aCoder encodeObject:_typeFlag forKey:kFullPathBaseClassTypeFlag];
    [aCoder encodeObject:_sumErrorCode forKey:kFullPathBaseClassSumErrorCode];
    [aCoder encodeObject:_moduleId forKey:kFullPathBaseClassModuleId];
    [aCoder encodeObject:_errorStepNo forKey:kFullPathBaseClassErrorStepNo];
    [aCoder encodeObject:_errorCode forKey:kFullPathBaseClassErrorCode];
    [aCoder encodeObject:_beforeUpdateInfo forKey:kFullPathBaseClassBeforeUpdateInfo];
    [aCoder encodeObject:_picPath forKey:kFullPathBaseClassPicPath];
    [aCoder encodeObject:_resultObj forKey:kFullPathBaseClassResultObj];
    [aCoder encodeObject:_ex forKey:kFullPathBaseClassEx];
    [aCoder encodeObject:_checkInInfo forKey:kFullPathBaseClassCheckInInfo];
    [aCoder encodeObject:_serviceName forKey:kFullPathBaseClassServiceName];
}

- (id)copyWithZone:(NSZone *)zone {
    FullPathBaseClass *copy = [[FullPathBaseClass alloc] init];
    
    
    
    if (copy) {

        copy.account = [self.account copyWithZone:zone];
        copy.successCode = [self.successCode copyWithZone:zone];
        copy.serviceResult = [self.serviceResult copyWithZone:zone];
        copy.params = [self.params copyWithZone:zone];
        copy.sumSucessCode = [self.sumSucessCode copyWithZone:zone];
        copy.typeFlag = [self.typeFlag copyWithZone:zone];
        copy.sumErrorCode = [self.sumErrorCode copyWithZone:zone];
        copy.moduleId = [self.moduleId copyWithZone:zone];
        copy.errorStepNo = [self.errorStepNo copyWithZone:zone];
        copy.errorCode = [self.errorCode copyWithZone:zone];
        copy.beforeUpdateInfo = [self.beforeUpdateInfo copyWithZone:zone];
        copy.picPath = [self.picPath copyWithZone:zone];
        copy.resultObj = [self.resultObj copyWithZone:zone];
        copy.ex = [self.ex copyWithZone:zone];
        copy.checkInInfo = [self.checkInInfo copyWithZone:zone];
        copy.serviceName = [self.serviceName copyWithZone:zone];
    }
    
    return copy;
}


@end
