//
//  List2TableViewCell.m
//  Test3
//
//  Created by 张晓 on 15/8/30.
//  Copyright (c) 2015年 zhangxiao. All rights reserved.
//

#import "List2TableViewCell.h"
#import "SDCycleScrollView.h"
@implementation List2TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self layoutSubviews];
    }
    return self;
}

- (void)layoutSubviews {
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 200, 150)];
    view.backgroundColor = [UIColor blackColor];
    [self.contentView addSubview:view];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
