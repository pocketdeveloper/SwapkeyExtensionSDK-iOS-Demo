//
//  ViewController.m
//  Demo_Swapkey_ObjC
//
//  Created by Carolina Franco on 8/9/18.
//  Copyright © 2018 Carolina Franco. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([Swapkey initializeWithKey:@"key"])
    {
        [Swapkey enableDebugging];
        [self setDeviceID];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


-(void)setDeviceID
{
    UIDevice *device = [UIDevice currentDevice];
    NSString *uniqueIdentifier = [[device identifierForVendor] UUIDString];
    uniqueIdentifier = [uniqueIdentifier stringByReplacingOccurrencesOfString:@"-" withString:@""];
    NSUserDefaults *def = [[NSUserDefaults alloc] initWithSuiteName:[SKEOptions getBundleGroup]];
    [def setObject:uniqueIdentifier forKey:[SKEOptions getVaribleToStoreDeviceID]];
    [def synchronize];
}

@end
