//
//  PracticeViewController.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "PracticeViewController.h"
#import "MDChallengeGenerator.h"
#import "PlayPracticeViewController.h"

@interface PracticeViewController ()

@end

@implementation PracticeViewController

- (void)tappedEasy:(id)sender {
	[self pushChallengeWithDifficulty:MDChallengeDifficultyEasy];
}

- (void)tappedMedium:(id)sender {
	[self pushChallengeWithDifficulty:MDChallengeDifficultyMedium];
}

- (void)tappedHard:(id)sender {
	[self pushChallengeWithDifficulty:MDChallengeDifficultyHard];
}

- (void)pushChallengeWithDifficulty:(MDChallengeDifficulty)difficulty {
	MDChallenge * challenge = [MDChallengeGenerator challengeWithDifficulty:difficulty];
	PlayPracticeViewController *viewC = [[PlayPracticeViewController alloc] initWithNibName:nil bundle:nil];
	viewC.challenge = challenge;
	[self.navigationController pushViewController:viewC animated:YES];
}
@end
