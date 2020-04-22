//
//  FullPathResultObj.m
//
//  Created by   on 2018/5/22
//  Copyright (c) 2018 __MyCompanyName__. All rights reserved.
//

#import "FullPathResultObj.h"
#import "FullPathFileInfo.h"


NSString *const kFullPathResultObjFileInfo = @"fileInfo";


@interface FullPathResultObj ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation FullPathResultObj

@synthesize fileInfo = _fileInfo;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
    NSObject *receivedFullPathFileInfo = [dict objectForKey:kFullPathResultObjFileInfo];
    NSMutableArray *parsedFullPathFileInfo = [NSMutableArray array];
    
    if ([receivedFullPathFileInfo isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedFullPathFileInfo) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedFullPathFileInfo addObject:[FullPathFileInfo modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedFullPathFileInfo isKindOfClass:[NSDictionary class]]) {
       [parsedFullPathFileInfo addObject:[FullPathFileInfo modelObjectWithDictionary:(NSDictionary *)receivedFullPathFileInfo]];
    }

    self.fileInfo = [NSArray arrayWithArray:parsedFullPathFileInfo];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForFileInfo = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.fileInfo) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForFileInfo addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForFileInfo addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForFileInfo] forKey:kFullPathResultObjFileInfo];

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

    self.fileInfo = [aDecoder decodeObjectForKey:kFullPathResultObjFileInfo];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_fileInfo forKey:kFullPathResultObjFileInfo];
}

- (id)copyWithZone:(NSZone *)zone {
    FullPathResultObj *copy = [[FullPathResultObj alloc] init];
    
    
    
    if (copy) {

        copy.fileInfo = [self.fileInfo copyWithZone:zone];
    }
    
    return copy;
}


@end
