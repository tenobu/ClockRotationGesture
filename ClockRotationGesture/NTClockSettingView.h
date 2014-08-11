//
//  NTClockSettingView.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/07.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <UIKit/UIKit.h>

#include "NTClockGestureRecognizer.h"

@interface NTClockSettingView : UIView < NTClockGestureRecognizerDelegate >

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property NSString *timeString;

@end
