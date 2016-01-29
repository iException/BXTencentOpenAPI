//
//  BXViewController.m
//  BXTencentOpenAPI
//
//  Created by Yiming Tang on 01/29/2016.
//  Copyright (c) 2016 Yiming Tang. All rights reserved.
//

#import <TencentOpenAPI/TencentOAuth.h>
#import "BXViewController.h"


#warning You should replace `YOUR_APP_ID` with your own app ID provided by Tencent.
static NSString *const kBXAppID = @"YOUR_APP_ID";


@interface BXViewController () <TencentSessionDelegate>

@property (nonatomic) UILabel *textLabel;
@property (nonatomic) UIButton *submitButton;
@property (nonatomic) TencentOAuth *oauth;

@end


@implementation BXViewController

#pragma mark - Accessors

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _textLabel.font = [UIFont systemFontOfSize:18.0f];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.text = @"Tencent OAuth";
    }
    return _textLabel;
}


- (UIButton *)submitButton {
    if (!_submitButton) {
        _submitButton = [[UIButton alloc] init];
        _submitButton.translatesAutoresizingMaskIntoConstraints = NO;
        [_submitButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_submitButton setTitle:@"Sign In" forState:UIControlStateNormal];
        [_submitButton addTarget:self action:@selector(signIn:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _submitButton;
}


#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.textLabel];
    [self.view addSubview:self.submitButton];
    [self setupViewConstraints];
}


#pragma mark - Actions

- (void)signIn:(id)sender {
    self.oauth = [[TencentOAuth alloc] initWithAppId:kBXAppID andDelegate:self];
    NSArray *permissions = @[kOPEN_PERMISSION_GET_USER_INFO,
                             kOPEN_PERMISSION_GET_SIMPLE_USER_INFO,
                             kOPEN_PERMISSION_GET_INFO,
                             kOPEN_PERMISSION_ADD_SHARE];
    [self.oauth authorize:permissions];
}


#pragma mark - Private

- (void)setupViewConstraints {
    NSDictionary *views = @{
        @"textLabel": self.textLabel,
        @"submitButton": self.submitButton,
    };
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100.0-[textLabel]-50.0-[submitButton]" options:kNilOptions metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[textLabel]-|" options:kNilOptions metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[submitButton]-|" options:kNilOptions metrics:nil views:views]];
}


#pragma mark - TencentSessionDelegate

- (void)tencentDidLogin {
    self.textLabel.text = [NSString stringWithFormat:@"Access Token: %@", self.oauth.accessToken];
}


- (void)tencentDidNotLogin:(BOOL)cancelled {
    self.textLabel.text = @"Failed";
}


- (void)tencentDidNotNetWork {
    self.textLabel.text = @"Networking Error";
}

@end
