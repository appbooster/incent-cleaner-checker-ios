//
//  Opener.h
//  IncentCleanerChecker
//
//  Created by Appbooster on 03/09/2019.
//  Copyright © 2019 Appbooster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Opener : NSObject

+ (instancetype)shared;
- (BOOL)openAppWithBundleId:(NSString *)bundleId;

@end
