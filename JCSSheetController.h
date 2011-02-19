//
//  JCSSheetController.h
//  
//  Created by Abizer Nasir on 19/02/11.
//  Based on the SDSheetController by Steven Degutis
// 
//  Requires Garbage Collection to be turned on.
//  

#import <Cocoa/Cocoa.h>

typedef void (^JCSCompletionHandler)(NSInteger result);

@interface JCSSheetController : NSWindowController {
@private
    JCSCompletionHandler handler;
}
@property (nonatomic, copy) JCSCompletionHandler handler;

- (void)beginSheetModalForWindow:(NSWindow *)window completionHandler:(JCSCompletionHandler)aHandler;

// Convenience methods for subclasses to use
- (void)endSheetWithReturnCode:(NSInteger)result;
- (void)sheetWillDisplay; // Default does nothing

@end
