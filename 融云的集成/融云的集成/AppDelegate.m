//
//  AppDelegate.m
//  融云的集成
//
//  Created by wtw on 15/12/27.
//  Copyright © 2015年 jjl. All rights reserved.
//

#import "AppDelegate.h"
#import <RongIMKit/RongIMKit.h>

#define MYAPP_KEY  @"cpj2xarljgwqn"
#define MYAPP_SECRET  @"TQWcZ5PMVzYM"
#define kDeviceToken @"Gstx1lst3kv55cJcGE4rO+8Hrg/ufbqPZ9yLNqcHDebYWsjl/q+Ap+pFpmP67zH4iZXyPoye0tGFO7z6uuI8hg=="

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //查询保存的token
//   NSString *tokenCache = [[NSUserDefaults standardUserDefaults] objectForKey:@"kDeviceToken"];
    
    //初始化appkey
    [[RCIM sharedRCIM] initWithAppKey:MYAPP_KEY];
    
    [[RCIM sharedRCIM] connectWithToken:kDeviceToken success:^(NSString *userId) {
        NSLog(@"登陆成功。当前登录的用户ID：%@", userId);
        
        //用户信息
//        RCUserInfo *currentUser = [[RCUserInfo alloc] initWithUserId:@"wei2" name:@"威2" portrait:@"http://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=pic&step_word=&pn=0&spn=0&di=134263126250&pi=&rn=1&tn=baiduimagedetail&is=&istype=0&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=undefined&cs=1541137680%2C1083452695&os=2190416706%2C1189659958&simid=6498820%2C508575773&adpicid=0&ln=57&fr=&fmq=1451232428665_R&ic=undefined&s=undefined&se=&sme=&tab=0&width=&height=&face=undefined&ist=&jit=&cg=&bdtype=0&objurl=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fblog%2F201405%2F07%2F20140507132836_LHVeP.thumb.600_0.jpeg&fromurl=ippr_z2C%24qAzdH3FAzdH3Fooo_z%26e3B17tpwg2_z%26e3Bv54AzdH3Frj5rsjAzdH3F4ks52AzdH3F8988d0m00AzdH3F1jpwtsAzdH3F&gsm=0"];
//
//        [RCIMClient sharedRCIMClient].currentUserInfo = currentUser;
        
    } error:^(RCConnectErrorCode status) {
        NSLog(@"登陆的错误码为:%ld", (long)status);
    } tokenIncorrect:^{
        //token过期或者不正确。
        //如果设置了token有效期并且token过期，请重新请求您的服务器获取新的token
        //如果没有设置token有效期却提示token错误，请检查您客户端和服务器的appkey是否匹配，还有检查您获取token的流程。
        NSLog(@"token错误");
    }];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
