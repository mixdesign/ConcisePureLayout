#import <PureLayout/NSLayoutConstraint+PureLayout.h>
#import "NSLayoutConstraint+AAPureLayout.h"

@implementation NSLayoutConstraint (AAPureLayout)

- (CGFloat)aa_autoRemove {
    CGFloat constant = self.constant;
    [self autoRemove];
    return constant;
}


@end