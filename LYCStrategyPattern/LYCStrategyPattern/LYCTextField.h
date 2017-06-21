//
//  LYCTextField.h
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LYCInputValidator;
@interface LYCTextField : UITextField

/**
 抽象的策略
 */
@property (nonatomic, strong) LYCInputValidator *inputValidator;


/**
 验证输入合法性

 @return 不合法，读取inputValidator中errorMessage的信息
 */
- (BOOL)validate;

@end
