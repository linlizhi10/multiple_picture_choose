//
//  ViewController.m
//  multiple_picture_choose
//
//  Created by skunk  on 15/4/29.
//  Copyright (c) 2015年 linlizhi. All rights reserved.
//

#import "ViewController.h"
#import "SKCheckButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    // Do any additional setup after loading the view, typically from a nib.
    SKCheckButton *button = [SKCheckButton shareCheckButton];
    button.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)buttonClick:(SKCheckButton *)sender
{
    SKCheckButton *SKButton = sender;
    SKButton.isChecked = !sender.isChecked;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
