//
//  HomePageVC.h
//  Winecircle
//
//  Created by yu on 15/6/17.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "MyCustomVC.h"

@interface HomePageVC : MyCustomVC<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@end
