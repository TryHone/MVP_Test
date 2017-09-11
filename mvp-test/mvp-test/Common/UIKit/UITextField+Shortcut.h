//
//  UITextField+Shortcut.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Shortcut)
+(UITextField*)AW_TextField:(void(^)(UITextField * textfield))block;
@end
