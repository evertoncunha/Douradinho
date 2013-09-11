//
//  MainViewController.m
//  Douradinho
//
//  Created by Everton on 02/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MainViewController.h"
#import "PlayChoiceViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)tappedPlay:(id)sender {
	[self.navigationController pushViewController:[[PlayChoiceViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}

@end
