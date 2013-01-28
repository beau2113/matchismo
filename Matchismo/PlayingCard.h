//
//  PlayingCard.h
//  Matchismo
//
//  Created by Beau Romero on 1/27/13.
//  Copyright (c) 2013 Identity Mad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

// :)

@end
