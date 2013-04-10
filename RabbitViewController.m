//
//  RabbitViewController.m
//  MultiView
//
//  Created by Peter Pan on 4/10/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "RabbitViewController.h"

@interface RabbitViewController ()

@end

@implementation RabbitViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)back:(id)sender
{
    NSLog(@"call dismissViewControllerAnimated");
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"after dismissViewControllerAnimated");
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor yellowColor];
    
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    [self.view addSubview:navBar];
    navBar.tintColor = [UIColor orangeColor];
    UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:@"白彼得寫真"];

    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStylePlain
                                   target:self action:@selector(back:)];
    navItem.leftBarButtonItem = backButton;
    
    [navBar pushNavigationItem:navItem animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
