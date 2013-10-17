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
		MDPiece *new = [[[piece class] alloc] init];
		new.startPoint = piece.startPoint;
		new.frame = piece.frame;
		new.delegate = self;
		new.image = piece.image;
		new.contentMode = piece.contentMode;
		new.userInteractionEnabled = YES;
		new.alpha = 0.8f;
		[piece.superview insertSubview:new atIndex:0];
		DLog(@"%@", new);
	}
}

- (void)piece:(MDPiece *)piece movedToLocation:(CGPoint)location {
	[super piece:piece movedToLocation:location];
	
	// remove same types of objects
	
	[self performSelector:@selector(removeSameTypesOfPiece:) withObject:piece afterDelay:0.2f];
	
}

- (void)removeSameTypesOfPiece:(MDPiece*)piece {
	if (![super pieceIsInsideArea:piece]) {
		NSMutableArray *classes = [NSMutableArray array];
		
		NSString *class = nil;
		
		class = NSStringFromClass([piece class]);
        [classes addObject:class];
		
		for (int i = 0; i < [self.view.subviews count]; i ++) {
			MDPiece *p = [self.view.subviews objectAtIndex:i];
			
			if (p != piece && [p isKindOfClass:[MDPiece class]] && ![self pieceIsInsideArea:p]) {
				
				class = NSStringFromClass([p class]);
				
				if ([classes containsObject:class]) {
					[p removeFromSuperview];
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
