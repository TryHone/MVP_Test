//
//  MvpPresenter.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MvpViewControllerProtocol.h"
@interface MvpPresenter : NSObject
-(instancetype)initWithViewDelegate:(id<MvpViewControllerDelegate>)delegate;
-(void)getLoginUserInfo;
-(void)getUserPassword;
@end
