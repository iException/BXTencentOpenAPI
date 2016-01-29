//
//  BXAppDelegate.m
//  BXTencentOpenAPI
//
//  Created by Yiming Tang on 01/29/2016.
//  Copyright (c) 2016 Yiming Tang. All rights reserved.
//

#import <TencentOpenAPI/TencentOAuth.h>
#import "BXAppDelegate.h"
#import "BXViewController.h"

@implementation BXAppDelegate

@synthesize window = _window;


#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[BXViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}


- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return [TencentOAuth HandleOpenURL:url];
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [TencentOAuth HandleOpenURL:url];
}


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    return [TencentOAuth HandleOpenURL:url];
}

@end
