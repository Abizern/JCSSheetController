//
//  SheetController.h
//  JCSSheetController_Example
//
//  Created by Abizer Nasir on 19/02/2011.
//  Copyright 2011 Jungle Candy Software. All rights reserved.
//

enum {
    kSheetReturnedOk = 1,
    kSheetReturnedCancel = 2
};

#import <Cocoa/Cocoa.h>
#import "JCSSheetController.h"


@interface SheetController : JCSSheetController {
@private
    
    NSTextField *textField;
}
@property (nonatomic, assign) IBOutlet NSButton *okButton;
@property (nonatomic, assign) IBOutlet NSButton *cancelButton;
@property (nonatomic, assign) IBOutlet NSTextField *textField;

- (IBAction)okClicked:(id)sender;
- (IBAction)cancelClicked:(id)sender;

@end
