//
//  UIButton+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UIButton+Shortcut.h"

@implementation UIButton (Shortcut)
+(UIButton*)AW_Button:(void(^)(UIButton * btn))block{
    UIButton * btn = [[UIButton alloc] init];
    if (block) {
        block(btn);
    }
    return btn;
}
@end
