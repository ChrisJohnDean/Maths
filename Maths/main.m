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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL dontStop = YES;
        
        
        
        while(dontStop) {
            
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
          
            NSString *trimmedAnswer = [InputHandler parseInput];
            
            //Convert users answer from to NSInteger
            NSInteger userInput = [trimmedAnswer integerValue];
            
            NSInteger expectedAnswer = newQuestion.answer;
            
            //compares users answer to expected answer
            if([trimmedAnswer isEqualToString:@"quit"]) {
                dontStop = NO;
                continue;
            } else if(expectedAnswer == userInput) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            
            
        }
    }
    return 0;
}
