//
//  TestViewController.h
//  PureLayoutTest
//
//  Created by lhx on 15/11/27.
//  Copyright © 2015年 lhx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PureLayout.h"

@interface TestViewController : UIViewController
@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *greenView;
@property (strong, nonatomic) UIView *blueView;
@property (strong, nonatomic) UIView *yellowVIew;
@property (strong, nonatomic) UIView *purpleView;

@property (nonatomic, assign) BOOL didSetupConstraints;


@end
