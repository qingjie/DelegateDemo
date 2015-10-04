//
//  SecretaryViewController.h
//  DelegateDemo
//
//  Created by qingjie on 10/2/15.
//  Copyright © 2015 qingjie. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecretaryViewController;
@protocol SecretaryViewControllerDelegate <NSObject>

-(void) buyFood:(SecretaryViewController *)viewController;

@end

@interface SecretaryViewController : UIViewController
@property (nonatomic,weak) id<SecretaryViewControllerDelegate> delegate;

@end

