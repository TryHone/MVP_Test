//
//  NSString+WeakPassword.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WeakPassword)
-(NSString*)checkWeakPassword:(void(^)(BOOL flag,NSString*info))block;
@end
