//
//  ScoreKeeper.h
//  Maths
//
//  Created by Chris Dean on 2018-02-13.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property float correctCount;
@property float incorrectCount;

-(void)displayScore;

@end
