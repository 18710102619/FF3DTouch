//
//  AppDelegate.m
//  FF3DTouch
//
//  Created by 张玲玉 on 16/7/7.
//  Copyright © 2016年 张玲玉. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self addShortcutItems:application];
    
    return YES;
}

/**
 *  添加 shortcutItems
 */
- (void)addShortcutItems:(UIApplication *)application
{
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"login_account_icon"];
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"login_pwd_icon"];
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"login_check_icon"];
    UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc] initWithType:@"item1" localizedTitle:@"账号" localizedSubtitle:@"点击账号" icon:icon1 userInfo:nil];
    UIApplicationShortcutItem *item2 = [[UIApplicationShortcutItem alloc] initWithType:@"item2" localizedTitle:@"密码" localizedSubtitle:@"点击密码" icon:icon2 userInfo:nil];
    UIApplicationShortcutItem *item3 = [[UIApplicationShortcutItem alloc] initWithType:@"item3" localizedTitle:@"验证码" localizedSubtitle:@"点击验证码" icon:icon3 userInfo:nil];
    application.shortcutItems = @[item1,item2,item3];
}

/**
 *  3DTouch 代理回调
 */
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    if ([shortcutItem.type isEqualToString:@"item1"]) {
        NSLog(@"点击账号");
    }
    else if ([shortcutItem.type isEqualToString:@"item2"]) {
        NSLog(@"点击密码");
    }
    else{
        NSLog(@"点击验证码");
    }
}

@end
