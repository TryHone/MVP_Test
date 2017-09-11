//
//  MvpPresenter.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "MvpPresenter.h"
#import "MvpViewControllerProtocol.h"
#import "MvpModel.h"


@implementation MvpPresenter{
    id<MvpViewControllerDelegate> _delegate;
    MvpModel * _mvpModel;
    
}
-(instancetype)initWithViewDelegate:(id<MvpViewControllerDelegate>)delegate{
    self = [super init];
    if (self) {
        _delegate = delegate;
        _mvpModel = [[MvpModel alloc] init];
    }
    return self;
}
-(void)getLoginUserInfo{
    NSString* username = [MvpModel getUserInfo];
    //刷新界面数据
    if ([self checkDelegate] && [_delegate respondsToSelector:@selector(refresh:data:)]) {
        [_delegate refresh:@"username" data:username];
    }
}

-(void)getUserPassword{
    [MvpModel getUserPassword:^(NSString *pwd) {
        if ([self checkDelegate] && [_delegate respondsToSelector:@selector(refresh:data:)]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                 [_delegate refresh:@"password" data:pwd];
            });
        }
    }];
}
-(BOOL)checkDelegate{
    if (_delegate) {
        return YES;
    }else{
        return NO;
    }
}
@end
