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
			_questionLabel.text = self.question.question;
			
			if (IOS_VERSION_LESS_THAN(@"7.0")) {
				[self adjustQuestionFontSize];
			}
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
	
	[self.challenge.questions removeObjectAtIndex:0];
	
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

-(void)adjustQuestionFontSize {
	float fontDelta = 3.0;
	float fontSize = _questionLabel.font.pointSize;
	
	CGSize origSize = _questionLabel.bounds.size;
	CGSize newSize = [_questionLabel sizeThatFits:CGSizeMake(origSize.width, MAXFLOAT)];
	
	if (newSize.height > origSize.height) {
		fontSize -= fontDelta;
		
		UIFont *font = [UIFont fontWithName:_questionLabel.font.fontName size:fontSize];
		_questionLabel.font = font;
		
		[self adjustQuestionFontSize];
	}
}
@end
