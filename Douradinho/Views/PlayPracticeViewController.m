//
//  PlayPracticeViewController.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "PlayPracticeViewController.h"
#import "CorrectAnswerViewController.h"
#import "EndedChallengeViewController.h"

@interface PlayPracticeViewController ()

@end

@implementation PlayPracticeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
	if (self.challenge) {
		self.question = [self.challenge.questions firstObject];
		if (self.question) {
			[self.challenge.questions removeObjectAtIndex:0];
			
			_questionLabel.text = self.question.question;
		}
	}
}

- (void)refreshCount {
	[super refreshCount];
	
	if (self.question) {
		if ([self->_countLabel.text intValue]==self.question.answer) {
			[self questionAnswered];
		}
	}
}

- (void)questionAnswered {
	if ([self.challenge.questions count] > 0) {
		// has next question
		CorrectAnswerViewController *viewC = [[CorrectAnswerViewController alloc] initWithNibName:nil bundle:nil];
		viewC.challenge = self.challenge;
		viewC.answeredQuestion = self.question;
		[self.navigationController pushViewController:viewC animated:YES];
	}
	else {
		// finished challenge
		EndedChallengeViewController *viewC = [[EndedChallengeViewController alloc] initWithNibName:nil bundle:nil];
		viewC.challenge = self.challenge;
		viewC.answeredQuestion = self.question;
		[self.navigationController pushViewController:viewC animated:YES];
	}
}
@end
