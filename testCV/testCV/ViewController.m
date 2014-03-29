//
//  ViewController.m
//  testCV
//
//  Created by Dare Ryan on 3/28/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController

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
}
-(void)viewWillAppear:(BOOL)animated
{
    FirstView *firstView = [[FirstView alloc]init];
    firstView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:firstView];
    
    firstView.frame = self.view.frame;
    
    SecondView *secondView = [[SecondView alloc]init];
    secondView.backgroundColor = [UIColor redColor];
    [firstView addSubview:secondView];
    [secondView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [firstView addConstraint:[NSLayoutConstraint constraintWithItem:firstView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:secondView attribute:NSLayoutAttributeTop multiplier:1 constant:-100]];
    [firstView addConstraint:[NSLayoutConstraint constraintWithItem:firstView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:secondView attribute:NSLayoutAttributeBottom multiplier:1 constant:100]];
    [firstView addConstraint:[NSLayoutConstraint constraintWithItem:firstView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:secondView attribute:NSLayoutAttributeLeading multiplier:1 constant:-30]];
    [firstView addConstraint:[NSLayoutConstraint constraintWithItem:firstView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:secondView attribute:NSLayoutAttributeTrailing multiplier:1 constant:30]];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
