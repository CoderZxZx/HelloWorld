//
//  ViewController.m
//  Test
//
//  Created by 张晓 on 15/8/27.
//  Copyright (c) 2015年 zhangxiao. All rights reserved.
//

#import "ViewController.h"
#import "Cell_1TableViewCell.h"
#import "Cell_2TableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"helloTest");
    NSLog(@"secondTest");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        Cell_1TableViewCell * cell_1 = [tableView dequeueReusableCellWithIdentifier:@"cell_1"];
        return cell_1;
    }
    Cell_2TableViewCell * cell_2 = [tableView dequeueReusableCellWithIdentifier:@"cell_2"];
    return cell_2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 200;
    }
    return 100;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
