//
//  JCSSheetController.m
//
//  Created by Abizer Nasir on 19/02/11.
//  Based on the SDSheetController by Steven Degutis
// 

#import "JCSSheetController.h"

@interface JCSSheetController ()
- (void)sheetDidEnd:(NSWindow *)sheet returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo;
@end

@implementation JCSSheetController

@synthesize handler;

- (void)beginSheetModalForWindow:(NSWindow *)window completionHandler:(JCSCompletionHandler)aHandler {
    self.handler = aHandler;
    
    NSWindow *sheetWindow = [self window];
    
    [self sheetWillDisplay];
    
    [NSApp beginSheet:sheetWindow modalForWindow:window modalDelegate:self didEndSelector:@selector(sheetDidEnd:returnCode:contextInfo:) contextInfo:NULL];
}

- (void)endSheetWithReturnCode:(NSInteger)result {
    [NSApp endSheet:[self window] returnCode:result];
}

- (void)sheetWillDisplay {
    // Default does nothing.
    // Convenience for subclasses to override.
}

// Mark: -
// Mark: Class Extension methods

- (void)sheetDidEnd:(NSWindow *)sheet returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo {
    [sheet orderOut:self];
    
    if (self.handler) {
        handler(returnCode);
    }
}

@end