//
//  AppDelegate.m
//  Flights_iOS
//
//  Created by Shin, Jin & Unnai, Kenichi on 7/25/14.
//  Copyright (c) 2014 CEG. All rights reserved.
//

#import "AppDelegate.h"
#import "SettingsUtilities.h"
#import "ConnectivitySettings.h"
#import "MAFLogonCoreState.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    //Loads app settings from iOS Settings for this app and sets ConnectivitySettings for use throughout app
    [SettingsUtilities updateConnectivitySettingsFromUserSettings];
    
////TODO: BEGIN (MAFLogonCore #2)
//    
//    self.lc = [[MAFLogonCore alloc] initWithApplicationId:[ConnectivitySettings SMPAppID]];
//    MAFLogonCoreState *state = [self.lc state];
//    
//    //Decide which view to show depending on whether user is registered
//    NSString *storyBoardId = state.isRegistered ? @"MainMenuNavigation" : @"RegistrationView";
//
////TODO: END (MAFLogonCore #2)
    
    self.window.rootViewController = [self.window.rootViewController.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
