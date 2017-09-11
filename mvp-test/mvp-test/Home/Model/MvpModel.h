//
//  MvpModel.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <Foundation/Foundation.h>

// 用于做网络请求和数据缓存
@interface MvpModel : NSObject
+(NSString*)getUserInfo;
+(void)getUserPassword:(void(^)(NSString* pwd))block;
@end
