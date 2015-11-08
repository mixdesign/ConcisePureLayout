#import <PureLayout/NSLayoutConstraint+PureLayout.h>
#import "NSLayoutConstraint+ConcisePureLayout.h"

@implementation NSLayoutConstraint (ConcisePureLayout)

- (CGFloat)aa_autoRemove {
    CGFloat constant = self.constant;
    [self autoRemove];
    return constant;
}


@end