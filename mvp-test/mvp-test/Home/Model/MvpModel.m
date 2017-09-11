//
//  MvpModel.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "MvpModel.h"

@implementation MvpModel

+(NSString*)getUserInfo{
  //实际情况可能是网络请求过来的也可能是缓存中来的
  return @"AlanWang";
}
+(void)getUserPassword:(void(^)(NSString* pwd))block{
 
    if (block) {
        block(@"1234567");
    }
}

@end
