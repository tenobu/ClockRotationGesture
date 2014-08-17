//
//  NTClockSettingView.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/07.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NTClockPartView;

@interface NTClockSettingView : UIView

@property (weak, nonatomic) IBOutlet NTClockPartView *clockPart1View;
@property (weak, nonatomic) IBOutlet NTClockPartView *clockPart2View;

@property NSString *timeString;

@end
