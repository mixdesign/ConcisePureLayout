//
//  NSArray+ConsicePureLayout.h
//  Zenge
//
//  Created by Almas Adilbek on 1/13/16.
//  Copyright © 2016 Zenge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSArray (ConcisePureLayout)

- (NSLayoutConstraint *)topConstraint;
- (NSLayoutConstraint *)leadingConstraint;
- (NSLayoutConstraint *)bottomConstraint;
- (NSLayoutConstraint *)trailingConstraint;

- (NSArray *)aa_setViewsHeight:(CGFloat)height;
- (NSArray *)aa_setViewsWidth:(CGFloat)width;

@end
