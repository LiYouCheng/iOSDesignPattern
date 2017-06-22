//
//  LYCCardAdaperProtocol.h
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/5/25.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@protocol LYCCardAdaperProtocol <NSObject>

//名字
- (NSString *)name;

//颜色
- (UIColor *)lineColor;

@end
