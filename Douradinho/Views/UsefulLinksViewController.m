//
//  UsefulLinksViewController.m
//  Douradinho
//
//  Created by Everton Cunha on 17/10/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "UsefulLinksViewController.h"

@interface UsefulLinksViewController ()

@end

@implementation UsefulLinksViewController

- (void)tappedMoreInfo:(id)sender {
	[self openURL:[@"http://educar.sc.usp.br/matematica/m2l2.htm" urlSafe]];
}

- (void)tappedSuggestedExercises:(id)sender {
	[self openURL:[@"http://www.evertoncunha.com/douradinho/exercicios" urlSafe]];
}

- (void)tappedUserManual:(id)sender {
	[self openURL:[@"http://www.evertoncunha.com/douradinho/manual" urlSafe]];
}

- (void)tappedValidateAge:(id)sender {
	
	[_ageTextField resignFirstResponder];
	
	int age = [[_ageTextField text] intValue];
	
	NSDateFormatter *df = [[NSDateFormatter alloc] init];
	[df setDateFormat:@"YYYY"];
	
	int year = [[df stringFromDate:[NSDate date]] intValue];
	
	_linksView.hidden = !(year - age >= 18);
	
}

- (void)openURL:(NSURL*)url {
	_url = url;
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"O link será aberto fora do Douradinho, no aplicativo Safari. Deseja continuar?" delegate:self cancelButtonTitle:@"Não" otherButtonTitles:@"Sim", nil];
	[alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex != alertView.cancelButtonIndex) {
		[[UIApplication sharedApplication] openURL:_url];
	}
}



@end
