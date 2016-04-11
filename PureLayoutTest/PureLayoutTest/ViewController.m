//
//  ViewController.m
//  PureLayoutTest
//
//  Created by lhx on 15/11/27.
//  Copyright © 2015年 lhx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (retain, nonatomic) NSArray *titleArr;
@property (retain, nonatomic) NSArray *controllerNameArr;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [UIImage imageNamed:@"超级自由行-首页.png"];
    [self controllerDatas];
    
    
}

- (void) controllerDatas
{
    self.titleArr = @[@"test0",@"test1",@"test2",@"test3",@"test4"];
    self.controllerNameArr = @[@"Test0ViewController",@"Test1ViewController",@"Test2ViewController",@"Test3ViewController",@"Test4ViewController"];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - uitabledelegate  and UITableViewDatasource

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titleArr.count;
}
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"pcell";
    UITableViewCell *pcell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (nil == pcell) {
        pcell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    pcell.textLabel.text = [NSString stringWithFormat:@"%@",self.titleArr[indexPath.row]];
    return pcell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *className = [NSString stringWithFormat:@"%@",self.controllerNameArr[indexPath.row]];
    Class nextVIewController = NSClassFromString(className);
    UIViewController *viewController = [[nextVIewController alloc]init];
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
