//
//  UITableView+NoData.h
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoDataView.h"

@interface UITableView (NoData)

@property (nonatomic, strong) NoDataView *nodataView;

- (void)showNodataView;

- (void)hideNodataView;

@end
