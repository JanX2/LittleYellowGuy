//
//  NSBezierPath+RSEasyTransform.m
//  FlexTime
//
//  Created by Daniel Jalkut on 11/4/06.
//  Copyright 2006 Red Sweater Software. All rights reserved.
//

#import "NSBezierPath+RSEasyTransform.h"

@implementation NSBezierPath (RSEasyTransform)

- (void) transformScalingXBy:(float)scaleX yBy:(float)scaleY
{
	NSAffineTransform* theTransform = [NSAffineTransform transform];
	[theTransform scaleXBy:scaleX yBy:scaleY];
	[self transformUsingAffineTransform:theTransform];
}

- (void) transformTranslatingXBy:(float)translateX yBy:(float)translateY
{
	NSAffineTransform* theTransform = [NSAffineTransform transform];
	[theTransform translateXBy:translateX yBy:translateY];
	[self transformUsingAffineTransform:theTransform];
}

- (void) transformRotatingByDegrees:(float)degrees
{
	NSAffineTransform* theTransform = [NSAffineTransform transform];
	[theTransform rotateByDegrees:degrees];
	[self transformUsingAffineTransform:theTransform];
}

@end
