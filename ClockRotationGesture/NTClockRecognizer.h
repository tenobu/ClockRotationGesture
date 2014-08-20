//
//  NTClockRecognizer.h
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/18.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NTClockRecognizerDelegate < NSObject >

@optional

- (void)amPm: (NSInteger)_angle;

@end

@interface NTClockRecognizer : NSObject
{
	
	id < NTClockRecognizerDelegate > target;
	
}

@property (nonatomic, assign) id < NTClockRecognizerDelegate > delegate;
@property (nonatomic, assign) id < NTClockRecognizerDelegate > myDelegate;

- (id)initWithTarget: (id)_target;

- (void)amPm: (NSInteger)_integer;

@end
