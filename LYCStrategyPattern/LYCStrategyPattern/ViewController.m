//
//  ViewController.m
//  LYCStrategyPattern
//
//  Created by YouchengLi on 2017/6/21.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "ViewController.h"

#import "LYCTextField.h"

#import "LYCPassWordValidator.h"
#import "LYCPhoneNumberValidator.h"

@interface ViewController ()
<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initialzation];
}

#pragma mark - customMethond

//初始化
- (void)initialzation
{
    LYCTextField *phoneNumberTextField  = [LYCTextField new];
    phoneNumberTextField.frame          = CGRectMake(10, 100, 300, 44);
    phoneNumberTextField.placeholder    = @"请输入手机号";
    phoneNumberTextField.delegate       = self;
    phoneNumberTextField.inputValidator = [LYCPhoneNumberValidator new];
    [self.view addSubview:phoneNumberTextField];
    
    LYCTextField *passwordTextField  = [LYCTextField new];
    passwordTextField.frame          = CGRectMake(10, 100 + 50, 300, 44);
    passwordTextField.placeholder    = @"请输入密码";
    passwordTextField.delegate       = self;
    passwordTextField.inputValidator = [LYCPassWordValidator new];
    [self.view addSubview:passwordTextField];
    
    UIButton *button        = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.backgroundColor  = [UIColor greenColor];
    button.frame            = CGRectMake(10, 100 + 50 + 50, 300, 44);
    [button addTarget:self
               action:@selector(clickedSubmit)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    LYCTextField *lycTextField = (LYCTextField *)textField;
    if (![lycTextField validate]) {
        NSLog(@"%@",lycTextField.inputValidator.errorMessage);
        return;
    }
}

- (void)clickedSubmit
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
