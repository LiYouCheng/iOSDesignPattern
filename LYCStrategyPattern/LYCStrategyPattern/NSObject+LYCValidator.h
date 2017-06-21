//
//  NSObject+LYCValidator.h
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LYCValidator)

/**
 验证是否是否是手机号

 @return 正确返回YES，不正确返回NO
 */
- (BOOL)checkPhone;

@end
