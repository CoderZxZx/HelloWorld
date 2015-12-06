//
//  ViewController.m
//  Test_2
//
//  Created by 张晓 on 15/8/30.
//  Copyright (c) 2015年 zhangxiao. All rights reserved.
//

#import "ViewController.h"
#import "SDCycleScrollView.h"
@interface ViewController () <SDCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:0.99];
    
    // 情景一：采用本地图片实现
//    NSArray *images = @[[UIImage imageNamed:@"0.jpg"],
//                        [UIImage imageNamed:@"2.jpg"],
//                        [UIImage imageNamed:@"3.jpg"],
//                        [UIImage imageNamed:@"4.jpg"]
//                        ];
    
    // 情景二：采用网络图片实现
    NSArray *imagesURL = @[
                           [NSURL URLWithString:@"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg"],
                           [NSURL URLWithString:@"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg"],
                           [NSURL URLWithString:@"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"],
                           [NSURL URLWithString:@"https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=0c231a5bb34543a9f54ea98c782abeb0/a71ea8d3fd1f41342830c1d1211f95cad1c85e1e.jpg"]
                           ];
    
    
    // 情景三：图片配文字
    NSArray *titles = @[@"感谢您的支持，如果下载的",
                        @"如果代码在使用过程中出现问题",
                        @"您可以发邮件到gsdios@126.com",
                        @"感谢您的支持"
                        ];
    
    
    
    
    
    CGFloat w = self.view.bounds.size.width;
    
    // 创建不带标题的图片轮播器
//    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 60, w, 180) imagesGroup:images];
//    cycleScrollView.delegate = self;
//    [self.view addSubview:cycleScrollView];
//    cycleScrollView.autoScrollTimeInterval = 2.5;
    
    
    
    //    // 创建带标题的图片轮播器
    SDCycleScrollView *cycleScrollView2 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 280, w, 180) imageURLsGroup:imagesURL];
    cycleScrollView2.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    cycleScrollView2.delegate = self;
    cycleScrollView2.titlesGroup = titles;
    [self.view addSubview:cycleScrollView2];
    cycleScrollView2.autoScrollTimeInterval = 2.5;
    
    
    
    
    
    
}

//必须实现的效果,点击事件
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"---点击了第%ld张图片", index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
