//
//  NSArray+ConsicePureLayout.h
//  Zenge
//
//  Created by Almas Adilbek on 1/13/16.
//  Copyright © 2016 Zenge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PureLayout/ALView+PureLayout.h>

@interface NSArray (ConcisePureLayout)

- (NSLayoutConstraint *)topConstraint;
- (NSLayoutConstraint *)leadingConstraint;
- (NSLayoutConstraint *)bottomConstraint;
- (NSLayoutConstraint *)trailingConstraint;

@end
