//
//  JCSSheetController_ExampleAppDelegate.m
//  JCSSheetController_Example
//
//  Created by Abizer Nasir on 19/02/2011.
//  Copyright 2011 Jungle Candy Software. All rights reserved.
//

static NSString * const kInitialString = @"Initial text";

#import "AppDelegate.h"
#import "SheetController.h"

@implementation AppDelegate

@synthesize sheetController;
@synthesize window;
@synthesize label;
@synthesize button;
@synthesize displayString;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.displayString = kInitialString;
    self.sheetController = [[SheetController alloc] init];
}

- (void)showSheet:(id)sender {
    NSLog(@"Button clicked");
    
    self.sheetController.editString = self.displayString;
    [sheetController beginSheetModalForWindow:self.window completionHandler:^(NSUInteger returnCode) {
        if (returnCode == kSheetReturnedOk) {
            self.displayString = sheetController.editString;
        } else if (returnCode == kSheetReturnedCancel) {
            NSLog(@"text change cancelled");
        } else {
            self.displayString = @"Oops!";
        }
    }];
    
}

@end
