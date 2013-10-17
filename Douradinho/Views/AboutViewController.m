//
//  HelpViewController.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "AboutViewController.h"
#import "UsefulLinksViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)tappedLinks:(id)sender {
	[self.navigationController pushViewController:[[UsefulLinksViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}

@end
