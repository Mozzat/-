//
//  HomeVC.m
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import "HomeVC.h"
#import "FirstVC.h"
#import "ZWMSegmentController.h"

@interface HomeVC ()

@property (nonatomic, strong) ZWMSegmentController *segmentVC;

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"首页";
    
    FirstVC *f1 = [[FirstVC alloc]init];
    FirstVC *f2 = [[FirstVC alloc]init];
    FirstVC *f3 = [[FirstVC alloc]init];
    FirstVC *f4 = [[FirstVC alloc]init];
    FirstVC *f5 = [[FirstVC alloc]init];
    
    NSArray *arr = @[f1,f2,f3,f4,f5];
    NSArray *titleArr = @[@"机器人",@"VR穿戴",@"智能家居",@"智能硬件",@"更多"];
    self.segmentVC = [[ZWMSegmentController alloc]initWithFrame:CGRectMake(0, BDTopHeight, SCREEN_WIDTH, SCREENH_HEIGHT - BDTopHeight - BDTabBarHeight) titles:titleArr];
    self.segmentVC.segmentView.segmentTintColor = [UIColor redColor];
    self.segmentVC.viewControllers = [arr mutableCopy];
    if (arr.count==1) {
        self.segmentVC.segmentView.style=ZWMSegmentStyleDefault;
    } else {
        self.segmentVC.segmentView.style=ZWMSegmentStyleFlush;
    }
//    [self.segmentVC  enumerateBadges:@[@(1),@10]];
    [self addSegmentController:self.segmentVC];
    [self.segmentVC  setSelectedAtIndex:0];
}

- (void)push{
    
    
}

- (void)getData{
    
    [HttpManagerRequest getUserInfoWithSuccessBlock:^(id result) {
        
        NSLog(@"%@",result);
        
    } WithFaileBlock:^(id result) {
        
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self getData];
    
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
