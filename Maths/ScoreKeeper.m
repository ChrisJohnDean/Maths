//
//  ScoreKeeper.m
//  Maths
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.correctCount = 0;
        self.incorrectCount = 0;
    }
    return self;
}

-(void)displayScore {
    
    float percentage = (self.correctCount/(self.incorrectCount + self.correctCount))*100;
    
    NSLog(@"Score: %.f right, %.f wrong ---- %.f%%", self.correctCount, self.incorrectCount, percentage);
}

@end
