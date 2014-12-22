//
//  LittleYellowGuyDelegate.h
//  LittleYellowGuy
//
//  Created by Daniel Jalkut on 11/10/06.
//  Copyright Red Sweater Software 2006. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface LittleYellowGuyDelegate : NSObject
{
	IBOutlet NSImageView* oLittleGuyImageView;
}

@property (nonatomic, readonly, copy) NSImage *littleYellowGuyImage;

@end
