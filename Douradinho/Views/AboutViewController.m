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
	[[UIApplication sharedApplication] openURL:[@"http://educar.sc.usp.br/matematica/m2l2.htm" urlSafe]];
}

- (void)tappedSuggestedExercises:(id)sender {
	[[UIApplication sharedApplication] openURL:[@"http://www.evertoncunha.com/douradinho/exercicios.html" urlSafe]];
}

@end
