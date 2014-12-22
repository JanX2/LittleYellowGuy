//
//  NSBezierPath+RSEasyTransform.h
//  FlexTime
//
//  Created by Daniel Jalkut on 11/4/06.
//  Copyright 2006 Red Sweater Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface NSBezierPath (RSEasyTransform)

- (void) transformScalingXBy:(CGFloat)scaleX yBy:(CGFloat)scaleY;
- (void) transformTranslatingXBy:(CGFloat)translateX yBy:(CGFloat)translateY;
- (void) transformRotatingByDegrees:(CGFloat)degrees;

@end
