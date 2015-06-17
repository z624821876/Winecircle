//
//  HomePageVC.m
//  Winecircle
//
//  Created by yu on 15/6/17.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "HomePageVC.h"
#import "BaseCell.h"
#import "PersonalInfoCell.h"

@interface HomePageVC ()

@end

@implementation HomePageVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationItem.title = @"我的主页";
}

- (void)viewDidLoad {
    [super viewDidLoad];

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT - 64) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0.1)];
    [self.view addSubview:_tableView];
}

#pragma mark - tableView   delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        PersonalInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        if (!cell) {
            cell = [[PersonalInfoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        return cell;
    }else if (indexPath.section == 1 || indexPath.section == 2) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 75, cell.height)];
            label.tag = 10;
            [cell.contentView addSubview:label];
            
            UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(label.right + 5, 0, UI_SCREEN_WIDTH - label.right - 20, cell.height)];
            contentLabel.tag = 11;
            [cell.contentView addSubview:contentLabel];
        }
        
        UILabel *label = (UILabel *)[cell viewWithTag:10];
        UILabel *label2 = (UILabel *)[cell viewWithTag:11];
        if (indexPath.section == 1) {
            label.text = @"所在公司: ";
            label2.text = @"杭州圣代";
        }else {
            label.text = @"个人签名: ";
            label2.text = @"真难写!!!!";
        }
        
        
        
        return cell;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
        {
            return 100;
        }
            break;
            
        default:
            break;
    }
    return 44;
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
