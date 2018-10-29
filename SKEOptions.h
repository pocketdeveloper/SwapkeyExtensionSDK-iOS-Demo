//
//  SKEOptions.h
//  Demo_Swapkey_ObjC
//
//  Created by Carolina Franco on 10/28/18.
//  Copyright © 2018 Carolina Franco. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SKEOptions : NSObject

+(BOOL)isAllowedHost:(NSString *) host;

+(BOOL)shouldShowSendKeyboard;

+(NSString *)selfUrlToOpen;

+(NSString *)bundleIdentifier;

+(NSString *)getBundleGroup;

+(BOOL)debugMode;

+(NSString *)getVaribleToStoreDeviceID;

@end

NS_ASSUME_NONNULL_END
