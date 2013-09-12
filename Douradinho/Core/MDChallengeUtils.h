//
//  MDChallengeUtils.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MDChallenge.h"

@interface MDChallengeUtils : NSObject

+ (MDChallengeDifficulty)nextDifficultyAfterDifficulty:(MDChallengeDifficulty)difficulty;

+ (NSString*)localizedStringForDifficulty:(MDChallengeDifficulty)difficulty;

@end
