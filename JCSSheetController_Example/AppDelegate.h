//
//  JCSSheetController_ExampleAppDelegate.h
//  JCSSheetController_Example
//
//  Created by Abizer Nasir on 19/02/2011.
//  Copyright 2011 Jungle Candy Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class SheetController;

@interface AppDelegate : NSObject <NSApplicationDelegate> 

@property (nonatomic, strong) SheetController *sheetController;
@property (nonatomic, unsafe_unretained) IBOutlet NSWindow *window;
@property (nonatomic, weak) IBOutlet NSTextField *label;
@property (nonatomic, weak) IBOutlet NSButton *button;
@property (nonatomic, copy) NSString *displayString;

- (IBAction)showSheet:(id)sender;

@end
