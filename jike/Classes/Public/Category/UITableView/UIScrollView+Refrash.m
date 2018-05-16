//
//  UIScrollView+Refrash.m
//  jike
//
//  Created by taotingxing on 2018/5/16.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import "UIScrollView+Refrash.h"
#import <objc/runtime.h>

static NSString *kObservePath  = @"contentOffset";
static char topShowViewKey;
@implementation UIScrollView (Refrash)

- (void)addHeaderRefreshWithTarget:(id)target action:(SEL)action{
    
    if (!self.refreshView)
    {
        self.refreshView = [[CustomeRefreshView alloc] init];
    }
    self.refreshView.frame = CGRectMake(0, -100, self.frame.size.width, 100);
    self.refreshView.parentView = self;
    self.refreshView.actionTarget = target;
    self.refreshView.action = action;
    [self addSubview:self.refreshView];
    //兼听滚动便宜
    [self addObserver:self forKeyPath:kObservePath options:NSKeyValueObservingOptionNew context:nil];
    
}

-(void)beginHeaderRefresh
{
    [self.refreshView beginHeaderRefresh];
}
-(void)endHeaderRefresh
{
    [self.refreshView endHeaderRefresh];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    if ([kObservePath isEqualToString:keyPath])
    {
        NSValue *point = (NSValue *)[change objectForKey:@"new"];
        CGPoint p = [point CGPointValue];
        [self.refreshView adjustY:-p.y];
    }
    
    
}
-(CustomeRefreshView *)refreshView{
    return objc_getAssociatedObject(self, &topShowViewKey);
}

- (void)setRefreshView:(CustomeRefreshView *)refreshView{
    
    objc_setAssociatedObject(self, &topShowViewKey, refreshView, OBJC_ASSOCIATION_RETAIN);
    
}

-(void)dealloc{
    if (self.refreshView)//注册过刷新的必须要除移开监听
    {
//        [self removeObserver:self forKeyPath:kObservePath context:kObserveContent];
        [self removeObserver:self forKeyPath:kObservePath context:nil];
    }
}

@end
