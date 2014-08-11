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
	
@private CGFloat hour_ImageAngle, minute_ImageAngle;
@private NTClockGestureRecognizer *hour_GestureRecognizer, *minute_GestureRecognizer;

}

@end

@implementation NTClockSettingView

- (id)initWithFrame: (CGRect)frame
{
    
	self = [super initWithFrame:frame];
	
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
			
			self.hour_ImageView   = [array objectAtIndex: 0];
			self.minute_ImageView = [array objectAtIndex: 1];
			
			hour_ImageAngle = minute_ImageAngle = 0;
			
			hour_GestureRecognizer = [[NTClockGestureRecognizer alloc] initWithRect: self.hour_ImageView.frame
																			 target: self];
			
			[self addGestureRecognizer: hour_GestureRecognizer];
			
			minute_GestureRecognizer = [[NTClockGestureRecognizer alloc] initWithRect: self.minute_ImageView.frame
																			   target: self];
			
			[self addGestureRecognizer: minute_GestureRecognizer];

		}
		
	}
	
	return self;
	
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) rotation: (CGFloat) angle
{
    
	// calculate rotation angle
    hour_ImageAngle += angle;
    
	if (hour_ImageAngle > 360) {
    
		hour_ImageAngle -= 360;
    
	} else if (hour_ImageAngle < -360) {
    
		hour_ImageAngle += 360;
    
	}
	
    // rotate image and update text field
    self.hour_ImageView.transform = CGAffineTransformMakeRotation( hour_ImageAngle *  M_PI / 180 );

}

@end
