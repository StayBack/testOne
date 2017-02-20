//
//  NetWorkManager.m
//  Network
//
//  Created by stayback on 16/11/20.
//  Copyright © 2016年 stayback. All rights reserved.
//

#import "NetWorkManager.h"
#import <AFNetworking.h>

static NetWorkManager * manager;

@implementation NetWorkManager

+ (NetWorkManager *)defaultManager {

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (manager == nil) {
            manager = [[NetWorkManager alloc]init];
        }
    });
    return manager;
}

- (void)afnetRequest {

    AFHTTPSessionManager * manager;
    [manager POST:nil parameters:nil progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}


- (void)normalRequest {

    NSURL * url = [NSURL URLWithString:@"https:\\www.baidu.com"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSMutableURLRequest * muRequest = [NSMutableURLRequest requestWithURL:url];
    NSURLSession * session = [NSURLSession sharedSession];
    NSURLSessionDataTask * dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"%@success",error);
    }];
    [dataTask resume];
}


@end
