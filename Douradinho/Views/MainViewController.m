//
//  MainViewController.m
//  Douradinho
//
//  Created by Everton on 02/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MainViewController.h"
#import "PlayChoiceViewController.h"
#import "HelpViewController.h"
#import "PracticeViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)tappedPlay:(id)sender {
	[self.navigationController pushViewController:[[PlayChoiceViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}

-(void)tappedHelp:(id)sender {
	[self.navigationController pushViewController:[[HelpViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}

- (void)tappedPractice:(id)sender {
	[self.navigationController pushViewController:[[PracticeViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}
@end
