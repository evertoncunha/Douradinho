//
//  MDChallengeUtils.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MDChallengeUtils.h"

@implementation MDChallengeUtils

+ (MDChallengeDifficulty)nextDifficultyAfterDifficulty:(MDChallengeDifficulty)difficulty {
	switch (difficulty) {
		case MDChallengeDifficultyEasy:
			return MDChallengeDifficultyMedium;
		case MDChallengeDifficultyMedium:
			return MDChallengeDifficultyHard;
		default:
			break;
	}
	return MDChallengeDifficultyNone;
}

+ (NSString *)localizedStringForDifficulty:(MDChallengeDifficulty)difficulty {
	switch (difficulty) {
		case MDChallengeDifficultyEasy:
			return NSLocalizedString(@"Fácil", nil);
		case MDChallengeDifficultyMedium:
			return NSLocalizedString(@"Médio", nil);
		case MDChallengeDifficultyHard:
			return NSLocalizedString(@"Difícil", nil);
		default:
			break;
	}
	return nil;
}
@end
