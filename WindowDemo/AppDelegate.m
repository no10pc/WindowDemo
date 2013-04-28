//
//  AppDelegate.m
//  WindowDemo
//
//  Created by 付 翾宇 on 13-4-25.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];

    [self.window makeKeyAndVisible];
    
    Person *person=nil; //对象创建并初始化,驼峰
    
    person = [[Person alloc] init];
    NSLog(@"person address:%p",person);
    [person initWithAge:10 identify:20];
    NSLog(@"Person age:%d,id:%d",person.Age,person.Identidy);
    
    Person *user = [[Person alloc] initWithAge:20 identify:30];

    
    [user setName:@"王老五"];
    [user setAge:28];
    [user setAge:++user.Age];
    NSLog(@"user age:%d",user.Age);
    
    id person2;
    person2 = user;
    
    id person3 = nil;
    [person3 initWithAge:100 identify:100];
    
    //动态类型   ---  c# var
    // id 类似户C#中的 var
    
    
    
    for(int i=0;i<=768;i+=20)
    {
        for (int j=0; j<=1024; j+=20) {
            UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(i,j,10,10)];
            view1.backgroundColor = [UIColor redColor];
            view1.tag=1;
            view1.alpha  = 0.6f;
            [self.window addSubview:view1];
            [view1 release];
        }
    
    }
    
    
    for(int i=10;i<=768;i+=20)
    {
        for (int j=10; j<=1024; j+=20) {
            UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(i,j,10,10)];
            view1.backgroundColor = [UIColor blueColor];
            view1.tag=1;
            [self.window addSubview:view1];
            [view1 release];
        }
        
    }
   
    
    
    
    return YES;
}

-(void)alertUser{
    UIAlertView *alertView = [[[UIAlertView alloc]
                               initWithTitle:@"温馨提示"
                               message:@"这alert Level级别"
                               delegate:nil
                               cancelButtonTitle:@"取消"
                               otherButtonTitles:nil] autorelease];
    [alertView show];
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
