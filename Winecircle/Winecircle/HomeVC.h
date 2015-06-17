//
//  HomeVC.h
//  Winecircle
//
//  Created by yu on 15/6/15.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "MyCustomVC.h"

@interface HomeVC : MyCustomVC<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) UISearchBar       *searchBar;
//@property (strong, nonatomic) UITableView       *tableView;
@property (strong, nonatomic) UIScrollView      *scrollView;

@end
