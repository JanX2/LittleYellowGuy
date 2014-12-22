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
	[ygImage setScalesWhenResized:YES];
	return ygImage;
}

- (void)windowDidResize:(NSNotification *)notification
{
#pragma unused (notification)
	// There is a shortcoming with NSImage or  NSImageView that causes it not to resize the 
	// underlying image properly before drawing it.  It only redraws correctly
	// after hiding and reshowing the window. We'll force it to get pretty
	// by explicitly setting its size here.
	[[oLittleGuyImageView image] setSize:[oLittleGuyImageView bounds].size];
}

@end
