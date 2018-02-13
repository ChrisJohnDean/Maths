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
        NSInteger randOne = arc4random_uniform(90) + 10;
        NSInteger randTwo = arc4random_uniform(90) + 10;
        _answer = randOne + randTwo;
        NSLog(@"%tu", _answer);
    }
    return self;
}

@end
