//
//  LYCCardAdapter.h
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/5/25.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LYCCardAdaperProtocol.h"

@interface LYCCardAdapter : NSObject<LYCCardAdaperProtocol>

@property (nonatomic, weak) id data;

- (instancetype)initWithData:(id)data;

@end
