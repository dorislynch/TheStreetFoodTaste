//
//  RNTasteTheStreetFood.h
//  RNTheStreetFoodTaste
//
//  Created by Nicka on 7/7/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNTasteTheStreetFood : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)tasteTheStreetFood_enjoyTogetherShared;
- (BOOL)tasteTheStreetFood_enjoyThisWay;
- (BOOL)tasteTheStreetFood_letsFindLimitWay:(NSInteger)dateLimit;
- (UIInterfaceOrientationMask)tasteTheStreetFood_enjoyTogetherGetOrientation;
- (UIViewController *)tasteTheStreetFood_enjoyTogetherChangeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
