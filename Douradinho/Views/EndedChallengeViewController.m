//
//  EndedChallengeViewController.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "EndedChallengeViewController.h"
#import "MDChallengeUtils.h"
#import "MDChallengeGenerator.h"
#import "PlayPracticeViewController.h"

@interface EndedChallengeViewController ()

@end

@implementation EndedChallengeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	MDChallengeDifficulty nextDifficulty = [MDChallengeUtils nextDifficultyAfterDifficulty:self.challenge.difficulty];
	
	if (nextDifficulty != MDChallengeDifficultyNone) {
		NSString * str = [MDChallengeUtils localizedStringForDifficulty:nextDifficulty];
		[_nextDifficultyButton setTitle:[fstr(@"Jogar %@", str) uppercaseString] forState:UIControlStateNormal];
	}
	else {
		[_nextDifficultyButton setHidden:YES];
	}
}

- (void)tappedNextDifficulty:(id)sender {
	
	MDChallengeDifficulty nextDifficulty = [MDChallengeUtils nextDifficultyAfterDifficulty:self.challenge.difficulty];
	
	MDChallenge * challenge = [MDChallengeGenerator challengeWithDifficulty:nextDifficulty];
	PlayPracticeViewController *viewC = [[PlayPracticeViewController alloc] initWithNibName:nil bundle:nil];
	viewC.challenge = challenge;
	[self.navigationController pushViewController:viewC animated:YES];
}
@end
