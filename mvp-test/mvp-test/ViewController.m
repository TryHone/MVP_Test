//
//  ViewController.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "ViewController.h"
#import "MvpViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* phoneNumberString =  @"ABC123";
    
    NSString * b = [phoneNumberString lowercaseString];
    
//    NSArray* arr  = [phoneNumberString componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet]];
    
      NSArray* arr2  = [phoneNumberString componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz"] invertedSet]];
    [self checkchar:arr2];
    
    
    NSString *pureNumbers = [[phoneNumberString componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet]] componentsJoinedByString:@""];
    

}

-(BOOL)checkNumber:(NSArray*)arr{//判断是否有联系的三位数字和联系三位相同的
    for (int i = 0; i < arr.count; i++) {
        NSString * str = arr[i];
        if (str&&str.length>=3) {
            NSInteger first = [[str substringToIndex:1] integerValue];
            NSInteger two = [[str substringToIndex:2]integerValue];
            NSInteger three = [[str substringToIndex:3]integerValue];
            if ((first+three)== two*2) {
                return true;
            }
        }
    }
    return false;
}

-(BOOL)checkchar:(NSArray*)arr{//判断练习的字符串或者三位相同的字符串
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











- (IBAction)doTestMvp:(id)sender {
    MvpViewController * vc = [[MvpViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
