//
//  LYCNewCardModelAdapter.m
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/6/22.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import "LYCNewCardModelAdapter.h"

#import "LYCNewCardModel.h"

@implementation LYCNewCardModelAdapter

- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {
    LYCNewCardModel *model = (LYCNewCardModel *)self.data;
    return model.name;
}

- (UIColor *)lineColor {
    LYCNewCardModel *model = (LYCNewCardModel *)self.data;
    return [UIColor greenColor];
}

@end
