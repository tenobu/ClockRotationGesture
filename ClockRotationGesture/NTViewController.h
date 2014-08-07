//
//  NTViewController.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/06.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NTClockGestureRecognizer.h"

@interface NTViewController : UIViewController < NTClockGestureRecognizerDelegate >

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end
