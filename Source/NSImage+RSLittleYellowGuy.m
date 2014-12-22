//
//  NSImage+RSLittleYellowGuy.m
//  FlexTime
//
//  Created by Daniel Jalkut on 11/10/06.
//  Copyright 2006 Red Sweater Software. All rights reserved.
//

#import "NSImage+RSLittleYellowGuy.h"
#import "NSBezierPath+RSEasyTransform.h"
#import "NSBezierPath+RSPieChartUtilities.h"

@implementation NSImage (RSLittleYellowGuy)

+ (NSImage*) imageWithLittleYellowGuy
{
	// Alloc and init an empty image. The size doesn't matter, but it has to be non-zero to 
	// end up getting drawn... Might as well match out pixel-ish assumptions in drawLittleYellowGuy:
	NSRect guyRect = NSMakeRect(0,0,34.0,34.0);
	NSImage* newImage = [[self alloc] initWithSize:guyRect.size];
	[newImage setScalesWhenResized:YES];
 
	// Attach a custom drawing representation
	NSCustomImageRep* guyRep = [[NSCustomImageRep alloc] initWithDrawSelector:@selector(drawLittleYellowGuy:) delegate:self];
	[guyRep setSize:guyRect.size];
	[newImage addRepresentation:guyRep];
	[guyRep release];
	return [newImage autorelease];
}

+ (void) drawLittleYellowGuy:(NSCustomImageRep*)myImageRep
{
	// We tested this and fine-tuned it by drawing to a 34x34 space, so let's just 
	// scale the context to suit that size.
	float xScale = 34 / [myImageRep size].width;
	float yScale = 34 / [myImageRep size].height;
	[[NSGraphicsContext currentContext] saveGraphicsState];
	NSAffineTransform* scaleTransform = [NSAffineTransform transform];
	[scaleTransform scaleXBy:xScale yBy:yScale];
	[scaleTransform concat];
	
	// Get some room to work with so we don't overrun the borders
	NSRect targetRect = NSMakeRect(0, 0, 34.0, 34.0);
	targetRect = NSInsetRect(targetRect, 2.0, 2.0);

	// Give him around 60 degrees of mouth
	NSBezierPath* guyOutline = [NSBezierPath bezierPathForPieInRect:targetRect withWedgeRemovedFromStartingAngle:-25.0 toEndingAngle:35.0];

	// Offset a shadow by filling with a pinkish color
	[guyOutline transformTranslatingXBy:1.0 yBy:-2.0];
	[[[NSColor redColor] blendedColorWithFraction:0.3 ofColor:[NSColor whiteColor]] set];
	[guyOutline fill];
	[guyOutline transformTranslatingXBy:-1.0 yBy:2.0];

	// Fill the yellow
	[[NSColor yellowColor] set];
	[guyOutline fill];

	// Stroke with black outline
	[guyOutline setLineWidth:2.0];	
	[[NSColor blackColor] set];
	[guyOutline stroke];
	
	// Give him some eyes, which are just stretch pies themselves
	[[NSColor blackColor] set];
	[guyOutline transformScalingXBy:0.1 yBy:0.2];
	[guyOutline transformTranslatingXBy:18.0 yBy:22.0];	
	[guyOutline fill];

	// Move over a bit for the second eye
	[guyOutline transformTranslatingXBy:-3.0 yBy:0.0];

	// Now move the origin to the center of the eye and rotate it
	NSRect eyeBounds = [guyOutline bounds];
	NSAffineTransform* centerRotateTransform = [NSAffineTransform transform];
	[centerRotateTransform translateXBy:NSMidX(eyeBounds) yBy:NSMidY(eyeBounds)];
	[centerRotateTransform rotateByDegrees:180.0];
	[centerRotateTransform translateXBy:-NSMidX(eyeBounds) yBy:-NSMidY(eyeBounds)];	
	[centerRotateTransform concat];
	[guyOutline fill];		

	// Clean up the coordinate system - although not technically necessary because we're all done
	[centerRotateTransform invert];
	[centerRotateTransform concat];

	[[NSGraphicsContext currentContext] restoreGraphicsState];
}

@end
