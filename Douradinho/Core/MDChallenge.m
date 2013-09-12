//
//  MDChallenge.m
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import "MDChallenge.h"

@implementation MDChallenge

- (id)init
{
    self = [super init];
    if (self) {
        self.questions = [NSMutableArray array];
    }
    return self;
}
@end
