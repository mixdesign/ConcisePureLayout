//
//  NSArray+ConsicePureLayout.m
//  Zenge
//
//  Created by Almas Adilbek on 1/13/16.
//  Copyright © 2016 Zenge. All rights reserved.
//

#import "NSArray+ConcisePureLayout.h"

@implementation NSArray (ConcisePureLayout)

- (NSLayoutConstraint *)topConstraint {
    if(self.count == 4) {
        return self[0];
    }
    return nil;
}

- (NSLayoutConstraint *)leadingConstraint {
    if(self.count == 4) {
        return self[1];
    }
    return nil;
}

- (NSLayoutConstraint *)bottomConstraint {
    if(self.count == 4) {
        return self[2];
    }
    return nil;
}

- (NSLayoutConstraint *)trailingConstraint {
    if(self.count == 4) {
        return self[3];
    }
    return nil;
}


@end
