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
	
	MDChallenge *challenge = [[MDChallenge alloc] init];
	challenge.difficulty = MDChallengeDifficultyHard;
	
	switch (difficulty) {
		case MDChallengeDifficultyEasy:
			[challenge.questions addObjectsFromArray:[self questionsForDifficulty:@"easy"]];
			break;
		case MDChallengeDifficultyMedium:
			[challenge.questions addObjectsFromArray:[self questionsForDifficulty:@"medium"]];
			break;
		case MDChallengeDifficultyHard:
			[challenge.questions addObjectsFromArray:[self questionsForDifficulty:@"hard"]];
			break;
		default:
			break;
	}
	
	return challenge;
}

+ (NSArray*)questionsForDifficulty:(NSString*)dif {
	
	NSArray *theArray = [[self questionsDictionary] objectForKey:dif];
	
	int randomIndex = arc4random() % [theArray count];
	
	DLog(@"index %d", randomIndex);
	
	if (randomIndex < 0) {
		randomIndex = 0;
	}
	if (randomIndex > [theArray count]) {
		randomIndex = [theArray count]-1;
	}
	
	NSDictionary *d = [theArray objectAtIndex:randomIndex];
	MDQuestion *q1 = [[MDQuestion alloc] init];
	q1.question = [d objectForKey:@"question"];
	q1.answer = [[d objectForKey:@"answer"] intValue];
	
	int ind2 = randomIndex+1;
	if (ind2 > [theArray count]-1) {
		ind2 = randomIndex-1;
	}
	if (ind2 < 0) {
		ind2 = 0;
	}
	
	d = [theArray objectAtIndex:ind2];
	
	MDQuestion *q2 = [[MDQuestion alloc] init];
	q2.question = [d objectForKey:@"question"];
	q2.answer = [[d objectForKey:@"answer"] intValue];
	
	return @[q1,q2];
	
}

+ (NSDictionary*)questionsDictionary {
	NSString *myPlistFilePath = [[NSBundle mainBundle] pathForResource:@"Exercises" ofType:@"plist"];
	NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile: myPlistFilePath];
	return d;
}
@end
