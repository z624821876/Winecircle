//
//  BaseCell.h
//  Winecircle
//
//  Created by yu on 15/6/16.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseCell : UITableViewCell

@property (strong, nonatomic) UIImageView   *logo;
@property (strong, nonatomic) UILabel       *label1;
@property (strong, nonatomic) UILabel       *label2;

@property (assign, nonatomic) NSInteger     type;
@property (strong, nonatomic) BaseModel     *model;
@property (strong, nonatomic) NSString      *title;
@property (strong, nonatomic) NSString      *value;
@end
