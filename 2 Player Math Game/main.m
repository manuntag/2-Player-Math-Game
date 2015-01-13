//
//  main.m
//  2 Player Math Game
//
//  Created by David Manuntag on 2015-01-13.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int answer;
        int player1score = 0;
        int player2score = 0;
        
        BOOL gameIsOn = YES;
        
        while (gameIsOn) {
        
        int randomNumber1 = arc4random()%20;
        int randomNumber2 = arc4random()%20;
    
        int sumOfRandomNumber = randomNumber1 + randomNumber2;
        
        NSLog(@"Player 1, What is %d + %d", randomNumber1, randomNumber2);
        
        scanf("%d", &answer);
        
        if(sumOfRandomNumber == answer) {
            
            NSLog(@"Right!");
            player1score = player1score + 1;
            NSLog(@"Player 1, your score is now %d", player1score);
            
            if (player1score == 3) {
                NSLog(@"Player 1, you won!");
                break;
            }
            
            
        }else{
            
            NSLog(@"Sorry");
            player1score = player1score -1;
            
        }
            
            int randomNumber11 = arc4random()%20;
            int randomNumber22 = arc4random()%20;
            
            int sumOfRandomNumber2 = randomNumber11 + randomNumber22;
            
            NSLog(@"Player 2, What is %d + %d", randomNumber11, randomNumber22);
            
            scanf("%d", &answer);
            
            if(sumOfRandomNumber2 == answer) {
                
                NSLog(@"Right!");
                player2score = player2score + 1;
                NSLog(@"Player 2, your score is now %d", player2score);
                
                if (player1score == 3) {
                    NSLog(@"Player 1, you won!");
                    break;
                }
            
            }else{
                
                NSLog(@"Sorry");
                player2score = player2score -1;
            
            }
            
        }
    }
    return 0;
}
