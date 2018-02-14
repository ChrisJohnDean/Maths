//
//  main.m
//  Maths
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL dontStop = YES;
        
        ScoreKeeper* score = [[ScoreKeeper alloc] init];
        QuestionManager* questionManager = [[QuestionManager alloc] init];
        QuestionFactory* questionFactory = [[QuestionFactory alloc] init];
        
        while(dontStop) {
            
//            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
//            SubtractionQuestion *newQuestion = [[SubtractionQuestion alloc] init];
//            MultiplicationQuestion *newQuestion = [[MultiplicationQuestion alloc] init];
//            DivisionQuestion *newQuestion = [[DivisionQuestion alloc] init];
            Question* newQuestion = [questionFactory generateRandomQuestion];
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
