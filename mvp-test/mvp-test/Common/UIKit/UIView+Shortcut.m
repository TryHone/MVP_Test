//
//  UIView+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UIView+Shortcut.h"

@implementation UIView (Shortcut)
+(UIView*)AW_View:(void(^)(UIView * view))block{
    UIView * tempView = [[UIView alloc] init];
    if (block) {
        block(tempView);
    }
    return tempView;
}
@end
