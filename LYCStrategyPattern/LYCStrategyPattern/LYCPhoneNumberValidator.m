//
//  LYCPhoneNumberValidator.m
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "LYCPhoneNumberValidator.h"

#import "NSObject+LYCValidator.h"

@implementation LYCPhoneNumberValidator

- (BOOL)validateInput:(UITextField *)textField
{
    if ([textField.text length] <= 0) {
        self.errorMessage = @"请输入手机号";
    }
    else if (![textField.text checkPhone]) {
        self.errorMessage = @"请输入正确的手机号";
    }
    else {
        self.errorMessage = nil;
    }
    return self.errorMessage == nil ? YES : NO;
}

@end
