//
//  MDPiece.m
//  Douradinho
//
//  Created by Everton on 02/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MDPiece.h"

#define kSizeDif 20

@implementation MDPiece

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	CGRect fra = self.frame;
	fra.origin.y -= kSizeDif/2.f;
	fra.origin.x -= kSizeDif/2.f;
	fra.size.height += kSizeDif;
	fra.size.width += kSizeDif;
	
	[self.superview bringSubviewToFront:self];
	
	[UIView beginAnimations:nil context:nil];
	self.frame = fra;
	self.alpha = 1.f;
	[UIView commitAnimations];
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
    CGPoint location = [aTouch locationInView:self.superview];
	
    [UIView beginAnimations:nil context:nil];
	self.center = location;
    [UIView commitAnimations];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
		
	CGRect fra = self.frame;
	fra.origin.y += kSizeDif/2.f;
	fra.origin.x += kSizeDif/2.f;
	fra.size.height -= kSizeDif;
	fra.size.width -= kSizeDif;
	
    [UIView beginAnimations:nil context:nil];
	self.frame = fra;
    [UIView commitAnimations];
	
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
