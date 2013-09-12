//
//  MDChallengesGenerator.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDChallenge.h"

@interface MDChallengeGenerator : NSObject

+ (MDChallenge*)challengeWithDifficulty:(MDChallengeDifficulty)difficulty;


@end
