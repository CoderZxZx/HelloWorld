//
//  TestTableViewCell.m
//  test1111
//
//  Created by 张晓 on 15/8/28.
//  Copyright (c) 2015年 zhangxiao. All rights reserved.
//

#import "TestTableViewCell.h"

@interface TestTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imangeView;



@end

@implementation TestTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
