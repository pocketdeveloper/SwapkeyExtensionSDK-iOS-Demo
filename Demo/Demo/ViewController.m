//
//  ViewController.m
//  Demo
//
//  Created by Carolina Franco on 10/28/18.
//  Copyright © 2018 Carolina Franco. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblIdentifier;
@property (weak, nonatomic) IBOutlet UIButton *btnCopy;
@property (nonatomic, strong) NSString *identifier;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.identifier = [self setDeviceID];
    [self setIdentifierIntoUI];
    self.btnCopy.layer.cornerRadius = 6;
    self.btnCopy.layer.masksToBounds = YES;
}

- (IBAction)copyIdentifier:(id)sender
{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = self.identifier;
    self.lblIdentifier.text = @"¡Copiado!";
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(setIdentifierIntoUI) userInfo:nil repeats:NO];
}

-(void)setIdentifierIntoUI
{
    [self.lblIdentifier setText:self.identifier];
}

-(NSString *)setDeviceID
{
    UIDevice *device = [UIDevice currentDevice];
    NSString *uniqueIdentifier = [[device identifierForVendor] UUIDString];
    uniqueIdentifier = [uniqueIdentifier stringByReplacingOccurrencesOfString:@"-" withString:@""];
    NSUserDefaults *def = [[NSUserDefaults alloc] initWithSuiteName: @"group.SKE.Test"];
    //[def setObject:@"DEVICE" forKey:@"deviceID"];
    [def setObject:uniqueIdentifier forKey:@"deviceID"];
    [def synchronize];
    
    return uniqueIdentifier;
}


@end
