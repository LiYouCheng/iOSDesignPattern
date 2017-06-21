//
//  LYCPassWordValidator.h
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "LYCInputValidator.h"

@interface LYCPassWordValidator : LYCInputValidator

/**
 重载了父类验证方法
 */
- (BOOL)validateInput:(UITextField *)textField;

@end
