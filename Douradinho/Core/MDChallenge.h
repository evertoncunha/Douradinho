//
//  MDChallenge.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDQuestion.h"

typedef enum {
	MDChallengeDifficultyNone = 0,
	MDChallengeDifficultyEasy = 1,
	MDChallengeDifficultyMedium = 2,
	MDChallengeDifficultyHard = 3
	} MDChallengeDifficulty;

@interface MDChallenge : NSObject

@property (nonatomic, strong) NSMutableArray *questions;
@property (readwrite) MDChallengeDifficulty difficulty;
@end
