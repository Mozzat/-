//
//  NoDataView.m
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import "NoDataView.h"
#import <Masonry/Masonry.h>

@interface NoDataView()

@property (nonatomic, strong) UIImageView *imageV;
@property (nonatomic, strong) UIButton    *actionBtn;

@end
@implementation NoDataView

- (instancetype)initWithContent:(NSString *)content{
    
    if (self = [super init]) {
        
        self.imageV = [[UIImageView alloc]init];
        self.imageV.image = [UIImage imageNamed:@"无数据"];
        [self addSubview:self.imageV];
        
        [self.imageV mas_updateConstraints:^(MASConstraintMaker *make) {
           
            make.center.equalTo(self);
            
        }];
        
    }
    return self;
}


@end
