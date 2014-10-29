//
//  ViewController.m
//  ReFreshTest
//
//  Created by MS on 14/10/20.
//  Copyright (c) 2014年 ML. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * _tableView;
}
@end

@implementation ViewController
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[Cell class] forCellReuseIdentifier:@"cell"];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 12) {
        return 150;
    }
    return 80;
}
- (UITableViewCell  *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    if (!cell) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
//        NSLog(@"1111");
//    }
    Cell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"cell";
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
