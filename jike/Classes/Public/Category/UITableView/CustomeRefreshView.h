//
//  CustomeRefreshView.h
//  jike
//
//  Created by taotingxing on 2018/5/16.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,RefreshStatus)
{
    RefreshStatus_Normal = 1,
    RefreshStatus_BeginRefresh,
    RefreshStatus_Refreshing,
};
@interface CustomeRefreshView : UIView

@property (nonatomic,strong)UILabel *updateLabel;
@property (nonatomic,weak) id actionTarget;
@property (nonatomic)SEL action;
@property (nonatomic,strong) UIScrollView *parentView;
@property (nonatomic) RefreshStatus refreshStatus;

-(void)beginHeaderRefresh;
-(void)endHeaderRefresh;
-(void)adjustY:(CGFloat)y;

@end
