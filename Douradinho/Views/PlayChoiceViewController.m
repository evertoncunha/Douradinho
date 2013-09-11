//
//  PlayChoiceViewController.m
//  Douradinho
//
//  Created by Everton on 10/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "PlayChoiceViewController.h"
#import "PlayGameViewController.h"
#import "PlayUnlimitedViewController.h"
@interface PlayChoiceViewController ()

@end

@implementation PlayChoiceViewController

- (void)tapped111Pieces:(id)sender {
	[self.navigationController pushViewController:[[PlayGameViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}

- (void)tappedUnlimitedPieces:(id)sender {
	[self.navigationController pushViewController:[[PlayUnlimitedViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}

@end
