//
//  Test2ViewController.m
//  PureLayoutTest
//
//  Created by lhx on 15/11/27.
//  Copyright © 2015年 lhx. All rights reserved.
//

#import "Test2ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateViewConstraints
{
    if (!self.didSetupConstraints) {
        [self.redView autoSetDimension:ALDimensionWidth toSize:20.0];
        [self.redView autoSetDimension:ALDimensionHeight toSize:30];
        [self.redView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.view];
        [self.redView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.view withOffset:80.0];
        
        NSArray *views = @[self.redView,self.greenView,self.blueView,self.yellowVIew,self.purpleView];
        
        [views autoMatchViewsDimension:ALDimensionWidth];
        [views autoAlignViewsToEdge:ALEdgeTop];
        [views autoMatchViewsDimension:ALDimensionHeight];
        [views autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:10.0 insetSpacing:YES matchedSizes:YES];
//        [views autoDistributeViewsAlongAxis:ALAxisLastBaseline alignedTo:(ALAttribute)ALEdgeBottom withFixedSpacing:30
//         ];
//        [views autoDistributeViewsAlongAxis:ALAxisVertical alignedTo:(ALAttribute)ALEdgeLeft
//                           withFixedSpacing:40 ];
        
        
        
        self.didSetupConstraints = YES;
    }
    
    [super updateViewConstraints];
    
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
