//
//  UITextField+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UITextField+Shortcut.h"

@implementation UITextField (Shortcut)
+(UITextField*)AW_TextField:(void(^)(UITextField * textfield))block{
    UITextField * textfieldtemp = [[UITextField alloc] init];
    if (block) {
        block(textfieldtemp);
    }
    return textfieldtemp;
}
@end
