//
//  NTClockAmPmView.m
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/17.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import "NTClockAmPmView.h"

@interface NTClockAmPmView ()
{
	
@private CGFloat imageAngle;
@private NTClockGestureRecognizer *gestureRecognizer;
	
}

@end

@implementation NTClockAmPmView

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
			
			self.amPm_ImageView   = [array objectAtIndex: 1];
			self.amPm_ImageView.frame = subview.frame;
			
			imageAngle = 0;
			
			gestureRecognizer = [[NTClockGestureRecognizer alloc] initWithRect: self.amPm_ImageView.frame
																		target: self];
			
			[self addGestureRecognizer: gestureRecognizer];
			
		}
		
	}
	
	return self;
	
}

- (void) rotation: (CGFloat) angle
{
    
    imageAngle += angle;
    
	if (imageAngle > 360) {
		
		imageAngle -= 360;
		
	} else if (imageAngle < -360) {
		
		imageAngle += 360;
		
	}
	
    self.amPm_ImageView.transform = CGAffineTransformMakeRotation( imageAngle *  M_PI / 180 );
	
}

@end
