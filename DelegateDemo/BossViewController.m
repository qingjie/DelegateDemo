//
//  BossViewController.m
//  DelegateDemo
//
//  Created by qingjie on 10/2/15.
//  Copyright © 2015 qingjie. All rights reserved.
//

#import "BossViewController.h"
#import "SecretaryViewController.h"

@interface BossViewController () <SecretaryViewControllerDelegate>

@end

@implementation BossViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(80.0, 210.0, 300.0, 40.0);
    [button setTitle:@"周秘书，去给我买午餐。。。" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}


-(void) buttonClicked:(id)sender{
 
    SecretaryViewController *secretaryViewController = [SecretaryViewController new];
    secretaryViewController.delegate = self;
    [self presentViewController:secretaryViewController animated:YES completion:nil];
}


-(void)buyFood:(SecretaryViewController *)viewController {
    [self dismissViewControllerAnimated: YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
