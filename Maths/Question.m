//
//  Question.m
//  Maths
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _startTime = [NSDate date];
        
        self.leftValue = arc4random_uniform(90) + 11;
        self.rightValue = arc4random_uniform(90) + 11;
        
//        _question = [NSString stringWithFormat:@"%ld + %ld ?", (long)_rightValue, (long)_leftValue];
//        NSLog(@"%@", _question);
//        _answer = _leftValue + _rightValue;
        
    }
    return self;
}

-(void)generateQuestion{}

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
