//
//  UIColor+Category.m
//  LZExtension
//
//  Created by 寕小陌 on 2016/12/12.
//  Copyright © 2016年 寕小陌. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)
+ (nonnull UIColor *)colorWithHex:(long)hexColor {
    return [UIColor colorWithHex:hexColor opacity:1.];
}

+ (nonnull UIColor *)colorWithHex:(long)hexColor opacity:(float)opacity {
    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
    float blue = ((float)(hexColor & 0xFF))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
}

+ (nonnull UIColor *)colorWithHexString:(nonnull NSString *)str opacity:(float)opacity {
    if (str.length < 6) {
        return nil;
    }
    NSInteger delta = 0;
    if ([str hasPrefix:@"#"]) {
        delta = 1;
    }
    unsigned red,green,blue;
    NSRange range;
    range.length = 2;
    range.location = 0 + delta;
    [[NSScanner scannerWithString:[str substringWithRange:range]] scanHexInt:&red];
    range.location = 2 + delta;
    [[NSScanner scannerWithString:[str substringWithRange:range]] scanHexInt:&green];
    range.location = 4 + delta;
    [[NSScanner scannerWithString:[str substringWithRange:range]] scanHexInt:&blue];
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue opacity:opacity];
    return color;
}

+ (nonnull instancetype)colorWithRed:(u_int8_t)red green:(u_int8_t)green blue:(u_int8_t)blue opacity:(float)opacity{
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:opacity];
}

+ (nonnull UIColor *)colorWithHexString:(NSString *)hexString
{
    return [UIColor colorWithHexString:hexString opacity:1.];
}

+ (nonnull instancetype)colorWithRed:(u_int8_t)red green:(u_int8_t)green blue:(u_int8_t)blue {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
}

+ (nonnull instancetype)randomColor {
    u_int8_t red = arc4random_uniform(256);
    u_int8_t green = arc4random_uniform(256);
    u_int8_t blue = arc4random_uniform(256);
    
    return [UIColor colorWithRed:red green:green blue:blue];
}

#pragma mark - 颜色值
- (u_int8_t)redValue {
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[0] * 255);
}

- (u_int8_t)greenValue {
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[1] * 255);
}

- (u_int8_t)blueValue {
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[2] * 255);
}

- (CGFloat)alphaValue {
    return CGColorGetComponents(self.CGColor)[3];
}

@end
