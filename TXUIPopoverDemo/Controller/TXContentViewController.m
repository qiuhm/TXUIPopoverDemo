//
//  TXContentViewController.m
//  TXUIPopoverDemo
//
//  Created by tingxuan.qhm on 14-1-22.
//  Copyright (c) 2014年 tingxuan.qhm. All rights reserved.
//

#import "TXContentViewController.h"

@interface TXContentViewController ()

@end

@implementation TXContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UILabel * titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 300, 50)];
    titleLabel.text = @"我是popover的内容";
    titleLabel.textColor = [UIColor redColor];
    [self.view addSubview:titleLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
