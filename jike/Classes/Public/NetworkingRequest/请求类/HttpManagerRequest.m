//
//  HttpManagerRequest.m
//  NetWorking
//
//  Created by lwj on 2018/4/25.
//  Copyright © 2018年 lwj. All rights reserved.
//

#import "HttpManagerRequest.h"

@implementation HttpManagerRequest

+ (void)getUserInfoWithSuccessBlock:(HttpRequestSuccessBlock)sueessBlock WithFaileBlock:(HttpRequestFaileureBlock)faileBlock{
    
    NSMutableDictionary *parameter = [NSMutableDictionary dictionary];
    parameter[@"id"] = @"39";
    [HttpNetworkManager requestMethedWithType:Get WithIsFile:NO WithUrl:User_Info_API WithParametr:parameter WithFileArray:nil WithSuccessBlock:sueessBlock WithFaileBlock:faileBlock];
    
}

@end
