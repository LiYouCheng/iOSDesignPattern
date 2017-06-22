//
//  LYCObjectCardAdapter.m
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/6/22.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import "LYCObjectCardAdapter.h"

#import "LYCCardModel.h"
#import "LYCNewCardModel.h"

@implementation LYCObjectCardAdapter

- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {
    if ([self.data isMemberOfClass:[LYCCardModel class]]) {
        LYCCardModel *model = (LYCCardModel *)self.data;
        return model.name;
    }
    else {
        LYCNewCardModel *model = (LYCNewCardModel *)self.data;
        return model.name;
    }
}

- (UIColor *)lineColor {
    if ([self.data isMemberOfClass:[LYCCardModel class]]) {
        LYCCardModel *model = (LYCCardModel *)self.data;
        return model.color;
    }
    else {
        LYCNewCardModel *model = (LYCNewCardModel *)self.data;
        return [UIColor greenColor];
    }
}

@end
