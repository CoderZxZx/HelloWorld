//
//  ViewController.m
//  Test3
//
//  Created by 张晓 on 15/8/30.
//  Copyright (c) 2015年 zhangxiao. All rights reserved.
//

#import "ViewController.h"
#import "ListTableViewCell.h"
#import "List2TableViewCell.h"
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView * tableView = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    // 指定自己为代理
    tableView.dataSource = self;
    tableView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row / 2 == 1) {
        List2TableViewCell *cell = [[List2TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell_1"];
        return cell;
    }
    ListTableViewCell *cell = [[ListTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell_2"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
