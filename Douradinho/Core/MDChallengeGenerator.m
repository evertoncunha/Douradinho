//
//  MDChallengesGenerator.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MDChallengeGenerator.h"

@implementation MDChallengeGenerator

+ (MDChallenge *)challengeWithDifficulty:(MDChallengeDifficulty)difficulty {
	
	switch (difficulty) {
		case MDChallengeDifficultyMedium:
			return [self mediumChallenge];
		case MDChallengeDifficultyHard:
			return [self hardChallenge];
		default:
			break;
	}
	
	return [self easyChallenge];
}

+ (MDChallenge*)easyChallenge {
	MDChallenge *challenge = [[MDChallenge alloc] init];
	challenge.difficulty = MDChallengeDifficultyEasy;
	
	MDQuestion *q1 = [[MDQuestion alloc] init];
	q1.question = @"Quanto é 5 + 7?";
	q1.answer = 12;
	
	MDQuestion *q2 = [[MDQuestion alloc] init];
	q2.question = @"Quanto é 10 + 11?";
	q2.answer = 21;
	
	[challenge.questions addObjectsFromArray:@[q1,q2]];
	return challenge;
}

+ (MDChallenge*)mediumChallenge {
	MDChallenge *challenge = [[MDChallenge alloc] init];
	challenge.difficulty = MDChallengeDifficultyMedium;
	
	MDQuestion *q1 = [[MDQuestion alloc] init];
	q1.question = @"Quanto é 45 - 17?";
	q1.answer = 28;
	
	MDQuestion *q2 = [[MDQuestion alloc] init];
	q2.question = @"Quanto é 95 - 37?";
	q2.answer = 58;
	
	[challenge.questions addObjectsFromArray:@[q1,q2]];
	return challenge;
}

+ (MDChallenge*)hardChallenge {
	MDChallenge *challenge = [[MDChallenge alloc] init];
	challenge.difficulty = MDChallengeDifficultyHard;
	
	MDQuestion *q1 = [[MDQuestion alloc] init];
	q1.question = @"Quanto é 142 + 118?";
	q1.answer = 142+118;
	
	MDQuestion *q2 = [[MDQuestion alloc] init];
	q2.question = @"Quanto é 250 - 77?";
	q2.answer = 173;
	
	[challenge.questions addObjectsFromArray:@[q1,q2]];
	return challenge;
}
@end
