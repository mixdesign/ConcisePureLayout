//
//  UIView+ConcisePureLayout.h
//  ConcisePureLayoutExample
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ConcisePureLayout)

- (NSArray *)aa_setDimensions;

// Aligns
- (NSLayoutConstraint *)aa_verticalAlignWithView:(UIView *)view;
- (NSLayoutConstraint *)aa_centerVertical;
- (NSLayoutConstraint *)aa_centerVerticalWithOffset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_centerHorizontal;
- (NSLayoutConstraint *)aa_centerHorizontalWithOffset:(CGFloat)offset;

- (NSArray *)aa_centerWithView:(UIView *)view;
- (NSArray *)aa_centerInSuperview;

- (NSLayoutConstraint *)aa_verticalAlignWith:(UIView *)view;
- (NSLayoutConstraint *)aa_horizontalAlignWith:(UIView *)view;

// Pin
- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view;
- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view offset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view;
- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view offset:(CGFloat)offset;

- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view;
- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view offset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view;
- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view offset:(CGFloat)offset;

- (NSLayoutConstraint *)aa_top:(UIView *)view;
- (NSLayoutConstraint *)aa_top:(UIView *)view offset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_left:(UIView *)view;
- (NSLayoutConstraint *)aa_left:(UIView *)view offset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_right:(UIView *)view;
- (NSLayoutConstraint *)aa_right:(UIView *)view offset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_trailing:(UIView *)view;
- (NSLayoutConstraint *)aa_trailing:(UIView *)view offset:(CGFloat)offset;

- (NSLayoutConstraint *)aa_superviewTop:(CGFloat)inset;
- (NSLayoutConstraint *)aa_superviewLeft:(CGFloat)inset;
- (NSLayoutConstraint *)aa_superviewRight:(CGFloat)inset;
- (NSLayoutConstraint *)aa_superviewBottom:(CGFloat)inset;
- (NSArray *)aa_leftAndRight:(UIView *)view;

// Dimensions.
- (NSLayoutConstraint *)aa_setWidth:(CGFloat)width;
- (NSLayoutConstraint *)aa_setHeight:(CGFloat)height;

- (NSLayoutConstraint *)aa_sameWidthWith:(UIView *)view;
- (NSLayoutConstraint *)aa_sameHeightWith:(UIView *)view;

- (NSArray *)aa_superviewFitWidth;
- (NSArray *)aa_superviewFitWidthWithInset:(CGFloat)inset;
- (NSArray *)aa_superviewFitHeight;
- (NSArray *)aa_superviewFitHeightWithInset:(CGFloat)inset;

@end
