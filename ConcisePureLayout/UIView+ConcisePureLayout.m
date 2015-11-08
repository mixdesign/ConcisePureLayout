//
//  UIView+ConcisePureLayout.m
//  ConcisePureLayoutExample
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import <PureLayout/ALView+PureLayout.h>
#import "UIView+ConcisePureLayout.h"

@implementation UIView (ConcisePureLayout)

#pragma mark -
#pragma mark Common.

- (NSArray *)aa_setDimensions {
    return [self autoSetDimensionsToSize:self.frame.size];
}

#pragma mark -
#pragma mark Align.

- (NSLayoutConstraint *)aa_verticalAlignWithView:(UIView *)view {
    return [self autoAlignAxis:ALAxisHorizontal toSameAxisOfView:view];
}

- (NSLayoutConstraint *)aa_centerVertical {
    return [self autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
}

- (NSLayoutConstraint *)aa_centerVerticalWithOffset:(CGFloat)offset {
    return [self autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.superview withOffset:offset];
}

- (NSLayoutConstraint *)aa_centerHorizontal {
    return [self autoAlignAxisToSuperviewAxis:ALAxisVertical];
}

- (NSLayoutConstraint *)aa_centerHorizontalWithOffset:(CGFloat)offset {
    return [self autoAlignAxis:ALAxisVertical toSameAxisOfView:self.superview withOffset:offset];
}

- (NSArray *)aa_centerWithView:(UIView *)view {
    NSMutableArray * constraints = [NSMutableArray array];
    [constraints addObject:[self autoAlignAxis:ALAxisHorizontal toSameAxisOfView:view]];
    [constraints addObject:[self autoAlignAxis:ALAxisVertical toSameAxisOfView:view]];
    return constraints;
}

- (NSArray *)aa_centerInSuperview {
    return @[[self aa_centerHorizontal],[self aa_centerVertical]];
}

- (NSLayoutConstraint *)aa_verticalAlignWith:(UIView *)view {
    return [self autoAlignAxis:ALAxisHorizontal toSameAxisOfView:view];
}

- (NSLayoutConstraint *)aa_horizontalAlignWith:(UIView *)view {
    return [self autoAlignAxis:ALAxisVertical toSameAxisOfView:view];
}

- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view {
    return [self aa_pinAfterView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view {
    return [self aa_pinAfterView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeRight toEdge:ALEdgeLeft ofView:view withOffset:-offset];
}

- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view {
    return [self aa_pinUnderView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeBottom toEdge:ALEdgeTop ofView:view withOffset:-offset];
}

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view {
    return [self aa_pinUnderView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_top:(UIView *)view {
    return [self aa_top:view offset:0];
}

- (NSLayoutConstraint *)aa_top:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:view withOffset:offset];;
}

- (NSLayoutConstraint *)aa_left:(UIView *)view {
    return [self aa_left:view offset:0];
}

- (NSLayoutConstraint *)aa_left:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_right:(UIView *)view {
    return [self aa_right:view offset:0];
}

- (NSLayoutConstraint *)aa_right:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_trailing:(UIView *)view {
    return [self aa_trailing:view offset:0];
}

- (NSLayoutConstraint *)aa_trailing:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:view withOffset:offset];
}


- (NSArray *)aa_leftAndRight:(UIView *)view {
    NSLayoutConstraint *leftConstraint = [self aa_left:view];
    NSLayoutConstraint *rightConstraint = [self aa_right:view];
    return @[leftConstraint, rightConstraint];
}

- (NSLayoutConstraint *)aa_superviewTop:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:inset];
}

- (NSLayoutConstraint *)aa_superviewLeft:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:inset];
}

- (NSLayoutConstraint *)aa_superviewRight:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:inset];
}

- (NSLayoutConstraint *)aa_superviewBottom:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:inset];
}

#pragma mark -
#pragma mark Dimentions.

- (NSLayoutConstraint *)aa_setWidth:(CGFloat)width {
    return [self autoSetDimension:ALDimensionWidth toSize:width];
}

- (NSLayoutConstraint *)aa_setHeight:(CGFloat)height {
    return [self autoSetDimension:ALDimensionHeight toSize:height];
}

- (NSLayoutConstraint *)aa_sameWidthWith:(UIView *)view {
    return [self autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:view];
}

- (NSLayoutConstraint *)aa_sameHeightWith:(UIView *)view {
    return [self autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:view];
}

- (NSArray *)aa_superviewFitWidth {
    return [self aa_superviewFitWidthWithInset:0];
}

- (NSArray *)aa_superviewFitWidthWithInset:(CGFloat)inset {
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[self aa_superviewLeft:inset]];
    [array addObject:[self aa_superviewRight:inset]];
    return array;
}

- (NSArray *)aa_superviewFitHeight {
    return [self aa_superviewFitHeightWithInset:0];
}

- (NSArray *)aa_superviewFitHeightWithInset:(CGFloat)inset {
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[self aa_superviewTop:inset]];
    [array addObject:[self aa_superviewBottom:inset]];
    return array;
}

@end
