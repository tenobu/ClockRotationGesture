//
//  NTClockSettingView.m
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/07.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import "NTClockSettingView.h"

@interface NTClockSettingView ()
{
	
}

@end

@implementation NTClockSettingView

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
			
			self.clockPart1View   = [array objectAtIndex: 0];
			self.clockPart2View   = [array objectAtIndex: 1];
			
			/*gestureRecognizer = [[NTClockGestureRecognizer alloc] initWithRect: self.imageView.frame
																		target: self];
			
			[self addGestureRecognizer: gestureRecognizer];*/

			NTClockSetting *clockSetting = [[NTClockSetting alloc] init];
			
			clockSetting.delegate = self;
			
		}
		
	}
	
	return self;
	
}

- (void)delegateAmPm:(NSInteger)_am_pm
{
	
	NSLog( @"%@", [NSString stringWithFormat: @"%ld", _am_pm] );
	
}

- (void)delegateHour:(NSInteger)_hour
{
	
	NSLog( @"%@", [NSString stringWithFormat: @"%ld", _hour] );
	
}

/*- (void) rotation: (CGFloat) angle
{
    
    imageAngle += angle;
    
	if (imageAngle > 360) {
    
		imageAngle -= 360;
    
	} else if (imageAngle < -360) {
    
		imageAngle += 360;
    
	}
	
    self.imageView.transform = CGAffineTransformMakeRotation( imageAngle *  M_PI / 180 );

}*/

@end
