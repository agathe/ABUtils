//
// Created by Agathe Battestini on 2/20/14.

//

#import "UIFont+ABUtils.h"


@implementation UIFont (ABUtils)

+ (UIFont*)abDefaultFontWithSize:(CGFloat )size
{
    return [UIFont fontWithName:@"HelveticaNeue" size:size];
}

+ (UIFont*)abDefaultLightFontWithSize:(CGFloat )size
{
    return [UIFont fontWithName:@"HelveticaNeue-Light" size:size];
}

+ (UIFont*)abDefaultBoldFontWithSize:(CGFloat )size
{
    return [UIFont fontWithName:@"HelveticaNeue-Bold" size:size];
}

+ (UIFont *)abDefaultItalicFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"HelveticaNeue-Italic" size:size];
}


+ (NSDictionary *)abStringAttributesWithSize:(CGFloat)size withColor:(UIColor*)color
{
    return @{ NSFontAttributeName : [UIFont abDefaultFontWithSize:size],
//            NSUnderlineStyleAttributeName : @1 ,
            NSForegroundColorAttributeName : color
    };
}

+ (NSDictionary *)abParagraphStyleDictionaryForLineBreakStyle:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = lineBreakMode;
    return [NSDictionary dictionaryWithDictionary:paragraphStyle];
}

+ (NSMutableParagraphStyle *)abParagraphStyleForLineBreakStyle:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = lineBreakMode;
    return paragraphStyle;
}


@end
