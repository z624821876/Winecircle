//
//  CircleVC.m
//  Winecircle
//
//  Created by yu on 15/6/15.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "CircleVC.h"

@interface CircleVC ()
{
    UIButton        *_currentBtn;

}

@end

@implementation CircleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self buildTopView];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT - 49 - 44 - 64) style:UITableViewStyleGrouped];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0.1)];
    _tableView.tableFooterView = [UIView new];
    _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    [self.view addSubview:_tableView];
}

- (void)buildTopView
{
    NSArray *titleArr = @[@"我的圈子",@"通讯录"];
    NSInteger count = [titleArr count];
    for (NSInteger i = 0; i < count; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(UI_SCREEN_WIDTH / count * i, 0, UI_SCREEN_WIDTH / count, 44);
        btn.tag = i;
        if (i == 0) {
            btn.selected = YES;
            _currentBtn = btn;
        }
        [btn setTitle:titleArr[i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitleColor:BaseColor forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(changeOption:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 44 - 0.3, UI_SCREEN_WIDTH, 0.3)];
    lineView.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.7];
    [self.view addSubview:lineView];
}

- (void)changeOption:(UIButton *)btn
{
    if (btn.selected) {
        return;
    }
    _currentBtn.selected = NO;
    btn.selected = YES;
    _currentBtn = btn;
}

#pragma mark - tableView delegate/datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

    //索引
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return @[@"a",@"b",@"c"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arc4random_uniform(5) + 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"123123";
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
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
