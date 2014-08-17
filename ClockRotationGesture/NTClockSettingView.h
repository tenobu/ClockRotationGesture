//
//  NTClockSettingView.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/07.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NTClockSetting.h"

@class NTClockPartView;
/*
@protocol NTClockSettingDelegate < NSObject >

@optional

- (void)timeNew;

- (void)delegateAmPm: (NSInteger)_am_pm;
- (void)delegateHour: (NSInteger)_hour;

@end
*/
@interface NTClockSettingView : UIView < NTClockSettingDelegate >

@property (weak, nonatomic) IBOutlet NTClockPartView *clockPart1View;
@property (weak, nonatomic) IBOutlet NTClockPartView *clockPart2View;

//@property (nonatomic, assign) id < NTClockSettingDelegate > delegate;

@property NSString *timeString;


@end
