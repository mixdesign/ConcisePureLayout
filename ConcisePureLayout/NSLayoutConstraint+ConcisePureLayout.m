//
//  NSLayoutConstraint+ConcisePureLayout.m
//  ConcisePureLayoutExample
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import "NSLayoutConstraint+ConcisePureLayout.h"

#import <PureLayout/NSLayoutConstraint+PureLayout.h>

@implementation NSLayoutConstraint (ConcisePureLayout)

- (CGFloat)aa_autoRemove {
    CGFloat constant = self.constant;
    [self autoRemove];
    return constant;
}

@end