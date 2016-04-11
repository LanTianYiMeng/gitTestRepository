//
//  TestViewController.m
//  PureLayoutTest
//
//  Created by lhx on 15/11/27.
//  Copyright © 2015年 lhx. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()
@end

@implementation TestViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}

- (void)loadView
{
    self.view = [UIView new];
    self.view.backgroundColor = [UIColor colorWithWhite:0.1 alpha:1.0];
    
    [self.view addSubview:self.redView];
    [self.view addSubview:self.greenView];
    [self.view addSubview:self.blueView];
    [self.view addSubview:self.yellowVIew];
    [self.view addSubview:self.purpleView];
    
    [self.view setNeedsUpdateConstraints]; // bootstrap Auto Layout
}
- (void)updateViewConstraints
{
    if (!self.didSetupConstraints) {
        self.didSetupConstraints = YES;
    }
    
    [super updateViewConstraints];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIView *) redView
{
    if (!_redView) {
        _redView = [UIView newAutoLayoutView];
        _redView.backgroundColor = [UIColor redColor];
    }
    return _redView;
}

- (UIView *)greenView
{
    if (!_greenView) {
        _greenView = [UIView newAutoLayoutView];
        _greenView.backgroundColor = [UIColor greenColor];
    }
    return  _greenView;
}

- (UIView *) blueView
{
    if (!_blueView) {
        _blueView = [UIView newAutoLayoutView];
        _blueView.backgroundColor = [UIColor blueColor];
    }
    return _blueView;
}

- (UIView *)yellowVIew
{
    if (!_yellowVIew) {
        _yellowVIew = [UIView newAutoLayoutView];
        _yellowVIew.backgroundColor = [UIColor yellowColor];
    }
    return _yellowVIew;
}

- ( UIView *)pingView
{
    if (!_purpleView) {
        _purpleView = [UIView newAutoLayoutView];
        _purpleView.backgroundColor = [UIColor purpleColor];
    }
    return _purpleView;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
