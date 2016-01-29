//
//  BXViewController.m
//  BXTencentOpenAPI
//
//  Created by Yiming Tang on 01/29/2016.
//  Copyright (c) 2016 Yiming Tang. All rights reserved.
//

#import <TencentOpenAPI/QQApiInterface.h>
#import "BXViewController.h"


@interface BXViewController ()

@property (nonatomic) UILabel *textLabel;

@end

@implementation BXViewController

#pragma mark - Accessors

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _textLabel.font = [UIFont systemFontOfSize:18.0f];
        _textLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _textLabel;
}


#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.textLabel];
    [self setupViewConstraints];
    
    self.textLabel.text = [QQApiInterface getQQInstallUrl];
}


#pragma mark - Private

- (void)setupViewConstraints {
    UILabel *textLabel = self.textLabel;
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50.0-[textLabel]" options:kNilOptions metrics:nil views:NSDictionaryOfVariableBindings(textLabel)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[textLabel]-|" options:kNilOptions metrics:nil views:NSDictionaryOfVariableBindings(textLabel)]];
}

@end
