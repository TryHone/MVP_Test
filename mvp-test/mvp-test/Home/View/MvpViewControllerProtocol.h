//
//  MvpViewControllerProtocol.h
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#ifndef MvpViewControllerProtocol_h
#define MvpViewControllerProtocol_h

@protocol MvpViewControllerDelegate <NSObject>
@optional
- (void)refresh:(NSString *)key data:(id)data;
@end

#endif /* MvpViewControllerProtocol_h */
