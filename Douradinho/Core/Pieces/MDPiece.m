//
//  MDPiece.m
//  Douradinho
//
//  Created by Everton on 02/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MDPiece.h"

#define kSizeDif 0

@implementation MDPiece

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	if ([self.delegate respondsToSelector:@selector(pieceStartedMoving:)]) {
		[self.delegate pieceStartedMoving:self];
	}
	
	UITouch *aTouch = [touches anyObject];
	
    _offset = [aTouch locationInView: self];
	
	[self.superview bringSubviewToFront:self];
	
	[UIView beginAnimations:nil context:nil];
	self.alpha = 1.f;
	[UIView commitAnimations];
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
    CGPoint location = [aTouch locationInView:self.superview];
    [UIView beginAnimations:nil context:nil];
    self.frame = CGRectMake(location.x-_offset.x, location.y-_offset.y,
							self.frame.size.width, self.frame.size.height);
    [UIView commitAnimations];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	[self.delegate piece:self movedToLocation:self.center];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	[self touchesEnded:touches withEvent:event];
}

- (void)resetLocation {
	CGRect fra = self.frame;
	fra.origin = _startPoint;
	
	[UIView beginAnimations:nil context:nil];
	self.frame = fra;
	self.alpha = 0.8f;
	[UIView commitAnimations];
}

- (void)awakeFromNib {
	[super awakeFromNib];
	
	_startPoint = self.frameOrigin;
}

- (int)value {
	assert(NO);
	return 0;
}

@end
