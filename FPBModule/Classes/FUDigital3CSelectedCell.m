//
//  FUDigital3CSelectedCell.m
//  FUSEPRO
//
//  Created by 张虎 on 2019/10/21.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

#import "FUDigital3CSelectedCell.h"

@implementation FUDigital3CSelectedCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self.textField addTarget:self action:@selector(textfieldChanged:) forControlEvents:UIControlEventEditingChanged];
}

- (IBAction)leftAction:(id)sender {
    self.leftBtn.selected = true;
    self.rightBtn.selected = false;
    NSString *text = self.leftBtn.titleLabel.text;
    if (self.selectedType) {
        self.selectedType(text);
    }
}

- (IBAction)rightAction:(id)sender {
    self.leftBtn.selected = false;
    self.rightBtn.selected = true;
    NSString *text = self.rightBtn.titleLabel.text;
    if (self.selectedType) {
        self.selectedType(text);
    }
}

- (void)textfieldChanged:(UITextField *)textField
{
    if (self.textValueChangeHandler) {
        self.textValueChangeHandler(_textField.text);
    }
}

@end
