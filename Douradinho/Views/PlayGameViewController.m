//
//  PlayGameViewController.m
//  Douradinho
//
//  Created by Everton on 02/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "PlayGameViewController.h"
#import "KGNoise.h"

@interface PlayGameViewController ()

@end

@implementation PlayGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	KGNoiseLinearGradientView *view = (id)self.view;
	
	view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg-pattern"]];
	view.alternateBackgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg-pattern"]];
	
	
	view = [_countAreaView.subviews firstObject];
	view.backgroundColor = [UIColor whiteColor];
	view.alternateBackgroundColor = UIColorFromRGB(0xf0efda);
	
	[self refreshCount];
	
//	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg-pattern"]];
}

- (void)piece:(MDPiece *)piece movedToLocation:(CGPoint)location {
	if ([self pieceIsInsideArea:piece])
		 {
		// dentro
			 
	}
	else {
		// fora
		
		[piece resetLocation];
	}
	
	[self refreshCount];
}

- (BOOL)pieceIsInsideArea:(MDPiece*)piece {
	return piece.frameX > _countAreaView.frameX && piece.frameY > _countAreaView.frameY
	&& piece.frameX+piece.frameWidth < _countAreaView.frameWidth + _countAreaView.frameX && piece.frameY + piece.frameHeight < _countAreaView.frameHeight + _countAreaView.frameY;
}

- (void)refreshCount {
	int val = 0;
	for (MDPiece *piece in self.view.subviews) {
		if ([piece isKindOfClass:[MDPiece class]]) {
			if ([self pieceIsInsideArea:piece]) {
				val += piece.value;
			}
		}
	}
	_countLabel.text = fstr(@"%d", val);
}
@end
