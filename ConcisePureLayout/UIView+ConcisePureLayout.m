//
//  UIView+ConcisePureLayout.m
//  ConcisePureLayoutExample
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import "UIView+ConcisePureLayout.h"

@implementation UIView (ConcisePureLayout)

- (__NSArray_of(NSLayoutConstraint *) *)aa_setDimensions {
    return [self autoSetDimensionsToSize:self.frame.size];
}

#pragma mark - Aligning

- (NSLayoutConstraint *)aa_verticalAlignWithView:(UIView *)view {
    return [self autoAlignAxis:ALAxisHorizontal toSameAxisOfView:view];
}

- (NSLayoutConstraint *)aa_horizontalAlignWithView:(UIView *)view {
    return [self autoAlignAxis:ALAxisVertical toSameAxisOfView:view];
}

- (NSLayoutConstraint *)aa_centerVertical {
    return [self autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
}

- (NSLayoutConstraint *)aa_centerHorizontal {
    return [self autoAlignAxisToSuperviewAxis:ALAxisVertical];
}

- (NSLayoutConstraint *)aa_centerVerticalWithOffset:(CGFloat)offset {
    return [self autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.superview withOffset:offset];
}

- (NSLayoutConstraint *)aa_centerHorizontalWithOffset:(CGFloat)offset {
    return [self autoAlignAxis:ALAxisVertical toSameAxisOfView:self.superview withOffset:offset];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_centerWithView:(UIView *)view {
    return @[[self aa_verticalAlignWithView:view], [self aa_horizontalAlignWithView:view]];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_centerInSuperview {
    return @[[self aa_centerHorizontal], [self aa_centerVertical]];
}

#pragma mark - Pinning

- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view {
    return [self aa_pinAfterView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view {
    return [self aa_pinAfterView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeRight toEdge:ALEdgeLeft ofView:view withOffset:-offset];
}

- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view {
    return [self aa_pinAboveView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view {
    return [self aa_pinUnderView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeBottom toEdge:ALEdgeTop ofView:view withOffset:-offset];
}

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view offset:(CGFloat)offset {
    return [self aa_pinUnderView:view offset:offset relation:NSLayoutRelationEqual];
}

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view offset:(CGFloat)offset relation:(NSLayoutRelation)relation {
    return [self autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:view withOffset:offset relation:relation];
}

- (NSLayoutConstraint *)aa_top:(UIView *)view {
    return [self aa_top:view offset:0];
}

- (NSLayoutConstraint *)aa_bottom:(UIView *)view {
    return [self aa_bottom:view offset:0];
}

- (NSLayoutConstraint *)aa_top:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:view withOffset:offset];;
}

- (NSLayoutConstraint *)aa_bottom:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:view withOffset:offset];;
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_topAndBottom:(UIView *)view {
    return @[[self aa_top:view], [self aa_bottom:view]];
}

- (NSLayoutConstraint *)aa_left:(UIView *)view {
    return [self aa_left:view offset:0];
}

- (NSLayoutConstraint *)aa_right:(UIView *)view {
    return [self aa_right:view offset:0];
}

- (NSLayoutConstraint *)aa_left:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_right:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:view withOffset:offset];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_leftAndRight:(UIView *)view {
    return @[[self aa_left:view], [self aa_right:view]];
}

- (NSLayoutConstraint *)aa_leading:(UIView *)view {
    return [self aa_leading:view offset:0];
}

- (NSLayoutConstraint *)aa_trailing:(UIView *)view {
    return [self aa_trailing:view offset:0];
}

- (NSLayoutConstraint *)aa_leading:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_trailing:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:view withOffset:offset];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_leadingAndTrailing:(UIView *)view {
  return @[[self aa_leading:view], [self aa_trailing:view]];
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

- (NSLayoutConstraint *)aa_superviewTop:(CGFloat)inset relation:(NSLayoutRelation)relation {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:inset relation:relation];
}

- (NSLayoutConstraint *)aa_superviewLeft:(CGFloat)inset relation:(NSLayoutRelation)relation {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:inset relation:relation];
}

- (NSLayoutConstraint *)aa_superviewRight:(CGFloat)inset relation:(NSLayoutRelation)relation {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:inset relation:relation];
}

- (NSLayoutConstraint *)aa_superviewBottom:(CGFloat)inset relation:(NSLayoutRelation)relation {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:inset relation:relation];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitWidth {
    return [self aa_superviewFitWidthWithInset:0];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitWidthWithInset:(CGFloat)inset {
    return @[[self aa_superviewLeft:inset], [self aa_superviewRight:inset]];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitHeight {
    return [self aa_superviewFitHeightWithInset:0];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitHeightWithInset:(CGFloat)inset {
    return @[[self aa_superviewTop:inset], [self aa_superviewBottom:inset]];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewWithInsets:(UIEdgeInsets)insets {
    return [self autoPinEdgesToSuperviewEdgesWithInsets:insets];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewTop:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right {
    return @[[self aa_superviewTop:top], [self aa_superviewLeft:left], [self aa_superviewBottom:bottom], [self aa_superviewRight:right]];
}

- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFillWithInset:(CGFloat)inset {
    return @[[self aa_superviewTop:inset], [self aa_superviewLeft:inset], [self aa_superviewBottom:inset], [self aa_superviewRight:inset]];
}

#pragma mark - Dimentions

- (NSLayoutConstraint *)aa_setWidth:(CGFloat)width {
    return [self autoSetDimension:ALDimensionWidth toSize:width];
}

- (NSLayoutConstraint *)aa_setWidth:(CGFloat)width relation:(NSLayoutRelation)relation {
    return [self autoSetDimension:ALDimensionWidth toSize:width relation:relation];
}

- (NSLayoutConstraint *)aa_setHeight:(CGFloat)height {
    return [self autoSetDimension:ALDimensionHeight toSize:height];
}

- (NSLayoutConstraint *)aa_setHeight:(CGFloat)height relation:(NSLayoutRelation)relation {
    return [self autoSetDimension:ALDimensionHeight toSize:height relation:relation];
}

- (NSLayoutConstraint *)aa_sameWidthWith:(UIView *)view {
    return [self autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:view];
}

- (NSLayoutConstraint *)aa_sameHeightWith:(UIView *)view {
    return [self autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:view];
}

@end
