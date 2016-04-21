//
//  ViewController.m
//  倒计时Button
//
//  Created by mac on 16/1/6.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+countDown.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self _createSubView];
}

- (void)_createSubView
{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 50)];
    
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"lll" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

- (void)tap:(UIButton *)sender
{
    [sender startWithTime:10 title:@"lll" countDownTitle:@"s" mainColor:[UIColor redColor] countColor:[UIColor grayColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
