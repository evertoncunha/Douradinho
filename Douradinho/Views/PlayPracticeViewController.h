//
//  PlayPracticeViewController.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "PlayGameViewController.h"
#import "MDChallenge.h"

@interface PlayPracticeViewController : PlayGameViewController {
	IBOutlet UILabel *_questionLabel;
}

@property (strong,nonatomic) MDChallenge *challenge;
@property (strong,nonatomic) MDQuestion *question;


@end


