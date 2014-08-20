//
//  NTClockView.m
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/18.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import "NTClockView.h"

#import "NTClockAmPmView.h"
#import "NTClockHourView.h"
#import "NTClockMinuteView.h"
#import "NTClockRecognizer.h"

@interface NTClockView ()
{
	
@private NTClockRecognizer *clockRecognizer;
		
}

@end

@implementation NTClockView

- (id)initWithFrame: (CGRect)frame
{
    
	self = [super initWithFrame: frame];
	
    if (self) {
		
	}
    
	return self;
	
}

- (id)initWithCoder: (NSCoder *)decoder
{
    
	self = [super initWithCoder: decoder];
	
	if (self) {
		
		if ( ! self.subviews.count ) {
            
			UIView *subview = [[NSBundle mainBundle] loadNibNamed: NSStringFromClass( [self class] )
															owner: nil
														  options: nil] [0];
            
			subview.frame = self.bounds;
            
			[self addSubview: subview];
			
			NSArray *array = [subview subviews];
			
			self.amPmView   = [array objectAtIndex: 0];
			self.minuteView = [array objectAtIndex: 1];
			self.hourView   = [array objectAtIndex: 2];
			
			clockRecognizer = [[NTClockRecognizer alloc] initWithTarget: self];

			clockRecognizer.myDelegate = self;
			
			self.amPmView.clockRecognizer   = clockRecognizer;
			self.minuteView.clockRecognizer = clockRecognizer;
			self.hourView.clockRecognizer   = clockRecognizer;
			
		}
		
	}
	
	return self;
	
}

- (void)amPm: (NSInteger)_integer
{
	
	NSLog( @"AM PM = %ld", _integer );

	NSString *_am_pm = @"AM";
	if ( _integer == 2 ) {
		
		_am_pm = @"PM";

	}
	
	self.stringTime =
	
}

@end
