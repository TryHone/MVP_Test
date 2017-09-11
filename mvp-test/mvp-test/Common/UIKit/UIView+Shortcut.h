//
//  UIView+Shortcut.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Shortcut)
+(UIView*)AW_View:(void(^)(UIView * view))block;
@end
