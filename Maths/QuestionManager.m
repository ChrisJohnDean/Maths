//
//  QuestionManager.m
//  Maths
//
//  Created by Chris Dean on 2018-02-14.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString*)timeOutput {
    
    float totalTime = 0;
    float avgTime;
    
    for(AdditionQuestion* question in self.questions) {
        totalTime += question.answerTime;
    }
    
    avgTime = totalTime/self.questions.count;
//    NSNumber* avgTime = [self.questions valueForKeyPath:@"@avg.answerTime"];
//    NSNumber* totalTime = [self.questions valueForKeyPath:@"@sum.answerTime"];
    
    NSString* timeOutput = [NSString stringWithFormat: @"Total time: %.02fs, average time: %.02fs", totalTime, avgTime];
    NSLog(@"%@", timeOutput);
    return timeOutput;
}

@end
