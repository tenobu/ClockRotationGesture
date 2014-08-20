//
//  NTViewController.m
//  ClockRotationGesture
//
//  Created by ビザンコムマック０９ on 2014/08/06.
//  Copyright (c) 2014年 ビザンコムマック０９. All rights reserved.
//

#import "NTViewController.h"

@interface NTViewController ()
{
	
@private
	
	NTClockString *clockString;
	
}

@end

@implementation NTViewController

- (id)initWithNibName: (NSString *)nibNameOrNil
			   bundle: (NSBundle *)nibBundleOrNil
{
    
	if ((self = [super initWithNibName: nibNameOrNil
								bundle: nibBundleOrNil]))
    {
        // Custom initialization
    
	}
    
	return self;

}

- (id)initWithCoder: (NSCoder *)decoder
{
    
	self = [super initWithCoder: decoder];
	
	if (self) {
		
		if ( ! self.view.subviews.count ) {
            
			UIView *subview = [[NSBundle mainBundle] loadNibNamed: NSStringFromClass( [self class] )
															owner: nil
														  options: nil] [0];
            
			subview.frame = self.view.bounds;
            
			[self.view addSubview: subview];
			
			NSArray *array = [subview subviews];
			
			self.clock_StartTime   = [array objectAtIndex: 0];
			
			clockString = [[NTClockString alloc] init];
			
			clockString.delegate = self;
			
			self.clock_StartTime.clockString = clockString;
			
		}
		
	}
	
	return self;
	
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    [super viewDidLoad];
	
	clockString = [[NTClockString alloc] init];
	
	clockString.delegate = self;

}

- (void)time: (NSString *)_string
{
	
	NSLog( @"Time = %@", _string );
	
	self.label_StartTime.text = _string;
	
}

@end
