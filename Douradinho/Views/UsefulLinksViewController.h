//
//  UsefulLinksViewController.h
//  Douradinho
//
//  Created by Everton Cunha on 17/10/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UsefulLinksViewController : UIViewController <UIAlertViewDelegate> {
	NSURL *_url;
	IBOutlet UITextField *_ageTextField;
	IBOutlet UIView *_linksView;
}

- (IBAction)tappedValidateAge:(id)sender;

- (IBAction)tappedMoreInfo:(id)sender;

- (IBAction)tappedSuggestedExercises:(id)sender;

- (IBAction)tappedUserManual:(id)sender;
	
@end
