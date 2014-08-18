//
//  NTClockView.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/18.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NTClockAmPmView;
@class NTClockMinuteView;

@interface NTClockView : UIView

@property (weak, nonatomic) IBOutlet NTClockAmPmView   *amPmView;
@property (weak, nonatomic) IBOutlet NTClockMinuteView *minuteView;

@end
