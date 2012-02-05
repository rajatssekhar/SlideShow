//
//  SimpleSlidesAppDelegate.h
//  SimpleSlides
//
//  Created by Raja on 1/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleSlidesViewController;

@interface SimpleSlidesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleSlidesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleSlidesViewController *viewController;

@end

