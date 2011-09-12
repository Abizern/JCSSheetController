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


@interface SheetController : JCSSheetController

@property (nonatomic, copy) NSString *editString;

- (IBAction)okClicked:(id)sender;
- (IBAction)cancelClicked:(id)sender;

@end
