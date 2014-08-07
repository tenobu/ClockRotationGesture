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
	
@private CGFloat imageAngle;
@private NTClockGestureRecognizer *gestureRecognizer;

}

@end

@implementation NTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
	if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
    {
        // Custom initialization
    
		imageAngle = 0;
    
	}
    
	return self;

}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    [super viewDidLoad];
	
    gestureRecognizer = [[NTClockGestureRecognizer alloc] initWithRect: self.imageView.frame
																target: self];
    
	[self.view addGestureRecognizer: gestureRecognizer];

	[self updateTextDisplay];

}

- (void) rotation: (CGFloat) angle
{

    // calculate rotation angle
    imageAngle += angle;
    if (imageAngle > 360)
        imageAngle -= 360;
    else if (imageAngle < -360)
        imageAngle += 360;
    
    // rotate image and update text field
    self.imageView.transform = CGAffineTransformMakeRotation(imageAngle *  M_PI / 180);
    
	[self updateTextDisplay];

}

- (void) finalAngle: (CGFloat) angle
{

    // circular gesture ended, update text field
    [self updateTextDisplay];

}

#pragma mark - Helper methods

// Updates the text field with the current rotation angle.
- (void) updateTextDisplay
{

    self.label.text = [NSString stringWithFormat: @"\u03b1 = %.2f", imageAngle];

}

@end
