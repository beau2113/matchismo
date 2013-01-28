//
//  Deck.m
//  Matchismo
//
//  Created by Beau Romero on 1/27/13.
//  Copyright (c) 2013 Identity Mad. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; // of Card

@end


@implementation Deck

- (NSMutableArray *)getCards:(NSMutableArray *)cards
{
    if(!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}


- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if(atTop){
        [self.cards insertObject:card atIndex:0];

    } else{
        [self.cards addObject:card];
    }
}

- (Card *)drawRandomCard
{
    
    Card *randomCard = nil;
    
    if(self.cards.count){
        int index = arc4random() % self.cards.count;
        
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}


@end