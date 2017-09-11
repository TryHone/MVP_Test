//
//  UILabel+Shortcut.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Shortcut)
+(UILabel*)AW_Lable:(void(^)(UILabel * lab))block;
@property(nonatomic,weak)UILabel * (^AWframe)(CGRect rect);
@property(nonatomic,weak)UILabel * (^AWtextColor)(UIColor * color);
@end
