//
//  PersonalInfoCell.m
//  Winecircle
//
//  Created by yu on 15/6/17.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "PersonalInfoCell.h"


@implementation PersonalInfoCell
{
    UIImageView *_logo;
    UILabel     *_nameLabel;
    UILabel     *_addressLabel;
    UILabel     *_markLabel;
    UILabel     *_isCustomerLabel;
}

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
    _phoneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _phoneBtn.frame = CGRectMake(UI_SCREEN_WIDTH - 60, 10, 60, 80);
    [_phoneBtn setImage:[UIImage imageNamed:@"电话.png"] forState:UIControlStateNormal];
    [self.contentView addSubview:_phoneBtn];
    
    _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _messageBtn.frame = CGRectMake(_phoneBtn.left - 60, 10, 60, 80);
    UIImage *img = [UIImage imageNamed:@"发消息.png"];
    [_messageBtn setImage:img forState:UIControlStateNormal];
    [_messageBtn setTitle:@"发消息" forState:UIControlStateNormal];
    _messageBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [_messageBtn setTitleColor:ColorWithRGBA(62, 67, 85, 1) forState:UIControlStateNormal];
    _messageBtn.imageEdgeInsets = UIEdgeInsetsMake(- 25, 0, 0, - 17 * 3);
    _messageBtn.titleEdgeInsets = UIEdgeInsetsMake(25, - img.size.width, 0, 0);

    [self.contentView addSubview:_messageBtn];
    
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(_phoneBtn.left, 15, 0.3, 70)];
    lineView.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.8];
    [self.contentView addSubview:lineView];
    
    UIView *lineView2 = [[UIView alloc] initWithFrame:CGRectMake(_messageBtn.left, 15, 0.3, 70)];
    lineView2.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.8];
    [self.contentView addSubview:lineView2];

    _logo = [[UIImageView alloc] initWithFrame:CGRectMake(15, 20, 60, 60)];
    _logo.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_logo];
    
        //nameLabel  的最大长度
//    lineView2.left - 65 - _logo.right - 10
    NSString *name = @"昵称";
    
    CGFloat width = [name boundingRectWithSize:CGSizeMake(MAXFLOAT, 20) options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size.width;
    CGFloat labelWidth;
    if (width > (lineView2.left - 65 - _logo.right - 10)) {
        labelWidth = (lineView2.left - 65 - _logo.right - 10);
    }else {
        labelWidth = width;
    }
//    _addressLabel.left - _logo.right - 10
    _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(_logo.right + 5, _logo.top, width, 20)];
    _nameLabel.text = @"昵称";
    _nameLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_nameLabel];
    
    _addressLabel = [[UILabel alloc] initWithFrame:CGRectMake(_nameLabel.right + 5, _logo.top, 60, 20)];
    _addressLabel.font = [UIFont systemFontOfSize:13];
    _addressLabel.textAlignment = NSTextAlignmentRight;
    _addressLabel.text = @"(浙江杭州)";
    [self.contentView addSubview:_addressLabel];

    _markLabel = [[UILabel alloc] initWithFrame:CGRectMake(_nameLabel.left, _nameLabel.bottom, lineView2.left - _logo.right - 10, 20)];
    _markLabel.text = @"标签:经销商";
    _markLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_markLabel];
    
    _isCustomerLabel = [[UILabel alloc] initWithFrame:CGRectMake(_nameLabel.left, _markLabel.bottom, 60, 20)];
    _isCustomerLabel.text = @"设为客户";
    _isCustomerLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:_isCustomerLabel];
    
    _switchControl = [[UISwitch alloc] initWithFrame:CGRectMake(_isCustomerLabel.right + 5, _isCustomerLabel.top, 30, 30)];
    [self.contentView addSubview:_switchControl];
}

- (void)setModel:(BaseModel *)model
{
    _model = model;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
