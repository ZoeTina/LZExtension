//
//  UIFont+Extension.m
//  LZExtension
//
//  Created by 寕小陌 on 2016/12/9.
//  Copyright © 2016年 寕小陌. All rights reserved.
//

#import "UIFont+Extension.h"

@implementation UIFont (Extension)
/**
 *  根据不同的设置返回不同的字体
 */
+ (CGFloat)fontToSize:(CGFloat)fontSize
{
    float widthR = [UIScreen mainScreen].bounds.size.width/375.0;
    float tempFontSize = fontSize;
    widthR > 1 ? (tempFontSize+=1) : (tempFontSize-=1);
    
    return tempFontSize;
}

+ (UIFont*)systemFontOfSizeAdapter:(CGFloat)fontSize
{
    return [UIFont systemFontOfSize:[UIFont fontToSize:fontSize]];
}

+ (UIFont*)fontWithName:(NSString *)fontName sizeAdapter:(CGFloat)fontSize
{
    return [UIFont fontWithName:fontName size:[UIFont fontToSize:fontSize]];
}

@end
