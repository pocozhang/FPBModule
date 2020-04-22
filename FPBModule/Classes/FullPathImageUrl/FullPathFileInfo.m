//
//  FullPathFileInfo.m
//
//  Created by   on 2018/5/22
//  Copyright (c) 2018 __MyCompanyName__. All rights reserved.
//

#import "FullPathFileInfo.h"


NSString *const kFullPathFileInfoAffixInfo = @"affixInfo";
NSString *const kFullPathFileInfoAccountId = @"accountId";
NSString *const kFullPathFileInfoAffixPath = @"affixPath";
NSString *const kFullPathFileInfoAffixDate = @"affixDate";
NSString *const kFullPathFileInfoAffixName = @"affixName";
NSString *const kFullPathFileInfoAffixId = @"affixId";
NSString *const kFullPathFileInfoAffixSeq = @"affixSeq";
NSString *const kFullPathFileInfoAffixDateTime = @"affixDateTime";


@interface FullPathFileInfo ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FullPathFileInfo

@synthesize affixInfo = _affixInfo;
@synthesize accountId = _accountId;
@synthesize affixPath = _affixPath;
@synthesize affixDate = _affixDate;
@synthesize affixName = _affixName;
@synthesize affixId = _affixId;
@synthesize affixSeq = _affixSeq;
@synthesize affixDateTime = _affixDateTime;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.affixInfo = [self objectOrNilForKey:kFullPathFileInfoAffixInfo fromDictionary:dict];
            self.accountId = [self objectOrNilForKey:kFullPathFileInfoAccountId fromDictionary:dict];
            self.affixPath = [self objectOrNilForKey:kFullPathFileInfoAffixPath fromDictionary:dict];
            self.affixDate = [self objectOrNilForKey:kFullPathFileInfoAffixDate fromDictionary:dict];
            self.affixName = [self objectOrNilForKey:kFullPathFileInfoAffixName fromDictionary:dict];
            self.affixId = [self objectOrNilForKey:kFullPathFileInfoAffixId fromDictionary:dict];
            self.affixSeq = [self objectOrNilForKey:kFullPathFileInfoAffixSeq fromDictionary:dict];
            self.affixDateTime = [self objectOrNilForKey:kFullPathFileInfoAffixDateTime fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.affixInfo forKey:kFullPathFileInfoAffixInfo];
    [mutableDict setValue:self.accountId forKey:kFullPathFileInfoAccountId];
    [mutableDict setValue:self.affixPath forKey:kFullPathFileInfoAffixPath];
    [mutableDict setValue:self.affixDate forKey:kFullPathFileInfoAffixDate];
    [mutableDict setValue:self.affixName forKey:kFullPathFileInfoAffixName];
    [mutableDict setValue:self.affixId forKey:kFullPathFileInfoAffixId];
    [mutableDict setValue:self.affixSeq forKey:kFullPathFileInfoAffixSeq];
    [mutableDict setValue:self.affixDateTime forKey:kFullPathFileInfoAffixDateTime];

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

    self.affixInfo = [aDecoder decodeObjectForKey:kFullPathFileInfoAffixInfo];
    self.accountId = [aDecoder decodeObjectForKey:kFullPathFileInfoAccountId];
    self.affixPath = [aDecoder decodeObjectForKey:kFullPathFileInfoAffixPath];
    self.affixDate = [aDecoder decodeObjectForKey:kFullPathFileInfoAffixDate];
    self.affixName = [aDecoder decodeObjectForKey:kFullPathFileInfoAffixName];
    self.affixId = [aDecoder decodeObjectForKey:kFullPathFileInfoAffixId];
    self.affixSeq = [aDecoder decodeObjectForKey:kFullPathFileInfoAffixSeq];
    self.affixDateTime = [aDecoder decodeObjectForKey:kFullPathFileInfoAffixDateTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_affixInfo forKey:kFullPathFileInfoAffixInfo];
    [aCoder encodeObject:_accountId forKey:kFullPathFileInfoAccountId];
    [aCoder encodeObject:_affixPath forKey:kFullPathFileInfoAffixPath];
    [aCoder encodeObject:_affixDate forKey:kFullPathFileInfoAffixDate];
    [aCoder encodeObject:_affixName forKey:kFullPathFileInfoAffixName];
    [aCoder encodeObject:_affixId forKey:kFullPathFileInfoAffixId];
    [aCoder encodeObject:_affixSeq forKey:kFullPathFileInfoAffixSeq];
    [aCoder encodeObject:_affixDateTime forKey:kFullPathFileInfoAffixDateTime];
}

- (id)copyWithZone:(NSZone *)zone {
    FullPathFileInfo *copy = [[FullPathFileInfo alloc] init];
    
    
    
    if (copy) {

        copy.affixInfo = [self.affixInfo copyWithZone:zone];
        copy.accountId = [self.accountId copyWithZone:zone];
        copy.affixPath = [self.affixPath copyWithZone:zone];
        copy.affixDate = [self.affixDate copyWithZone:zone];
        copy.affixName = [self.affixName copyWithZone:zone];
        copy.affixId = [self.affixId copyWithZone:zone];
        copy.affixSeq = [self.affixSeq copyWithZone:zone];
        copy.affixDateTime = [self.affixDateTime copyWithZone:zone];
    }
    
    return copy;
}


@end
