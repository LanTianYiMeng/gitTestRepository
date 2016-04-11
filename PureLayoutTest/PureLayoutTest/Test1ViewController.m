//
//  Test1ViewController.m
//  PureLayoutTest
//
//  Created by lhx on 15/11/27.
//  Copyright © 2015年 lhx. All rights reserved.
//

#import "Test1ViewController.h"

@interface Test1ViewController ()

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadView
{
    self.view = [UIView new];
    self.view.backgroundColor = [UIColor colorWithWhite:0.1 alpha:1.0];
    
//    [self.view addSubview:self.purpleView];
    [self.view addSubview:self.redView];
    [self.view addSubview:self.greenView];
    [self.view addSubview:self.blueView];
    [self.view addSubview:self.yellowVIew];
    [self.view addSubview:self.purpleView];

    
    [self.view setNeedsUpdateConstraints]; // bootstrap Auto Layout
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateViewConstraints
{
    if (!self.didSetupConstraints) {
        
        //当前view和父视图比较，距离父视图的左、右、上、下的距离
        [self.redView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
//        [self.redView autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:10.0];
        [self.redView autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:20.0];
        [self.redView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:100.0];
        [self.redView autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:40.0];
        
        //和指定的view相比，距离左、右、上、下的距离
        [self.greenView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.redView];
        [self.greenView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.redView withOffset:30.0];
        //设置view高度或宽度
        [@[self.greenView] autoSetViewsDimension:ALDimensionHeight toSize:200];
        [@[self.greenView] autoSetViewsDimension:ALDimensionWidth toSize:150];
        
        //当前view和父视图比较，当前视图处在父视图中心位置，再确定大小就可以确定一个view的位置
        [self.blueView autoCenterInSuperview];
        [self.blueView autoSetDimensionsToSize:CGSizeMake(100, 100)];
        
        //当前view和指定的view边缘相同（比较）
        
        //指定view的最下边边缘线是当前view的水平线
//        [self.yellowVIew autoConstrainAttribute:(ALAttribute)ALAxisHorizontal toAttribute:(ALAttribute)ALEdgeBottom ofView:self.blueView];
        
        /*
         ALAxisVertical  //center of x 垂直线
         ALAxisHorizontal   center of y 水平线
         
         ALAxisBaseline  //相同的下边缘线
         ALAxisLastBaseline  //相同的下边缘线
         
         ALAxisFirstBaseline  //相同的上边缘线
         */
        
        //center of x 垂直线
        [self.yellowVIew autoAlignAxis:ALAxisVertical toSameAxisOfView:self.blueView];
        //相同的下边缘线偏移10.0
//        [self.yellowVIew autoAlignAxis:ALAxisBaseline toSameAxisOfView:self.blueView withOffset:10.0];
        //(center of y)*1.5
        [self.yellowVIew autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.blueView withMultiplier:1.5];  //乘数
        //当前view的高或宽和指定view的高或宽相同
        [self.yellowVIew autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.blueView];
        //＊2.0
//        [self.yellowVIew autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.blueView withMultiplier:2.0];
        //+50.0
        [self.yellowVIew autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.blueView withOffset:50.0];
        
        
        
        
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
