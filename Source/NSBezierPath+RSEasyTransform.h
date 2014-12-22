//
//  NSBezierPath+RSEasyTransform.h
//  FlexTime
//
//  Created by Daniel Jalkut on 11/4/06.
//  Copyright 2006 Red Sweater Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface NSBezierPath (RSEasyTransform)

- (void) transformScalingXBy:(float)scaleX yBy:(float)scaleY;
- (void) transformTranslatingXBy:(float)translateX yBy:(float)translateY;
- (void) transformRotatingByDegrees:(float)degrees;

@end
