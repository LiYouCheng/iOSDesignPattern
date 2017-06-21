//
//  LYCInputValidator.h
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface LYCInputValidator : NSObject

/**
 验证输入的是否有效

 @param textField 需要验证的
 @return 验证通过返回YES，验证不通过返回NO
 */
- (BOOL)validateInput:(UITextField *)textField;

/**
 错误信息,当validateInput方法验证不通过，读取errorMessage信息
 */
@property (nonatomic, copy) NSString *errorMessage;

@end
