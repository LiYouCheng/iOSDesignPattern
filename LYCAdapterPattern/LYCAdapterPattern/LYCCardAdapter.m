//
//  LYCCardAdapter.m
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/5/25.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import "LYCCardAdapter.h"

#import <UIKit/UIKit.h>

@implementation LYCCardAdapter

- (instancetype)initWithData:(id)data {
    self = [super init];
    
    if (self) {
        self.data = data;
    }

    return self;
}

//名字
- (NSString *)name {
    return nil;
}

- (UIColor *)lineColor {
    return nil;
}

@end
