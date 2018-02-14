//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Chris Dean on 2018-02-14.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    self.question = [NSString stringWithFormat:@"%ld - %ld ?", (long)self.rightValue, (long)self.leftValue];
    NSLog(@"%@", self.question);
    self.answer = self.rightValue - self.leftValue;
}

@end
