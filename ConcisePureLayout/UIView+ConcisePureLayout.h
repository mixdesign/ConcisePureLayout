//
//  UIView+ConcisePureLayout.h
//  ConcisePureLayoutExample
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import <PureLayout/ALView+PureLayout.h>
#import <UIKit/UIKit.h>

@interface UIView (ConcisePureLayout)

/**
 *  Sets the view to the view's frame size.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_setDimensions;

#pragma mark - Aligning

/**
 *  Aligns the horizontal axis of the view to the same axis of another view.
 *
 *  @param view View to align the horizontal axis for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_verticalAlignWithView:(UIView *)view;
/**
 *  Aligns the vertical axis of the view to the same axis of another view.
 *
 *  @param view View to align the vertical axis for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_horizontalAlignWithView:(UIView *)view;
/**
 *  Aligns the view to the horizontal axis of its superview.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_centerVertical;
/**
 *  Aligns the view to the vertical axis of its superview.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_centerHorizontal;
/**
 *  Aligns the horizontal axis of the view to the same axis of its superview with an offset.
 *
 *  @param offset Offset along the vertical axis of the view's superview.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_centerVerticalWithOffset:(CGFloat)offset;
/**
 *  Aligns the vertical axis of the view to the same axis of its superview with an offset.
 *
 *  @param offset Offset along the horizontal axis of the view's superview.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_centerHorizontalWithOffset:(CGFloat)offset;
/**
 *  Aligns the view to both the vertical and the horizontal axises of another view.
 *
 *  @param view View to align the axises for.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (NSArray *)aa_centerWithView:(UIView *)view;
/**
 *  Aligns the view to both the vertical and the horizontal axises of its superview.
 *
 *  @param view View to align the axises for.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (NSArray *)aa_centerInSuperview;

#pragma mark - Pinning

/**
 *  Pins the left edge of the view to the right edge of another view.
 *
 *  @param view View to pin the left edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view;
/**
 *  Pins the right edge of the view to the left edge of another view.
 *
 *  @param view View to pin the right edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view;
/**
 *  Pins the left edge of the view to the right edge of another view with an offset.
 *
 *  @param view   View to pin the left edge for.
 *  @param offset Offset from another view's right edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins the right edge of the view to the left edge of another view with an offset.
 *
 *  @param view   View to pin the right edge for.
 *  @param offset Offset from another view's left edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinBeforeView:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins the bottom edge of the view to the top edge of another view.
 *
 *  @param view View to pin the bottom edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view;
/**
 *  Pins the top edge of the view to the bottom edge of another view.
 *
 *  @param view View to pin the top edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view;
/**
 *  Pins the bottom edge of the view to the top edge of another view with an offset.
 *
 *  @param view   View to pin the bottom edge for.
 *  @param offset Offset from another view's top edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinAboveView:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins the top edge of the view to the bottom edge of another view with an offset.
 *
 *  @param view   View to pin the top edge for.
 *  @param offset Offset from another view's bottom edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins the top edge of the view to the same edge of another view.
 *
 *  @param view View to pin the top edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_top:(UIView *)view;
/**
 *  Pins the bottom edge of the view to the same edge of another view.
 *
 *  @param view View to pin the bottom edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_bottom:(UIView *)view;
/**
 *  Pins the top edge of the view to the same edge of another view with an offset.
 *
 *  @param view   View to pin the top edge for.
 *  @param offset Offset from another view's top edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_top:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins the bottom edge of the view to the same edge of another view with an offset.
 *
 *  @param view   View to pin the bottom edge for.
 *  @param offset Offset from another view's bottom edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_bottom:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins both the top and the bottom edges of the view to the same edges of another view.
 *
 *  @param view View to pin edges for.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_topAndBottom:(UIView *)view;
/**
 *  Pins the left edge of the view to the same edge of another view.
 *
 *  @param view View to pin the left edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_left:(UIView *)view;
/**
 *  Pins the right edge of the view to the same edge of another view.
 *
 *  @param view View to pin the right edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_right:(UIView *)view;
/**
 *  Pins the left edge of the view to the same edge of another view with an offset.
 *
 *  @param view   View to pin the left edge for.
 *  @param offset Offset from another view's left edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_left:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins the right edge of the view to the same edge of another view with an offset.
 *
 *  @param view   View to pin the right edge for.
 *  @param offset Offset from another view's right edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_right:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins both the left and the right edges of the view to the same edges of another view.
 *
 *  @param view View to pin edges for.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_leftAndRight:(UIView *)view;
/**
 *  Pins the leading edge of the view to the same edge of another view.
 *
 *  @param view View to pin the leading edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_leading:(UIView *)view;
/**
 *  Pins the trailing edge of the view to the same edge of another view.
 *
 *  @param view View to pin the trailing edge for.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_trailing:(UIView *)view;
/**
 *  Pins the leading edge of the view to the same edge of another view with an offset.
 *
 *  @param view   View to pin the leading edge for.
 *  @param offset Offset from another view's leading edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_leading:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins the trailing edge of the view to the same edge of another view with an offset.
 *
 *  @param view   View to pin the trailing edge for.
 *  @param offset Offset from another view's trailing edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_trailing:(UIView *)view offset:(CGFloat)offset;
/**
 *  Pins both the leading and the trailing edges of the view to the same edges of another view.
 *
 *  @param view View to pin edges for.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_leadingAndTrailing:(UIView *)view;
/**
 *  Pins the top edge of the view to the same edge of its superview with an inset.
 *
 *  @param inset Inset from the superview's top edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_superviewTop:(CGFloat)inset;
/**
 *  Pins the left edge of the view to the same edge of its superview with an inset.
 *
 *  @param inset Inset from the superview's left edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_superviewLeft:(CGFloat)inset;
/**
 *  Pins the right edge of the view to the same edge of its superview with an inset.
 *
 *  @param inset Inset from the superview's right edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_superviewRight:(CGFloat)inset;
/**
 *  Pins the bottom edge of the view to the same edge of its superview with an inset.
 *
 *  @param inset Inset from the superview's bottom edge.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_superviewBottom:(CGFloat)inset;
/**
 *  Pins both the left and the right edges of the view to the same edges of its superview.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitWidth;
/**
 *  Pins both the left and the right edges of the view to the same edges of its superview with an inset.
 *
 *  @param inset Inset from the superview's edges.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitWidthWithInset:(CGFloat)inset;
/**
 *  Pins both the top and the bottom edges of the view to the same edges of its superview.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitHeight;
/**
 *  Pins both the top and the bottom edges of the view to the same edges of its superview with an inset.
 *
 *  @param inset Inset from the superview's edges.
 *
 *  @return Array of resulting NSLayoutConstraint objects.
 */
- (__NSArray_of(NSLayoutConstraint *) *)aa_superviewFitHeightWithInset:(CGFloat)inset;

#pragma mark - Dimensions

/**
 *  Sets the width of the view to a specific size.
 *
 *  @param width Width to set for the view.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_setWidth:(CGFloat)width;
/**
 *  Sets the height of the view to a specific size.
 *
 *  @param height Height to set for the view.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_setHeight:(CGFloat)height;
/**
 *  Sets the width of the view to the width of another view.
 *
 *  @param view View to match the width to.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_sameWidthWith:(UIView *)view;
/**
 *  Sets the height of the view to the height of another view.
 *
 *  @param view View to match the height to.
 *
 *  @return Resulting NSLayoutConstraint object.
 */
- (NSLayoutConstraint *)aa_sameHeightWith:(UIView *)view;

@end
