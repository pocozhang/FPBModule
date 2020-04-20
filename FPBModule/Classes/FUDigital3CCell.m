//
//  FUMarineCargoCell.m
//  FUSEPRO
//
//  Created by 张虎 on 2019/8/8.
//  Copyright © 2019 FUSENANO. All rights reserved.
//

#import "FUDigital3CCell.h"

@implementation FUDigital3CCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    tap.numberOfTouchesRequired = 1;
    
    self.traangleView.userInteractionEnabled = true;
    [self.traangleView addGestureRecognizer:tap];
    
    self.dateView.userInteractionEnabled = true;
    [self.dateView addGestureRecognizer:tap];
    
    self.textField.delegate = self;
    [self.textField addTarget:self action:@selector(textfieldChanged:) forControlEvents:UIControlEventEditingChanged];
}
- (IBAction)beconmeFirstResponder:(id)sender {
    if (self.beconmeInput) {
        self.beconmeInput();
    }else{
        [self.textField becomeFirstResponder];
    }
}

- (void)tapAction
{
    [self.textField becomeFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (self.beconmeInput) {
        self.beconmeInput();
        return false;
    }
    return true;
}

- (void)textfieldChanged:(UITextField *)textField
{
    if (self.maxNum > 0) {
        _textField.text = [FUTools threeSeparteWithDoubleNotUsingUnit:[[FUTools getPureStringBydelete:_textField.text]doubleValue]];
    }
    if (self.textValueChangeHandler) {
        self.textValueChangeHandler(_textField.text);
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (self.maxNum>0 ) {
        NSString *str = [FUTools getPureStringBydelete:_textField.text];
        NSInteger length = [NSString stringWithFormat:@"%ld",self.maxNum].length;
        if ((string.length && [str integerValue] >= self.maxNum) || (range.location>length && string.length)) {
            _textField.text = [FUTools threeSeparteWithDoubleNotUsingUnit:[[FUTools getPureStringBydelete:[NSString stringWithFormat:@"%ld", self.maxNum]]doubleValue]];
            if (self.textValueChangeHandler) {
                self.textValueChangeHandler(_textField.text);
            }
            return false;
        }
    }
    if (self.limitLength>0 &&string.length && self.textField.text.length>self.limitLength-1) {
        return false;
    }
    
    return true;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
