//
//  UserInfoVC.h
//  Winecircle
//
//  Created by yu on 15/6/16.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "MyCustomVC.h"

@interface UserInfoVC : MyCustomVC<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@end
