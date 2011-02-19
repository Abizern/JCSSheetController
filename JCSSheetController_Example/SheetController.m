//
//  SheetController.m
//  JCSSheetController_Example
//
//  Created by Abizer Nasir on 19/02/2011.
//  Copyright 2011 Jungle Candy Software. All rights reserved.
//

#import "SheetController.h"


@implementation SheetController
@synthesize okButton;
@synthesize cancelButton;

- (id)init {
    if (!(self == [super initWithWindowNibName:@"ExampleSheet"])) {
        return nil; // Bail!
    }
    return self;
}
- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

// Mark: -
// Mark: Action methods

- (void)okClicked:(id)sender {
    [self endSheetWithReturnCode:kSheetReturnedOk];
}

- (void)cancelClicked:(id)sender {
    [self endSheetWithReturnCode:kSheetReturnedCancel];
}

// Mark: -
// Mark: Superclass overrides

- (void)sheetWillDisplay {
    NSLog(@"ExampleSheet will display");
}

@end
