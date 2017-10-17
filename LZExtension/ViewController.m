//
//  ViewController.m
//  LZExtension
//
//  Created by 寕小陌 on 2017/10/18.
//  Copyright © 2017年 寕小陌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];//labelWithTitle
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *title = [UILabel labelWithTitle:@"都是一些扩张类,具体请看代码"
                                       color:kColorWithRGB(211, 0, 0)
                                        font:[UIFont systemFontOfSizeAdapter:15.0]];
    title.frame = CGRectMake(0, (self.view.height-20)/2, self.view.width, 20);
    [self.view addSubview:title];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
