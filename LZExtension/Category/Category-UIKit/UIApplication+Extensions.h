//
//  UIApplication+Extensions.h
//  LZExtension
//
//  Created by 寕小陌 on 2016/12/12.
//  Copyright © 2016年 寕小陌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

/**
 *  此分类增加了一些关于UIApplication的有用方法
 */
@interface UIApplication (Extensions)

/**
 * 返回应用程序代理
 */
+ (AppDelegate *)appDelegate;


/**
 *  根视图控制器
 */
+ (UIViewController *)rootViewController;

/**
 *  返回当前设备对应的启动图片
 */
+ (UIImage *)launchImage;

@end
