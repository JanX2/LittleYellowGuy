//
//  LittleYellowGuyDelegate.m
//  LittleYellowGuy
//
//  Created by Daniel Jalkut on 11/10/06.
//  Copyright Red Sweater Software 2006. All rights reserved.
//

#import "LittleYellowGuyDelegate.h"
#import "NSImage+RSLittleYellowGuy.h"

@implementation LittleYellowGuyDelegate

// Expose the little yellow guy's image through a bindable attribute
- (NSImage*) littleYellowGuyImage
{
	NSImage* ygImage = [NSImage imageWithLittleYellowGuy];
	return ygImage;
}

- (void)windowDidResize:(NSNotification *)notification
{
#pragma unused (notification)
}

@end
