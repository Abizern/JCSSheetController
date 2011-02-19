//
//  JCSSheetController_ExampleAppDelegate.h
//  JCSSheetController_Example
//
//  Created by Abizer Nasir on 19/02/2011.
//  Copyright 2011 Jungle Candy Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class SheetController;

@interface AppDelegate : NSObject <NSApplicationDelegate> {
@private
    
}

@property (nonatomic, retain) SheetController *sheetController;
@property (nonatomic, assign) IBOutlet NSWindow *window;
@property (nonatomic, assign) IBOutlet NSTextField *label;
@property (nonatomic, assign) IBOutlet NSButton *button;
@property (nonatomic, copy) NSString *displayString;


- (IBAction)showSheet:(id)sender;

@end
