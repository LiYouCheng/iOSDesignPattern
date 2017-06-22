//
//  LYCCardView.h
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/5/25.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LYCCardAdaperProtocol.h"

@interface LYCCardView : UIView

- (void)refreshUIWithProtocol:(id<LYCCardAdaperProtocol>)data;

@end
