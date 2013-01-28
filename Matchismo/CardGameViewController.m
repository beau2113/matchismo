//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Beau Romero on 1/27/13.
//  Copyright (c) 2013 Identity Mad. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@property (strong, nonatomic) PlayingCardDeck *deck;
@property (weak, nonatomic) IBOutlet UIButton *cardButton;
@property (weak, nonatomic) IBOutlet UIButton *dealButton;

@end

@implementation CardGameViewController

-(PlayingCardDeck *)deck
{
    if(!_deck){
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}


-(void)setFlipsCount:(int)flipsCount{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [[NSString alloc]initWithFormat:@"Flips: %d",self.flipsCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    if(!sender.selected) sender.selected = YES;
        NSString *contents = [self.deck drawRandomCard].contents;
        if(contents){
            [sender setTitle:contents forState:UIControlStateSelected];
            self.flipsCount++;
        } else {
            UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Out of cards! Deal again?"
                                                             message:nil
                                                            delegate:self
                                                   cancelButtonTitle:@"No"
                                                   otherButtonTitles:@"Yes"
                                                , nil];
            
            [myAlert show];
        }
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0){
        //cancel clicked
        self.cardButton.enabled = NO;
        [self.cardButton setTitle:@"Empty" forState:UIControlStateDisabled];
        self.dealButton.hidden = NO;
        
    }else if (buttonIndex == 1){
        //reset button clicked
        [self dealAgain];
    }
}
- (IBAction)dealButtonAction:(UIButton *)sender {
    sender.hidden = YES;
    [self dealAgain];
}

- (void)dealAgain
{
    self.deck = nil;
    self.flipsCount = 0;
    self.cardButton.selected = NO;
    self.cardButton.enabled = YES;
}


@end
