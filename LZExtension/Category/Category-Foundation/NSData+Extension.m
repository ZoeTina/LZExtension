//
//  NSData+Extension.m
//  LZExtension
//
//  Created by HC on 16/10/27.
//  Copyright © 2016年 HC. All rights reserved.
//

#import "NSData+Extension.h"

@implementation NSData (Extension)


+ (NSString * _Nonnull)lz_convertToUTF8String:(NSData * _Nonnull)data {
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (NSString * _Nonnull)lz_convertToUTF8String {
    return [NSData lz_convertToUTF8String:self];
}

+ (NSString * _Nonnull)lz_convertToASCIIString:(NSData * _Nonnull)data {
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

- (NSString * _Nonnull)lz_convertToASCIIString {
    return [NSData lz_convertToASCIIString:self];
}


- (NSString * _Nullable)lz_convertUUIDToString {
    return [[[self description] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]] stringByReplacingOccurrencesOfString:@" " withString:@""];
}


@end
