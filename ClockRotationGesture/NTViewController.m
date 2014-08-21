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
		
	}
	
	return self;
	
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    [super viewDidLoad];
	
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
	
	clockString = [[NTClockString alloc] init];
	
	clockString.delegate = self;

	self.clock_StartTime.clockString = clockString;
	
	[clockString setTimeString: @"AM 09:30"];
	
}

- (void)time: (NSString *)_string
{
	
	self.label_StartTime.text = _string;
	
}

@end
