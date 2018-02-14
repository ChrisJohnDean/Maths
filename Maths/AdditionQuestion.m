//
//  AdditionQuestion.m
//  Maths
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _startTime = [NSDate date];
        
        NSInteger randOne = arc4random_uniform(90) + 10;
        NSInteger randTwo = arc4random_uniform(90) + 10;
        
        NSString *strOne = [NSString stringWithFormat: @"%ld", (long)randOne];
        NSString *strTwo = [NSString stringWithFormat: @"%ld", (long)randTwo];
        
        _question = [NSString stringWithFormat:@"%@ + %@ ?", strOne, strTwo];
        NSLog(@"%@", _question);
        _answer = randOne + randTwo;
        
        //NSLog(@"%tu", _answer);
    }
    return self;
}


//Overriding answer property getter
-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    
    NSTimeInterval timeInterval = [_endTime timeIntervalSinceDate: _startTime];
   // NSLog(@"%.02f seconds to answer that question", timeInterval);
    return timeInterval;
}

@end
