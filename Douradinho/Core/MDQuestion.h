//
//  MDQuestion.h
//  Douradinho
//
//  Created by Everton on 12/09/13.
//  Copyright (c) 2013 Everton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MDQuestion : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic, readwrite) NSInteger answer;

@end
