//
//  EndedChallengeViewController.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "CorrectAnswerViewController.h"

@interface EndedChallengeViewController : CorrectAnswerViewController {
	IBOutlet UIButton *_nextDifficultyButton;
}

- (IBAction)tappedNextDifficulty:(id)sender;

@end
