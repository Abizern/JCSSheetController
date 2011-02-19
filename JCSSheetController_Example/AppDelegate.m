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
#import "SheetController.h"

@implementation AppDelegate

@synthesize sheetController;
@synthesize window;
@synthesize label;
@synthesize button;
@synthesize displayString;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.displayString = kInitialString;
    self.sheetController = [[SheetController alloc] init];
}

- (void)showSheet:(id)sender {
    NSLog(@"Button clicked");
    [sheetController beginSheetModalForWindow:self.window completionHandler:^(NSInteger returnCode) {
        if (returnCode == kSheetReturnedOk) {
            self.displayString = kOkString;
        } else if (returnCode == kSheetReturnedCancel) {
            self.displayString = kCancelString;
        } else {
            self.displayString = @"Oops!";
        }
    }];
    
}

@end
