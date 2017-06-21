//
//  LYCPassWordValidator.m
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "LYCPassWordValidator.h"

@implementation LYCPassWordValidator

- (BOOL)validateInput:(UITextField *)textField
{
    if ([textField.text length] <= 0) {
        self.errorMessage = @"请输入密码";
    }
    else {
        self.errorMessage = nil;
    }
    return self.errorMessage == nil ? YES : NO;
}

@end
