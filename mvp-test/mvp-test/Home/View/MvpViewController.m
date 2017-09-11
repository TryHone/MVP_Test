//
//  MvpViewController.m
//  mvp-test
//
//  Created by TryHone on 17/9/5.
//  Copyright © 2017年 TryHone. All rights reserved.
//

#import "MvpViewController.h"
#import "MvpPresenter.h"
#import "UILabel+Shortcut.h"
#import "UIButton+Shortcut.h"

@interface MvpViewController ()

@property(nonatomic,strong)UILabel * usernameLab;
@property(nonatomic,strong)UILabel * passwordLab;

@property(nonatomic,strong)UIButton * getnameBtn;
@property(nonatomic,strong)UIButton * getPasswordBtn;

//p
@property(nonatomic,strong)MvpPresenter * presenter;

@end

@implementation MvpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.usernameLab];
    [self.view addSubview:self.passwordLab];
    [self.view addSubview:self.getnameBtn];
    [self.view addSubview:self.getPasswordBtn];
    
    UIImageView * imageV= [[UIImageView alloc] init];
    imageV.layer.masksToBounds =YES;
    imageV.layer.cornerRadius =50;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(UILabel*)usernameLab{
    if (!_usernameLab) {
        _usernameLab = [UILabel AW_Lable:^(UILabel *lab) {
//            lab.frame  =  CGRectMake(0, 100, 200, 40);
            lab.textAlignment = NSTextAlignmentCenter;
//            lab.textColor = [UIColor redColor];
            lab.AWframe(CGRectMake(0, 100, 200, 40)).AWtextColor([UIColor redColor]);
        }];
    }
    return _usernameLab;
}

-(UILabel*)passwordLab{
    if (!_passwordLab) {
        _passwordLab = [[UILabel alloc] init];
        _passwordLab.frame  =  CGRectMake(0, 240, 200, 40);
        _passwordLab.textAlignment = NSTextAlignmentCenter;
        _passwordLab.textColor = [UIColor yellowColor];
    }
    return _passwordLab;
}

-(UIButton*)getnameBtn{

    if (!_getnameBtn) {
        _getnameBtn = [[UIButton alloc] init];
        _getnameBtn.frame = CGRectMake(0, 340, 200, 40);
        [_getnameBtn setTitle:@"获取用户名" forState:UIControlStateNormal];
        _getnameBtn.backgroundColor = [UIColor grayColor];
        [_getnameBtn addTarget:self action:@selector(getUsername) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _getnameBtn;
}

-(UIButton*)getPasswordBtn{
 
    if (!_getPasswordBtn) {
        _getPasswordBtn = [[UIButton alloc] init];
        _getPasswordBtn.frame = CGRectMake(240, 340, 200, 40);
        [_getPasswordBtn setTitle:@"获取密码" forState:UIControlStateNormal];
        _getPasswordBtn.backgroundColor = [UIColor grayColor];
        [_getPasswordBtn addTarget:self action:@selector(getPassword) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    return _getPasswordBtn;
}

-(void)getUsername{
    [self.presenter  getLoginUserInfo];
}
-(void)getPassword{
    [self.presenter getUserPassword];
}

-(void)refresh:(NSString *)key data:(id)data{
    if ([@"username" isEqualToString:key]) {
        self.usernameLab.text = (NSString*)data;
    }else if ([@"password" isEqualToString:key]){
        self.passwordLab.text = (NSString*)data;
    }
}


-(MvpPresenter*)presenter{
    if (!_presenter) {
        _presenter = [[MvpPresenter alloc] initWithViewDelegate:self];
    }
    return _presenter;
}
@end
