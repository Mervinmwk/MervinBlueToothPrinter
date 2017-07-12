//
//  ViewController.m
//  MervinBlueToothPrinter
//
//  Created by Mervin on 2017/7/10.
//  Copyright © 2017年 Mervin. All rights reserved.
//

#import "ViewController.h"
#import "MervinBlueToothPrinterViewController.h"
#import "BlueTooth.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setTitle:@"打印" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(goToPrintVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)goToPrintVC
{
    BlueTooth * blueTooth = [BlueTooth shareBlueTooth];
    blueTooth.parentVC = self;
    [blueTooth printStringWithContent:@"All in or Nothing!"];
}


@end
