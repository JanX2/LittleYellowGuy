//
//  NSBezierPath+RSPieChartUtilities.h
//  LittleYellowGuy
//
//  Created by Daniel Jalkut on 11/10/06.
//  Copyright 2006 Red Sweater Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface NSBezierPath (RSPieChartUtilities)

+ (NSBezierPath*) bezierPathForPieInRect:(NSRect)containerRect withWedgeRemovedFromStartingAngle:(float)startAngle toEndingAngle:(float)endAngle;

@end
