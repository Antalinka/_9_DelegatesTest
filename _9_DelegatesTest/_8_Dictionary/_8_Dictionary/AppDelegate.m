//
//  AppDelegate.m
//  _8_Dictionary
//
//  Created by Exo-terminal on 3/12/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "AppDelegate.h"
#import "GRStudent.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSMutableArray* allStudent = [[NSMutableArray alloc]init];
    
    for (NSInteger i=0; i<15; i++) {
        
        GRStudent* student = [[GRStudent alloc]init];
        
        student.name = [NSString stringWithFormat:@"Vasiliy%d", i+1];
        student.lastName = [NSString stringWithFormat:@"Ivanov%d",i+1];
        student.greeting = [NSString stringWithFormat:@"My last name is Ivanov%d", i+1];
        
        [allStudent addObject:student];
        
        
    }
    
    NSDictionary* studentDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                      allStudent[0],[[allStudent[0] lastName] stringByAppendingString:[allStudent[0] name]],
                                      allStudent[1],[[allStudent[1] lastName] stringByAppendingString:[allStudent[1] name]],
                                      allStudent[2],[[allStudent[2] lastName] stringByAppendingString:[allStudent[2] name]],
                                      allStudent[3],[[allStudent[3] lastName] stringByAppendingString:[allStudent[3] name]],
                                      allStudent[4],[[allStudent[4] lastName] stringByAppendingString:[allStudent[4] name]],
                                      allStudent[5],[[allStudent[5] lastName] stringByAppendingString:[allStudent[5] name]],
                                      allStudent[6],[[allStudent[6] lastName] stringByAppendingString:[allStudent[6] name]],
                                      allStudent[7],[[allStudent[7] lastName] stringByAppendingString:[allStudent[7] name]],
                                      allStudent[8],[[allStudent[8] lastName] stringByAppendingString:[allStudent[8] name]],
                                      allStudent[9],[[allStudent[9] lastName] stringByAppendingString:[allStudent[9] name]],
                                      allStudent[10],[[allStudent[10] lastName] stringByAppendingString:[allStudent[10] name]],
                                      allStudent[11],[[allStudent[11] lastName] stringByAppendingString:[allStudent[11] name]],
                                      allStudent[12],[[allStudent[12] lastName] stringByAppendingString:[allStudent[12] name]],
                                      allStudent[13],[[allStudent[13] lastName] stringByAppendingString:[allStudent[13] name]],
                                      allStudent[14],[[allStudent[14] lastName] stringByAppendingString:[allStudent[14] name]],
                                      nil];

    NSInteger i= 1;
    
    for(GRStudent* key in [studentDictionary allKeys]){
        
        id obj = [studentDictionary objectForKey:key];
        NSLog(@"Student%d.%@ \n",i,obj);
        i++;
    }
    
    NSLog(@"              --------------------------master--------------------------");
    NSInteger a= 1;
    
    NSArray*sortedKey = [[studentDictionary allKeys] sortedArrayUsingSelector:@selector(localizedStandardCompare:)];
    
//    NSArray*sortedKey = [[studentDictionary allKeys] sortedArrayUsingSelector:@selector(compare:)];

    for(NSString *keySort in sortedKey){
        GRStudent *man = [studentDictionary objectForKey:keySort];
        NSLog(@"Student%d.%@ \n",a,man);
        a++;
        
    }
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
