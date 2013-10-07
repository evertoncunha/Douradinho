//
//  HelpViewController.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)tappedMoreInfo:(id)sender {
	[self openURL:[@"http://educar.sc.usp.br/matematica/m2l2.htm" urlSafe]];
}

- (void)tappedSuggestedExercises:(id)sender {
	[self openURL:[@"http://www.evertoncunha.com/douradinho/exercicios.html" urlSafe]];
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
