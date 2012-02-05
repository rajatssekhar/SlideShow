//
//  SimpleSlidesViewController.m
//  SimpleSlides
//
//  Created by Raja on 1/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimpleSlidesViewController.h"

@implementation SimpleSlidesViewController

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	imageArray = [[NSArray alloc] initWithObjects:@"image1.jpg",@"image2.jpg",@"image3.jpg",@"image4.jpg",@"image5.jpg",nil];
	imageIndex = 0;
	imageHolder.image = [UIImage imageNamed:[imageArray objectAtIndex:imageIndex]];
	[self.view addSubview:imageHolder];
	[lblImageName setText:[imageArray objectAtIndex:imageIndex]];
    [super viewDidLoad];
}

- (IBAction) loadPreviousImage {
	imageIndex++;
	if (imageIndex > 4) {
		imageIndex = 4;
	}
	imageHolder.image = [UIImage imageNamed:[imageArray objectAtIndex:imageIndex]];
	[lblImageName setText:[imageArray objectAtIndex:imageIndex]];
}

- (IBAction) loadNextImage {
	imageIndex--;
	if (imageIndex < 0) {
		imageIndex = 0;
	}
	imageHolder.image = [UIImage imageNamed:[imageArray objectAtIndex:imageIndex]];
	[lblImageName setText:[imageArray objectAtIndex:imageIndex]];
}

- (IBAction) changeImageSize {
	int size = [slider value];
	xpos = 60 + (200 - size) / 2;
	ypos =  20 + (200 - size) / 2;
	imageHolder.frame = CGRectMake(xpos,ypos , size, size);
}

/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[slider release];
	[imageHolder release];
	[lblImageName release];
	[imageArray release];
    [super dealloc];
}

@end
