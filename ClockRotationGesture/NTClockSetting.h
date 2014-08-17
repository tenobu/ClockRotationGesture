//
//  NTClockSetting.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/17.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NTClockSettingDelegate < NSObject >

@optional

- (void)timeNew;

- (void)delegateAmPm: (NSInteger)_am_pm;
- (void)delegateHour: (NSInteger)_hour;

@end

@interface NTClockSetting : NSObject

@property (nonatomic, assign) id < NTClockSettingDelegate > delegate;

@end
