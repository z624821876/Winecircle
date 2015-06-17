//
//  UserInfoVC.m
//  Winecircle
//
//  Created by yu on 15/6/16.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "UserInfoVC.h"
#import "BaseCell.h"

@interface UserInfoVC ()

@end

@implementation UserInfoVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationItem.title = @"个人信息";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT) style:UITableViewStyleGrouped];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0.1)];
//    _tableView.tableFooterView = [UIView new];
    [self.view addSubview:_tableView];
}

#pragma mark - tableView delegate/datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 2:
        case 0:
        {
            return 1;
        }
            break;
        case 4:
        case 1:
        {
            return 2;
        }
        case 3:
        {
            return 4;
        }
        default:
            break;
    }
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 80;
    }else {
        return 44;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BaseCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[BaseCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.type = 6;
    switch (indexPath.section) {
        case 0:
        {
            cell.type = 5;
        }
            break;
        case 1:
        {
            if (indexPath.row == 0) {
                cell.title = @"昵称";
                cell.value = @"这是昵称";
            }else {
                cell.title = @"性别";
                cell.value = @"这是性别";
            }
        }
            break;
        case 2:
        {
            cell.title = @"所在地";
            cell.value = @"地址：浙江省杭州市";
        }
            break;
        case 3:
        {
            switch (indexPath.row) {
                case 0:
                {
                    cell.title = @"个人签名";
                    cell.value = @"这是个人签名";
                }
                    break;
                case 1:
                {
                    cell.title = @"标签";
                    cell.value = @"标签什么鬼";
                }
                    break;
                case 2:
                {
                    cell.title = @"所在公司";
                    cell.value = @"杭州圣代";
                }
                    break;
                case 3:
                {
                    cell.title = @"手机号码";
                    cell.value = @"15639296329";
                }
                    break;
                default:
                    break;
            }
         
        }
            break;
        case 4:
        {
            if (indexPath.row == 0) {
                cell.title = @"登录账号";
                cell.value = @"账号1213123123";
            }else {
                cell.title = @"登录密码";
                cell.value = @"";
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
        }
        default:
            break;
    }
    
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
