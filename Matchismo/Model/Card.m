//
//  Card.m
//  Matchismo
//
//  Created by Beau Romero on 1/27/13.
//  Copyright (c) 2013 Identity Mad. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)cards{
    int score = 0;
    
    for(Card *card in cards){
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
            break;
        }
    }
    
    return score;
}

@end
