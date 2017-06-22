//
//  LYCCardModelAdapter.m
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/5/25.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import "LYCCardModelAdapter.h"

#import "LYCCardModel.h"

@implementation LYCCardModelAdapter

- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {
    LYCCardModel *model = (LYCCardModel *)self.data;
    return model.name;
}

- (UIColor *)lineColor {
    LYCCardModel *model = (LYCCardModel *)self.data;
    return model.color;
}

@end
