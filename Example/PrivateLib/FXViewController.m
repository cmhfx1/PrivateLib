//
//  FXViewController.m
//  PrivateLib
//
//  Created by cmhfx1@gmail.com on 05/26/2019.
//  Copyright (c) 2019 cmhfx1@gmail.com. All rights reserved.
//

#import "FXViewController.h"
#import "Person.h"
#import "Person+PC1.h"
//#import "Dog.h"

@interface FXViewController ()
@property (nonatomic,strong)Person *ps;
@end

@implementation FXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    [[Dog new] say];
    
    Person *p = [Person new];
    self.ps = p;
    [p say];
    [p run];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
