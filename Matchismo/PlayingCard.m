//
//  PlayingCard.m
//  Matchismo
//
//  Created by Beau Romero on 1/27/13.
//  Copyright (c) 2013 Identity Mad. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;


- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}



- (void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank])
        _rank = rank;
}

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
   //return [[NSString alloc] initWithFormat:@"%d%@", self.rank, self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♠",@"♥",@"♦",@"♣"];
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank
{
    return [self rankStrings].count-1;
}

@end
