//
//  NSArray+Extension.h
//  LZExtension
//
//  Created by 寕小陌 on 2017/6/28.
//  Copyright © 2017年 寕小陌. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  此分类增加了一些关于NSArray的有用方法
 */
@interface NSArray (Extension)

- (NSString *_Nonnull)lz_descriptionWithLocale:(id _Nullable)locale ;

/**
 *  通过给出的索引在安全的情况下获取一个对象(如果数组本身为空或者索引超出了范围则返回nil)
 *
 *  @param index 索引
 *
 *  @return 返回在安全的情况下通过索引获取的对象(如果数组本身为空或者索引超出了范围则返回nil)
 */
- (id _Nullable)lz_safeObjectAtIndex:(NSUInteger)index;

/**
 *  根据自身创建一个倒序的数组
 *
 *  @return 返回倒序数组
 */
- (NSArray * _Nonnull)lz_reversedArray;
/**
 *  通过给出的数组创建一个倒序数组
 *
 *  @param array 需要被倒序处理的数组
 *
 *  @return 返回倒序数组
 */
+ (NSArray * _Nonnull)lz_reversedArray:(NSArray * _Nonnull)array;

/**
 *  以NSString类型将数组本身转换为JSON
 *
 *  @return 返回NSString类型的JSON或者当解析错误时返回nil
 */
- (NSString * _Nonnull)lz_arrayToJson;

/**
 *  将给出的数组转换为NSString类型的JSON
 *
 *  @param array 需要被转换的数组
 *
 *  @return 返回NSString类型的JSON或者当解析错误时返回nil
 */
+ (NSString * _Nonnull)lz_arrayToJson:(NSArray * _Nonnull)array;


/**
 *  将数组本身模拟为一个循环，当超出数组范围时，在相应的位置重新开始
 *
 *  @param index 索引
 *
 *  @return 返回给出索引在循环中的对象
 */
- (id _Nullable)lz_objectAtCircleIndex:(NSInteger)index;
@end

