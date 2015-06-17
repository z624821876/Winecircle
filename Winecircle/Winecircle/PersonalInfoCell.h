//
//  PersonalInfoCell.h
//  Winecircle
//
//  Created by yu on 15/6/17.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalInfoCell : UITableViewCell

@property (strong, nonatomic) BaseModel *model;

@property (strong, nonatomic) UISwitch  *switchControl;
@property (strong, nonatomic) UIButton  *phoneBtn;
@property (strong, nonatomic) UIButton  *messageBtn;

@end
