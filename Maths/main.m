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
            
            //convert C string to NSString
            NSString *answer = [NSString stringWithCString:inputAnswer encoding:NSUTF8StringEncoding];
            
            //get character set of whitespace and new lines
            NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            
            //trim whitespace and new lines input answer using character set
            NSString *trimmedAnswer = [answer stringByTrimmingCharactersInSet: set];
            
            NSLog(@"Input was: \n%@", trimmedAnswer);
        }
    }
    return 0;
}
