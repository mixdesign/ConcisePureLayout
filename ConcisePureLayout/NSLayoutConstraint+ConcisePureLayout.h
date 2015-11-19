//
//  NSLayoutConstraint+ConcisePureLayout.h
//  ConcisePureLayoutExample
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (ConcisePureLayout)

/**
 *  Deactivates the constraint and returns the constant.
 *
 *  @return The constant added to the multiplied second attribute participating in the constraint.
 */
- (CGFloat)aa_autoRemove;

@end
