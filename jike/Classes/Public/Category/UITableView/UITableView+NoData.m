//
//  UITableView+NoData.m
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import "UITableView+NoData.h"
#import <objc/runtime.h>

static char noDataViewKey;
@implementation UITableView (NoData)

- (void)showNodataView{
    
    self.nodataView = [[NoDataView alloc]initWithFrame:self.bounds];
    [self.backgroundView addSubview:self.nodataView];
    
}

- (void)hideNodataView{
    
    [self.nodataView removeFromSuperview];
    
}

- (NoDataView *)nodataView{
    
    return objc_getAssociatedObject(self, &noDataViewKey);
}

- (void)setNodataView:(NoDataView *)nodataView{
    
    objc_setAssociatedObject(self, &noDataViewKey, nodataView, OBJC_ASSOCIATION_RETAIN);
}

@end
