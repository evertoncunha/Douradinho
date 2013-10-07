//
//  HelpViewController.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController <UIAlertViewDelegate> {
	NSURL *_url;
}

- (IBAction)tappedMoreInfo:(id)sender;

- (IBAction)tappedSuggestedExercises:(id)sender;
@end
