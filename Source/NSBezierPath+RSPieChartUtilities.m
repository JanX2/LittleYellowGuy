//
//  NSBezierPath+RSPieChartUtilities.m
//  LittleYellowGuy
//
//  Created by Daniel Jalkut on 11/10/06.
//  Copyright 2006 Red Sweater Software. All rights reserved.
//

#import "NSBezierPath+RSPieChartUtilities.h"


@implementation NSBezierPath (RSPieChartUtilities)

+ (NSBezierPath*) bezierPathForPieInRect:(NSRect)containerRect withWedgeRemovedFromStartingAngle:(float)startAngle toEndingAngle:(float)endAngle
{
	// Creating an arc by swapping the start and finish angles
	NSRect pieRect = NSInsetRect(containerRect, 1.0, 1.0);
	NSBezierPath* piePath = [NSBezierPath bezierPath];
	
	float pieRadius = NSWidth(pieRect) / 2.0;	// assume a square rect
	NSPoint centerPoint = NSMakePoint(NSMidX(pieRect), NSMidY(pieRect));
	[piePath appendBezierPathWithArcWithCenter:centerPoint radius:pieRadius startAngle:endAngle endAngle:startAngle];
	[piePath lineToPoint:centerPoint];
	[piePath closePath];
	return piePath;
}

@end
