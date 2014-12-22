//
//  NSBezierPath+RSEasyTransform.m
//  FlexTime
//
//  Created by Daniel Jalkut on 11/4/06.
//  Copyright 2006 Red Sweater Software. All rights reserved.
//

#import "NSBezierPath+RSEasyTransform.h"

@implementation NSBezierPath (RSEasyTransform)

- (void) transformScalingXBy:(CGFloat)scaleX yBy:(CGFloat)scaleY
{
	NSAffineTransform* theTransform = [NSAffineTransform transform];
	[theTransform scaleXBy:scaleX yBy:scaleY];
	[self transformUsingAffineTransform:theTransform];
}

- (void) transformTranslatingXBy:(CGFloat)translateX yBy:(CGFloat)translateY
{
	NSAffineTransform* theTransform = [NSAffineTransform transform];
	[theTransform translateXBy:translateX yBy:translateY];
	[self transformUsingAffineTransform:theTransform];
}

- (void) transformRotatingByDegrees:(CGFloat)degrees
{
	NSAffineTransform* theTransform = [NSAffineTransform transform];
	[theTransform rotateByDegrees:degrees];
	[self transformUsingAffineTransform:theTransform];
}

@end
