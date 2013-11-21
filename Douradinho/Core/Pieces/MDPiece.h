//
//  MDPiece.h
//  Douradinho
//
//  Created by Everton on 02/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MDPiece;

@protocol MDPieceDelegate <NSObject>
- (void)piece:(MDPiece*)piece movedToLocation:(CGPoint)location;
@optional
- (void)pieceStartedMoving:(MDPiece*)piece;
@end

@interface MDPiece : UIImageView {
	CGPoint _offset;
}
@property (nonatomic) IBOutlet id<MDPieceDelegate> delegate;
@property (readonly) int value;
@property (readwrite) CGPoint startPoint;
- (void)resetLocation;
@end



