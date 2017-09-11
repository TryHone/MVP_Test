//
//  NSString+WeakPassword.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "NSString+WeakPassword.h"

@implementation NSString (WeakPassword)

-(NSString*)checkWeakPassword:(void(^)(BOOL flag,NSString*info))block{
  
    NSString * result = nil;
    BOOL flag = true;
    if ([self isNum:self]) {
        
        
        
    }else{
        result = @"密码不能全部为数字";
        flag = false;
    }
    
    
    
    
    return result;
}

- (BOOL)isNum:(NSString *)checkedNumString {
    checkedNumString = [checkedNumString stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
    if(checkedNumString.length > 0) {
        return NO;
    }
    return YES;
}

-(BOOL)checkNumber:(NSString*)str{
   NSArray* arr  = [str componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet]];
    if (arr&&arr.count) {
        for (int i = 0; i < arr.count; i++) {
            NSString * str = arr[i];
            if (str && str.length >= 3) {
                NSInteger first = [[str substringToIndex:1] integerValue];
                NSInteger two = [[str substringToIndex:2]integerValue];
                NSInteger three = [[str substringToIndex:3]integerValue];
                if ((first+three) == two*2) {
                    return true;
                }
            }
        }
    }
    return false;
}

-(BOOL)checkChar:(NSString*)str{
    NSString* tempStr = [str copy];
     NSArray* arr  = [tempStr componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz"] invertedSet]];
    for (int i = 0; i < arr.count; i++) {
        NSString * str = arr[i];
        if (str&&str.length>=3) {
            const char *ch = [str cStringUsingEncoding:NSASCIIStringEncoding];
            NSInteger first = ch[0];
            NSInteger two = ch[1];
            NSInteger three = ch[2];
            if ((first+three)== two*2) {
                return true;
            }
        }
    }
    return false;
}


@end
