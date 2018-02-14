//
//  main.m
//  Maths
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL dontStop = YES;
        
        ScoreKeeper* score = [[ScoreKeeper alloc] init];
        QuestionManager* questionManager = [[QuestionManager alloc] init];
        
        while(dontStop) {
            
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            [questionManager.questions addObject: newQuestion];
            
            NSString *trimmedAnswer = [InputHandler parseInput];
            
            //Convert users answer from to NSInteger
            NSInteger userInput = [trimmedAnswer integerValue];
            
            NSInteger expectedAnswer = newQuestion.answer;
            
            //compares users answer to expected answer
            if([trimmedAnswer isEqualToString:@"quit"]) {
                dontStop = NO;
                continue;
            } else if(expectedAnswer == userInput) {
                score.correctCount += 1;
                NSLog(@"Right!");

            } else {
                score.incorrectCount += 1;
                NSLog(@"Wrong!");

            }
            [score displayScore];
            [questionManager timeOutput];
        }
        
    }
    return 0;
}
