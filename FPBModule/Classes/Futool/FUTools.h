//
//  FUTools.h
//  FUSE
//
//  Created by Ch666 on 2017/5/3.
//  Copyright © 2017年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "NSString+utils.h"

#define APP_SECRET @"fuseapp123456"

#define APP_SALT @"fuse"

#define APP_KEY @"fuseApp"

@interface FUTools : NSObject

//验证邮箱
+ (BOOL)isValidateEmail:(NSString *)email;
//判断全是空格
+ (BOOL)isEmptyString:(NSString *)str;

//解析富文本
+ (NSAttributedString *)parseHtml:(NSString *)htmlString;
//验证ktp
+ (BOOL)isValidateKtp:(NSString *)ktp;


//fix bug mym
+ (NSString *)threeSeparteWithDoubleNotUsingUnit:(double)num;

+ (NSString *)threeSeparteWithDouble:(double)num;

+ (NSString *)getPureStringBydelete:(NSString *)inputStr;


+ (NSDate *)datejishuangCycle:(int)cycle withDate:(NSDate *)date Unit:(int)units;

+ (BOOL) isValidateCamera;

+ (NSMutableAttributedString *)changeTextColorBasetext:(NSString *)basetext colorText:(NSString *)colorText;

+ (NSString *)timeDetailWithTimeIntervalString:(NSString *)timeString;

+ (NSString *)createByServerTimeWithTimestring:(NSString *)timeString formatter:(NSString *)formatterString;

+ (NSString *)addAsteriskIWithString:(NSString *)inputString;

+ (BOOL)isNumber:(NSString *)str;

+(NSString *)switchStringWithDictionary:(NSDictionary *)dict;

+ (NSDictionary *)headerDict:(NSDictionary *)pramas;

+ (NSString *)currentLanguage;

+ (NSString *)fomatterUploadTime:(NSDate *)date;

+ (NSString *)hiddenMobile:(NSString *)mobile;

+ (NSString *)timeWithTimestring:(NSString *)timeString formatter:(NSString *)formatterString;

+ (NSString *)threeSeparteWithDouble:(double)num withCurrency:(NSString *)currencys;

//小数点隔位符
+ (NSString *)threeSeparteWithoutCureencyWithDouble:(double)num;

+ (NSDate *)convertStringToDate:(NSString *)aString;
//获取时间差值
+ (NSInteger)getDayintervalFrom:(NSDate *)startDate to:(NSDate *)endDate;

+ (NSInteger)newGetDayintervalFrom:(NSDate *)startDate to:(NSDate *)endDate;

+ (BOOL)isValiadAgeTobuyWithKtpNo:(NSString *)ktpNo maxAge:(double)maxAge minAge:(double)minAge;
+ (NSString *)fomatterDetailUploadTime:(NSDate *)date;

+ (NSInteger)caculateTimeWithCycle:(int)cycle Unit:(int)units;

+ (double)getGenderWithKtp:(NSString *)ktp;


+ (NSString *)fomatterSurveyDetailUploadTime:(NSDate *)date;

+ (NSDate *)convertEditStringToDate:(NSString *)aString;

#pragma mark - Helper

+ (NSMutableAttributedString *)covertAttributeUsingFullStr:(NSString *)fullStr attrStr:(NSString *)attrStr;

+ (BOOL)isSameDay:(NSDate *)effectDate endData:(NSDate *)endDate;

+ (BOOL)isVaildInPeroidDate:(NSDate *)selectedStartDate selectedEndDate:(NSDate *)selectedEndDate cycle:(int)cycle unit:(int)units;

+ (double)caculateImageSize:(UIImage *)image;

+ (NSString *)getDocumentPath:(NSString *)filePath;

+ (NSString *)base64Encode:(NSString *)string;

+ (BOOL)compareStartDate:(NSDate *)startDate WithEndDate:(NSDate *)endDate;

+ (BOOL)removeDocumentPath:(NSString *)filePath;

+ (UIImage *)compressImage:(UIImage *)image toMaxFileSize:(NSInteger)maxLength;

+ (NSString *)getAgeStringWithKtp:(NSString *)ktpNo;

+ (NSInteger)getAgeWithDate:(NSDate *)ageDate;

+ (NSString *)handleDouhao:(NSString *)aString;

+ (CGFloat )canculateTextHeight:(NSString *)string;

+ (NSDate *)convertRenewalStringToDate:(NSString *)aString;

+ (NSString *)webParamsEmcpry:(NSString *)aString;

+ (NSInteger)getAgeWithKtp:(NSString *)ktpNo;

+ (UIViewController *)getCurrentVC;

+ (NSMutableAttributedString *)formatingFusePoints:(double)points textColor:(UIColor *)textColor font:(UIFont *)font;

+ (NSMutableAttributedString *)electronicPolicyTextWithPoints:(double)points;

- (NSString *)formatDoubleTo02String:(double)points roundingMode:(NSRoundingMode)roundingMode;

+ (NSString *)timeWithTimestamp:(double )timestamp formatter:(NSString *)formatterString;

+ (NSInteger)getAgeWithBirthDate:(NSDate *)birthDate endDate:(NSDate *)endDate;

//计算文本高度
+ (CGFloat)getLaeblTextHeight:(NSString *)text font:(UIFont *)font width:(NSInteger)width;
@end
