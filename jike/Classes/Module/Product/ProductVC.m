//
//  ProductVC.m
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import "ProductVC.h"
#import "TableViewRefresh.h"

@interface ProductVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

static NSString *cellID = @"ProductVC";
@implementation ProductVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"产品";
    
    [self.view addSubview:self.tableView];
    
    [self.tableView showNodataView];
}

#pragma mark---lazy launch
- (UITableView *)tableView{
    
    if (!_tableView ) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, BDTopHeight, SCREEN_WIDTH, SCREENH_HEIGHT - BDTopHeight - BDBottomHeight - BDTabBarHeight) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
        
        [_tableView addHeaderRefreshWithTarget:self action:@selector(loadNewData)];
        
    }
    return _tableView;
}

#pragma mark---<UITableViewDelegate,UITableViewDataSource>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.textLabel.text = @(indexPath.row).stringValue;
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}

#pragma mark---provate method
- (void)loadNewData{
    
//    [self.tableView beginHeaderRefresh];
    
    sleep(2);
    
    [self.tableView endHeaderRefresh];
    
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
