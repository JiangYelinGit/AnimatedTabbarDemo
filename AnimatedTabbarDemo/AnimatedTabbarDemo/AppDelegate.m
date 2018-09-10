//
//  AppDelegate.m
//  AnimatedTabbarDemo
//
//  Created by jiangyelin on 2018/9/10.
//  Copyright © 2018年 jiangyelin. All rights reserved.
//

#import "AppDelegate.h"
#import <RAMAnimatedTabBarController/RAMAnimatedTabBarController-Swift.h>
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    RAMAnimatedTabBarController *barBarVC = [RAMAnimatedTabBarController new];
    
    FirstViewController *firstVC = [FirstViewController new];
    UINavigationController *firstNavVC = [[UINavigationController alloc] initWithRootViewController:firstVC];
    RAMAnimatedTabBarItem *firstItem = [[RAMAnimatedTabBarItem alloc] initWithTitle:@"abc" image:[UIImage imageNamed:@"icon_user"] tag:0];
    
    
    RAMLeftRotationAnimation *firstItemAnimation = [[RAMLeftRotationAnimation alloc] init];
    firstItemAnimation.duration = 0.8;
    firstItem.animation = firstItemAnimation;
    firstNavVC.tabBarItem = firstItem;
    
    
    SecondViewController *secondVC = [SecondViewController new];
    UINavigationController *secondNavVC = [[UINavigationController alloc] initWithRootViewController:secondVC];
    RAMAnimatedTabBarItem *secondItem = [[RAMAnimatedTabBarItem alloc] initWithTitle:@"bcd" image:[UIImage imageNamed:@"Tools_00028"] tag:1];
    
    
    RAMFrameItemAnimation *secondItemAnimation = [[RAMFrameItemAnimation alloc] init];
    secondItemAnimation.imagesPath = @"ToolsAnimation";
    secondItemAnimation.isDeselectAnimation = YES;
    secondItemAnimation.textSelectedColor = [UIColor blueColor];
    [secondItemAnimation awakeFromNib];
    
    
    secondItem.animation = secondItemAnimation;
    secondNavVC.tabBarItem = secondItem;
    
    
    barBarVC.viewControllers = @[firstNavVC,secondNavVC];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = barBarVC;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
