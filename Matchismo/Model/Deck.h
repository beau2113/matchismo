//
//  Deck.h
//  Matchismo
//
//  Created by Beau Romero on 1/27/13.
//  Copyright (c) 2013 Identity Mad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : Card


- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;

@end
