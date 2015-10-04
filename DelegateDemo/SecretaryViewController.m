//
//  SecretaryViewController.m
//  DelegateDemo
//
//  Created by qingjie on 10/2/15.
//  Copyright © 2015 qingjie. All rights reserved.
//

#import "SecretaryViewController.h"

@interface SecretaryViewController()

@end

@implementation SecretaryViewController

-(void)viewDidLoad {

    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100.0, 100.0, 200.0, 40.0);
    [button setTitle:@"赵老板，午餐来啦~~" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


-(void) buttonClicked:(id)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(buyFood:)]) {
        [self.delegate buyFood:self];
    }
}


@end

