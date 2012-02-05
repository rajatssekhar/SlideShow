//
//  SimpleSlidesViewController.h
//  SimpleSlides
//
//  Created by Raja on 1/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleSlidesViewController : UIViewController {

	IBOutlet UISlider *slider;
	IBOutlet UIImageView *imageHolder;
	IBOutlet UILabel *lblImageName;
	NSArray *imageArray;
	int imageIndex;
	int xpos;
	int ypos;
}

- (IBAction) loadPreviousImage;
- (IBAction) loadNextImage;
- (IBAction) changeImageSize;

@end

