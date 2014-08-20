//
//  NTClockRecognizer.m
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/18.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import "NTClockRecognizer.h"

@implementation NTClockRecognizer

- (id)initWithTarget: (id)_target
{
	
	if ( self = [super init] ) {
		
		target = _target;
		self.delegate = _target;
		
	}
	
	return self;
	
}

- (void)amPm: (NSInteger)_integer
{
	
	if ( [self.myDelegate respondsToSelector: @selector(amPm:)] ) {

        [self.myDelegate amPm: _integer];
		
    }

}

@end
