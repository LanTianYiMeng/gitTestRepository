//
//  Test0ViewController.m
//  PureLayoutTest
//
//  Created by lhx on 15/11/27.
//  Copyright © 2015年 lhx. All rights reserved.
//

#import "Test0ViewController.h"
#import "ColorViewsModel.h"

@interface Test0ViewController ()

@end

@implementation Test0ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}

//- (void)loadView
//{
//    [super loadView];
//}
- (void)updateViewConstraints
{
    if (!self.didSetupConstraints) {
//        [self.blueView autoCenterInSuperview];//处在父视图中心
        [self.blueView autoCenterInSuperviewMargins];
        [self.blueView autoSetDimensionsToSize:CGSizeMake(50.0, 50.0)]; //大小
        
        // Red view is positioned at the bottom right corner of the blue view, with the same width, and a height of 40 pt
        [self.redView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.blueView];
        [self.redView autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.blueView];
        [self.redView autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.blueView];
        [self.redView autoSetDimension:ALDimensionHeight toSize:40.0];
        
        // Yellow view is positioned 10 pt below the red view, extending across the screen with 20 pt insets from the edges,
        // and with a fixed height of 25 pt
        [self.yellowVIew autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.redView withOffset:10.0];
        [self.yellowVIew autoSetDimension:ALDimensionHeight toSize:25.0];
        [self.yellowVIew autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:20.0];
        [self.yellowVIew autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:20.0];
        
        // Green view is positioned 10 pt below the yellow view, aligned to the vertical axis of its superview,
        // with its height twice the height of the yellow view and its width fixed to 150 pt
        [self.greenView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.yellowVIew withOffset:10.0];
        [self.greenView autoAlignAxisToSuperviewAxis:ALAxisVertical];
        [self.greenView autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellowVIew withMultiplier:2.0];
        [self.greenView autoSetDimension:ALDimensionWidth toSize:150.0];

        
        self.didSetupConstraints = YES;
    }
    
    [super updateViewConstraints];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
