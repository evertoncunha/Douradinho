//
//  CorrectAnswerViewController.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "CorrectAnswerViewController.h"
#import "PlayPracticeViewController.h"

@interface CorrectAnswerViewController ()

@end

@implementation CorrectAnswerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_questionLabel.text = self.answeredQuestion.question;
	_answerLabel.text = fstr(@"%d", self.answeredQuestion.answer);
}

- (void)tappedExit:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)tappedNextQuestion:(id)sender {
	PlayPracticeViewController *viewC = [[PlayPracticeViewController alloc] initWithNibName:nil bundle:nil];
	viewC.challenge = self.challenge;
	[self.navigationController pushViewController:viewC animated:YES];
}

@end
