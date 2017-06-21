//
//  NSObject+LYCValidator.m
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "NSObject+LYCValidator.h"

@implementation NSObject (LYCValidator)

- (BOOL)checkPhone
{
    NSString *regex = @"^^((13[0-9])|(147)|(15[^4,\\D])|(18[0-9])|(17[0-9]))\\d{8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL isMatch = [pred evaluateWithObject:pred];
    if (!isMatch) {
        return NO;
    }
    return YES;
}

@end
