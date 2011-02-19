//
//  JCSSheetController_ExampleAppDelegate.m
//  JCSSheetController_Example
//
//  Created by Abizer Nasir on 19/02/2011.
//  Copyright 2011 Jungle Candy Software. All rights reserved.
//

static NSString * const kInitialString = @"App started";
static NSString * const kOkString = @"Ok button";
static NSString * const kCancelString = @"Cancel button";

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;
@synthesize label;
@synthesize button;
@synthesize displayString;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.displayString = kInitialString;
}

- (void)showSheet:(id)sender {
    NSLog(@"Button clicked");
}

@end
