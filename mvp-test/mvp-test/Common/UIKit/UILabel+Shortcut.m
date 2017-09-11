//
//  UILabel+Shortcut.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "UILabel+Shortcut.h"

@implementation UILabel (Shortcut)
+(UILabel*)AW_Lable:(void(^)(UILabel * lab))block{
    UILabel * lable = [[UILabel alloc] init];
    if (block) {
        block(lable);
    }
    return lable;
}

//快捷属性
-(UILabel * (^)(CGRect rect))AWframe{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(UILabel * (^)(UIColor * color))AWtextColor{

    return ^(UIColor* color){
    
        self.textColor = color;
        return self;
    };
}

@end
