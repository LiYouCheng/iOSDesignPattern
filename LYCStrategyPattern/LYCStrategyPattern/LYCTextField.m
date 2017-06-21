//
//  LYCTextField.m
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "LYCTextField.h"

#import "LYCInputValidator.h"

@implementation LYCTextField

- (BOOL)validate
{
    return [self.inputValidator validateInput:self];
}

@end
