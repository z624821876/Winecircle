//
//  BaseCell.m
//  Winecircle
//
//  Created by yu on 15/6/16.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "BaseCell.h"

@implementation BaseCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initGUI];
    }
    return self;
}

- (void)initGUI
{
    self.logo = [[UIImageView alloc] init];
    [self.contentView addSubview:self.logo];
    self.label1 = [[UILabel alloc] init];
    [self.contentView addSubview:self.label1];
    self.label2 = [[UILabel alloc] init];
    [self.contentView addSubview:self.label2];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    for (UIView *view in self.contentView.subviews) {
        view.hidden = YES;
    }
#warning 测试数据
    switch (_type) {
            //个人中心 显示个人信息
        case 1:
        {
            self.logo.hidden = NO;
            self.logo.frame = CGRectMake(20, 10, 80, 80);
            self.logo.layer.cornerRadius = 40;
            self.logo.layer.masksToBounds = YES;
            self.logo.backgroundColor = [UIColor redColor];
            
            self.label1.hidden = NO;
            self.label1.frame = CGRectMake(self.logo.right + 10, self.logo.top + 15, UI_SCREEN_WIDTH - self.logo.right - 20 - 25, 20);
            self.label1.font = [UIFont systemFontOfSize:20];
            self.label1.textColor = [UIColor blackColor];
            self.label1.text = @"这尼玛布局，真操蛋!!!!!!!这么长了 都不到一行   ";
            
            self.label2.hidden = NO;
            self.label2.frame = CGRectMake(self.label1.left, self.label1.bottom + 10, self.label1.width, 20);
            self.label2.textAlignment = NSTextAlignmentLeft;
            self.label2.textColor = [UIColor grayColor];
            self.label2.text = @"这尼玛是账号";
        }
            break;
            //个人中心  列表
        case 2:
        {
            self.label1.hidden = NO;
            self.label1.frame = CGRectMake(25, 0, UI_SCREEN_WIDTH - 25 - 20 - 25, self.height);
            self.label1.textColor = [UIColor blackColor];
            self.label1.font = [UIFont systemFontOfSize:20];
            self.label1.text = self.title;
        }
            break;
        case 3:
        {
            self.label1.hidden = NO;
            self.label1.frame = CGRectMake(25, 0, UI_SCREEN_WIDTH - 25 - 20 - 25, self.height);
            self.label1.textColor = BaseColor;
            self.label1.font = [UIFont systemFontOfSize:20];
            self.label1.text = self.title;
        }
            break;
            //退出登录
        case 4:
        {
            self.label2.hidden = NO;
            self.label2.frame = CGRectMake(0, 0, UI_SCREEN_WIDTH, self.height);
            self.label2.textAlignment = NSTextAlignmentCenter;
            self.label2.font = [UIFont systemFontOfSize:20];
            self.label2.text = @"退出登录";
        }
            break;
        case 5:
        {
            self.label1.hidden = NO;
            self.label1.frame = CGRectMake(20, 0, 150, 80);
            self.label1.font = [UIFont systemFontOfSize:20];
            self.label1.text = @"头像";
            
            self.logo.hidden = NO;
            self.logo.frame = CGRectMake(UI_SCREEN_WIDTH - 60 - 35, 10, 60, 60);
            self.logo.layer.cornerRadius = 30;
            self.logo.layer.masksToBounds = YES;
            self.logo.backgroundColor = [UIColor redColor];
        }
            break;
        case 6:
        {
            self.label1.hidden = NO;
            self.label1.frame = CGRectMake(20, 0, 80, self.height);
            self.label1.font = [UIFont systemFontOfSize:20];
            self.label1.text = _title;

            self.label2.hidden = NO;
            self.label2.frame = CGRectMake(self.label1.right + 10, 0, UI_SCREEN_WIDTH - 35 - self.label1.right - 10, self.height);
            self.label2.textColor = [UIColor grayColor];
            self.label2.textAlignment = NSTextAlignmentRight;
            self.label2.font = [UIFont systemFontOfSize:18];
            self.label2.text = _value;
        }
            break;

        default:
            break;
    }
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
