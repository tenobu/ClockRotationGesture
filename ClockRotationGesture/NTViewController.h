//
//  NTViewController.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/06.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NTClockString.h"
#import "NTClockView.h"

@interface NTViewController : UIViewController < NTClockStringDelegate >

@property (weak, nonatomic) IBOutlet UILabel *label_StartTime;
@property (weak, nonatomic) IBOutlet NTClockView *clock_StartTime;

@end
