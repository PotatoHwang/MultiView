//
//  ViewController.m
//  MultiView
//
//  Created by Peter Pan on 4/10/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)showSleepRabbit:(id)sender
{
    
}

-(void)showEatRabbit:(id)sender
{
    
}

-(void)showPaperRabbit:(id)sender
{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *sleepBut = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    sleepBut.frame = CGRectMake(60, 100, 200, 30);
    [sleepBut setTitle:@"睡覺的白彼得" forState:UIControlStateNormal];
    [self.view addSubview:sleepBut];
    [sleepBut addTarget:self action:@selector(showSleepRabbit:)
       forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *eatBut = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    eatBut.frame = CGRectMake(60, 200, 200, 30);
    [eatBut setTitle:@"吃東西的白彼得" forState:UIControlStateNormal];
    [self.view addSubview:eatBut];
    [eatBut addTarget:self action:@selector(showEatRabbit:)
     forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *paperBut = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    paperBut.frame = CGRectMake(60, 300, 200, 30);
    [paperBut setTitle:@"面紙盒和白彼得" forState:UIControlStateNormal];
    [self.view addSubview:paperBut];
    [paperBut addTarget:self action:@selector(showPaperRabbit:)
       forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
