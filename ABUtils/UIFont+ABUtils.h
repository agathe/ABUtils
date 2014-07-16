//
// Created by Agathe Battestini on 2/20/14.

//

#import <Foundation/Foundation.h>

@interface UIFont (ABUtils)

+ (UIFont *)abDefaultFontWithSize:(CGFloat)size;

+ (UIFont *)abDefaultLightFontWithSize:(CGFloat)size;

+ (UIFont *)abDefaultItalicFontWithSize:(CGFloat)size;

+ (UIFont *)abDefaultBoldFontWithSize:(CGFloat)size;

+ (NSDictionary *)abStringAttributesWithSize:(CGFloat)size withColor:(UIColor *)color;


+ (NSDictionary *)abParagraphStyleDictionaryForLineBreakStyle:(NSLineBreakMode)lineBreakMode;

+ (NSMutableParagraphStyle *)abParagraphStyleForLineBreakStyle:(NSLineBreakMode)lineBreakMode;
@end