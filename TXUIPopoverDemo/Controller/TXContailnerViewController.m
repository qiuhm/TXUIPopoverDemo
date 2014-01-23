//
//  TXContailnerViewController.m
//  TXUIPopoverDemo
//
//  Created by tingxuan.qhm on 14-1-22.
//  Copyright (c) 2014年 tingxuan.qhm. All rights reserved.
//

#import "TXContailnerViewController.h"
#import "TXContentViewController.h"

@interface TXContailnerViewController ()
@property(nonatomic,strong)UIPopoverController * popoverVCA;
@property(nonatomic,strong)UIPopoverController * popoverVCB;
@property(nonatomic,strong)UIBarButtonItem * popoverButton;

@end

@implementation TXContailnerViewController

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
    UIButton * popoBtn = [[UIButton alloc]initWithFrame:CGRectMake(200, 180, 150, 50)];
    popoBtn.layer.cornerRadius = 10;
    [popoBtn setTitle:@"展开popover" forState:UIControlStateNormal];
    [popoBtn addTarget:self action:@selector(popoBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    popoBtn.backgroundColor = [UIColor orangeColor];
    [popoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:popoBtn];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark popoBtnClicked
-(void)popoBtnClicked
{
    TXContentViewController * contentVC  = [[TXContentViewController alloc]initWithNibName:nil bundle:nil];
    self.popoverVCA = [[UIPopoverController alloc]initWithContentViewController:contentVC];
    self.popoverVCA.backgroundColor = [UIColor purpleColor];
    [self.popoverVCA presentPopoverFromRect:CGRectMake(200, 200, 100, 100) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES] ;
    
}

@end
