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
        
        char Player1Name[20];
        char Player2Name[20];
        
        BOOL gameIsOn = YES;
        
        
        NSLog(@"Player 1, Please Enter Your Name");
        scanf("%s", Player1Name);
       
        
        
        NSLog(@"Player 2, Please Enter Your Name");
        scanf("%s", Player2Name);
        
        
        while (gameIsOn) {
        
        // Player 1 question
            
        int randomNumber1 = arc4random()%20;
        int randomNumber2 = arc4random()%20;
    
        int sumOfRandomNumber = randomNumber1 + randomNumber2;
        
        NSLog(@" %s, What is %d + %d", Player1Name, randomNumber1, randomNumber2);
//        waitOnCR();
        scanf("%d", &answer);
        
        if(sumOfRandomNumber == answer) {
            
            NSLog(@"Right!");
            player1score = player1score + 1;
            NSLog(@"%s, your score is now %d",Player1Name,  player1score);
            
            if (player1score == 3) {
                NSLog(@"%s, you won!", Player1Name);
                break;
            }
            
            
        }else{
            
            NSLog(@"Sorry, that is not the right answer");
            player1score = player1score -1;
            
        }
            
            // Player 2 Question
            
            int randomNumber11 = arc4random()%20;
            int randomNumber22 = arc4random()%20;
            
            int sumOfRandomNumber2 = randomNumber11 + randomNumber22;
            
            NSLog(@"%s, What is %d + %d", Player2Name, randomNumber11, randomNumber22);
            
            scanf("%d", &answer);
           
            if(sumOfRandomNumber2 == answer) {
                
                NSLog(@"Right!");
                player2score = player2score + 1;
                NSLog(@" %s, your score is now %d",Player2Name, player2score);
                
                if (player2score == 3) {
                    NSLog(@"%s, you won!", Player2Name);
                    break;
                }
            
            }else{
                
                NSLog(@"Sorry that is not the right answer");
                player2score = player2score -1;
            
            }
            
        }
    }
    return 0;
}
