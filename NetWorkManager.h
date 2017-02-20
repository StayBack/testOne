//
//  NetWorkManager.h
//  Network
//
//  Created by stayback on 16/11/20.
//  Copyright © 2016年 stayback. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetWorkManager : NSObject

+ (NetWorkManager *)defaultManager;

- (void)normalRequest;


@end
