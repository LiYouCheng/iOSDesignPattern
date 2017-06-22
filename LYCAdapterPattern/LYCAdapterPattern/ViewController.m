//
//  ViewController.m
//  LYCAdapterPattern
//
//  Created by YouchengLi on 2017/5/25.
//  Copyright © 2017年 深圳市齐家互联网科技股份有限公司. All rights reserved.
//

#import "ViewController.h"

#import "LYCCardView.h"
#import "LYCCardModel.h"
#import "LYCCardAdapter.h"
#import "LYCCardModelAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //适配器模式
    LYCCardView *cardView = [[LYCCardView alloc] initWithFrame:CGRectMake(50, 200, 200, 50)];
    [self.view addSubview:cardView];
    
    LYCCardModel *cardModel = [[LYCCardModel alloc] init];
    cardModel.name = @"设计模式";
    cardModel.color = [UIColor greenColor];
    
    
    LYCCardAdapter *adapter = [[LYCCardModelAdapter alloc] initWithData:cardModel];
    [cardView refreshUIWithProtocol:adapter];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
