//
//  QuestionFactory.m
//  Maths
//
//  Created by Chris Dean on 2018-02-14.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplcationQuestion"];
    }
    return self;
}

-(Question*)generateRandomQuestion {
    
    
    NSInteger randomIndex = arc4random_uniform(4);
    NSString* randomString = self.questionSubclassNames[randomIndex];
    return [[NSClassFromString(randomString) alloc] init];
}

@end
