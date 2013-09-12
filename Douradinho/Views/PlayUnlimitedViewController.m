//
//  PlayUnlimitedViewController.m
//  Douradinho
//
//  Created by Everton on 10/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "PlayUnlimitedViewController.h"

@interface PlayUnlimitedViewController ()

@end

@implementation PlayUnlimitedViewController

- (void)pieceStartedMoving:(MDPiece *)piece {
	if (![self pieceIsInsideArea:piece]) {
		DLog(@"created view");
		MDPiece *new = [[[piece class] alloc] init];
		new.startPoint = piece.startPoint;
		new.frame = piece.frame;
		new.delegate = self;
		new.image = piece.image;
		new.contentMode = piece.contentMode;
		new.userInteractionEnabled = YES;
		[self.view insertSubview:new belowSubview:piece];
		DLog(@"%@", new);
	}
}

- (void)piece:(MDPiece *)piece movedToLocation:(CGPoint)location {
	[super piece:piece movedToLocation:location];
	
	// remove same types of objects
	
	NSMutableArray *classes = [NSMutableArray array];
	
	NSString *class = nil;
    if (![self pieceIsInsideArea:piece]) {
        class = NSStringFromClass([piece class]);
        [classes addObject:class];
    }
	
	
	if (![super pieceIsInsideArea:piece]) {
		for (int i = 0; i < [self.view.subviews count]; i ++) {
			MDPiece *p = [self.view.subviews objectAtIndex:i];
			
			if (p != piece && [p isKindOfClass:[MDPiece class]] && ![self pieceIsInsideArea:p]) {
				
				class = NSStringFromClass([p class]);
				
				if ([classes containsObject:class]) {
					[p removeFromSuperview];
					DLog(@"reoved %@", p);
					i--;
				}
				else {
					[classes addObject:class];
				}
			}
			
		}
	}
	
}

- (BOOL)testForSameObjects {
	
	NSMutableArray *classes = [NSMutableArray array];
	
	for (int i = 0; i < [self.view.subviews count]; i ++) {
		MDPiece *p = [self.view.subviews objectAtIndex:i];
		
		if ([p isKindOfClass:[MDPiece class]]  && ![self pieceIsInsideArea:p]) {
			
			NSString *class = NSStringFromClass([p class]);
			
			if ([classes containsObject:class]) {
				return NO;
			}
			else {
				[classes addObject:class];
			}
		}
		
	}
	return YES;
}
@end
