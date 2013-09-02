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

@end

@interface MDPiece : UIImageView {
	CGPoint _startPoint;
}

@property (nonatomic) IBOutlet id<MDPieceDelegate> delegate;

@property (readonly) int value;

- (void)resetLocation;
@end
