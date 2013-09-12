//
//  CorrectAnswerViewController.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDChallenge.h"

@interface CorrectAnswerViewController : UIViewController {
	IBOutlet UILabel *_questionLabel;
	IBOutlet UILabel *_answerLabel;
}

@property (strong, nonatomic) MDChallenge *challenge;
@property (strong, nonatomic) MDQuestion *answeredQuestion;

- (IBAction)tappedExit:(id)sender;

- (IBAction)tappedNextQuestion:(id)sender;

@end
