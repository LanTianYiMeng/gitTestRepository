//
//  ColorViewsModel.m
//  PureLayoutTest
//
//  Created by lhx on 15/11/27.
//  Copyright © 2015年 lhx. All rights reserved.
//

#import "ColorViewsModel.h"
#import"PureLayout.h"
@implementation ColorViewsModel

//@property (strong, nonatomic) UIView *redView;
//@property (strong, nonatomic) UIView *greenView;
//@property (strong, nonatomic) UIView *blueView;
//@property (strong, nonatomic) UIView *yellowVIew;
//@property (strong, nonatomic) UIView *pingView;

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

@end
