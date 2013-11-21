//
//  PlayGameViewController.h
//  Douradinho
//
//  Created by Everton on 02/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDPiece.h"

@interface PlayGameViewController : UIViewController <MDPieceDelegate> {
	IBOutlet UIView *_countAreaView;
	IBOutlet UILabel *_countLabel;
	IBOutlet UILabel *_moveLabel;
}

- (BOOL)pieceIsInsideArea:(MDPiece*)piece;

- (void)refreshCount;

@end

