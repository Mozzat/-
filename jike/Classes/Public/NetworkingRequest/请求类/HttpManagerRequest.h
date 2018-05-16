//
//  HttpManagerRequest.h
//  NetWorking
//
//  Created by lwj on 2018/4/25.
//  Copyright © 2018年 lwj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpNetworkManager.h"
#import "APIName.h"

@interface HttpManagerRequest : NSObject

+ (void)getUserInfoWithSuccessBlock:(HttpRequestSuccessBlock)sueessBlock WithFaileBlock:(HttpRequestFaileureBlock)faileBlock;

@end
