//
//  FUDigital3CSelectedCell.h
//  FUSEPRO
//
//  Created by 张虎 on 2019/10/21.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FUDigital3CSelectedCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLbael;
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, copy) void (^selectedType)(NSString *text);
@property (nonatomic, copy) void (^textValueChangeHandler)(NSString *text);

@end

NS_ASSUME_NONNULL_END
