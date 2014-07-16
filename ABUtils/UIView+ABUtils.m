//
// Created by Agathe Battestini on 2/3/14.
//

#import "UIView+ABUtils.h"
#import "UIColor+ABUtils.h"

@implementation UIView (ABUtils)


- (void)colorizeRandomlyViews
{
    [self.subviews enumerateObjectsUsingBlock:^(UIView *view, NSUInteger idx, BOOL *stop) {
        view.backgroundColor = [UIColor randomColorWithAlpha:0.3f];
        [view colorizeRandomlyViews];
    }];
}

- (void)setLayerBorderColor:(UIColor *)layerBorderColor {
    self.layer.borderColor = [layerBorderColor CGColor];
}

- (UIColor *)layerBorderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}


@end