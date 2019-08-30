#import "UIView+Frame.h"

@implementation UIView (Frame)

- (CGPoint)origin {
    return self.frame.origin;
}

- (CGSize)size {
    return self.frame.size;
}

- (CGFloat)x {
    return self.origin.x;
}

- (CGFloat)y {
    return self.origin.y;
}

- (CGFloat)wid {
    return self.size.width;
}

- (CGFloat)hei {
    return self.size.height;
}

- (CGFloat)yh {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)xw {
    return self.frame.origin.x + self.frame.size.width;
}

@end
