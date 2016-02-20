//
//  AppDelegate.m
//  BBCRadioPlayer
//
//  Created by Nicolas Dowell on 2016-02-20.
//  Copyright © 2016 Nick Dowell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidBecomeActive:(NSNotification *)notification {
    NSWindow *window = [NSApplication sharedApplication].windows.firstObject;
    [window.windowController showWindow:self];
}

@end
