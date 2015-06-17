//
//  HomeVC.m
//  Winecircle
//
//  Created by yu on 15/6/15.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "HomeVC.h"
#import "NIMSDK.h"

@interface HomeVC ()
{
    UIButton        *_currentBtn;
    
    NSMutableArray  *_tableArray;
}
@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableArray = [[NSMutableArray alloc] initWithCapacity:3];
    [self buildTopView];
    [self buildContentView];
    
}

- (void)buildContentView
{
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 88, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT - 88 - 64 - 49)];
    _scrollView.pagingEnabled = YES;
    [self.view addSubview:_scrollView];
    
    for (NSInteger i = 0; i < 3; i ++ ) {
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(UI_SCREEN_WIDTH * i, 0, UI_SCREEN_WIDTH, _scrollView.height) style:UITableViewStyleGrouped];
        tableView.delegate = self;
        tableView.dataSource = self;
        [_scrollView addSubview:tableView];
        [_tableArray addObject:tableView];
    }
    
    NSLog(@"%@",[_tableArray objectAtIndex:0]);
    
    _scrollView.contentSize = CGSizeMake(UI_SCREEN_WIDTH * 3, _scrollView.height);
//    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 44 + 44, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT - 88 - 64 - 49) style:UITableViewStylePlain];
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    _tableView.tableFooterView = [UIView new];
//    [self.view addSubview:_tableView];
    
}

    //searchBar、选项按钮
- (void)buildTopView
{
    _searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, 44)];
    _searchBar.backgroundImage = [Util createImageWithColor:ColorWithRGBA(239, 239, 239, 1)];
    _searchBar.placeholder = @"好友/圈子/资讯/产品";
    [self.view addSubview:_searchBar];
    
    NSArray *titleArr = @[@"消息",@"行业",@"生活"];
    for (NSInteger i = 0; i < 3; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(UI_SCREEN_WIDTH / 3.0 * i, _searchBar.bottom, UI_SCREEN_WIDTH / 3.0, 44);
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
    
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 88 - 0.3, UI_SCREEN_WIDTH, 0.3)];
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

#pragma mark - tableView  delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
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
