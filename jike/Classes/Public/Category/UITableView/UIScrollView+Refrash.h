//
//  UIScrollView+Refrash.h
//  jike
//
//  Created by taotingxing on 2018/5/16.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomeRefreshView.h"

@interface UIScrollView (Refrash)

@property (nonatomic, strong) CustomeRefreshView *refreshView;

-(void)addHeaderRefreshWithTarget:(id)target action:(SEL)action;

-(void)beginHeaderRefresh;

-(void)endHeaderRefresh;

@end
