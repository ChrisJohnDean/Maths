//
//  main.m
//  Maths
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL dontStop = YES;
        
        while(dontStop) {
            
            //255 unit long array of characters
            char inputAnswer[255];
            
            //ask user for input
            NSLog(@"Enter your answer: ");
            //get input as a C string
            fgets(inputAnswer, 255, stdin);
            NSString *answer = [NSString stringWithCString:inputAnswer encoding:NSUTF8StringEncoding];
            
            NSLog(@"Input was: %@", answer);
        }
    }
    return 0;
}
