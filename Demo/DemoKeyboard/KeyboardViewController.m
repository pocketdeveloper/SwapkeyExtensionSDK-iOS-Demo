//
//  KeyboardViewController.m
//  DemoKeyboard
//
//  Created by Carolina Franco on 3/3/19.
//  Copyright © 2019 Carolina Franco. All rights reserved.
//

#import "KeyboardViewController.h"

@interface KeyboardViewController ()
    @property (nonatomic, strong) UIButton *nextKeyboardButton;
    @property (nonatomic, strong) SwapkeyController *swapkeyController;
@end

@implementation KeyboardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.nextKeyboardButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    SKEPreferences *pref = [SKEPreferences getCurrentPreferences];
    if (pref != nil)
    {
        pref.bundleGroup = @"group.SKE.Test";
        pref.selfUrlToOpen = @"swap://";
        pref.variableToStoreDeviceID = @"deviceID";
        pref.maxAttempsToPay = 3;
        pref.shouldShowSendKeyboard = YES;
        pref.notAllowedHosts = [[NSArray alloc] init];
        
        if ([Swapkey initializeWithKey:@"swap" isDevelopment:NO andPreferences:pref])
        {
            BOOL enabled = [Swapkey enableDebugging];
        }
    }
    
    self.swapkeyController = [[SwapkeyController alloc] initWithHandler:self];
    [self.swapkeyController view];
}

- (void)textWillChange:(id<UITextInput>)textInput
{
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    [self.swapkeyController updateViewConstraints];
}

- (void)textDidChange:(id<UITextInput>)textInput
{
    [self.swapkeyController textDidChange:textInput];
}


@end
