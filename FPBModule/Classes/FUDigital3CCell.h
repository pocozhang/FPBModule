//
//  FUMarineCargoCell.h
//  FUSEPRO
//
//  Created by 张虎 on 2019/8/8.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FULongPressTextField.h"

NS_ASSUME_NONNULL_BEGIN

@interface FUDigital3CCell : UITableViewCell <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet FULongPressTextField *textField;
@property (weak, nonatomic) IBOutlet UIImageView *traangleView;
@property (weak, nonatomic) IBOutlet UILabel *IDRLabel;
@property (weak, nonatomic) IBOutlet UIImageView *dateView;
@property (weak, nonatomic) IBOutlet UIView *lineView;

@property (nonatomic, assign) BOOL isDateCell;

@property (nonatomic, assign) NSInteger limitLength;
@property (nonatomic, assign) NSInteger maxNum;

@property (nonatomic, copy) void (^beconmeInput)(void);
@property (nonatomic, copy) void (^textValueChangeHandler)(NSString *text);

@end

NS_ASSUME_NONNULL_END
