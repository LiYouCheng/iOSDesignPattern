//
//  LYCCardView.m
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/5/25.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import "LYCCardView.h"

@interface LYCCardView ()

@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation LYCCardView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.nameLabel];
    }
    return self;
}

- (UILabel *)nameLabel {
    if (!_nameLabel) {
        _nameLabel                  = [[UILabel alloc] init];
        _nameLabel.backgroundColor  = [UIColor clearColor];
        _nameLabel.frame            = CGRectMake(0, 0, 200, 40);
        _nameLabel.font             = [UIFont systemFontOfSize:14];
        _nameLabel.textColor        = [UIColor blackColor];
        _nameLabel.textAlignment    = NSTextAlignmentLeft;
        _nameLabel.numberOfLines    = 0;
    }
    return _nameLabel;
}

- (void)refreshUIWithProtocol:(id<LYCCardAdaperProtocol>)data
{
    _nameLabel.text = [data name];
    _nameLabel.backgroundColor = [data lineColor];
}

@end
