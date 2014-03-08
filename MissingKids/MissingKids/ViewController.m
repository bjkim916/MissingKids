//
//  ViewController.m
//  MissingKids
//
//  Created by Taylor Jones on 3/7/14.
//  Copyright (c) 2014 National Center For Missing And Exploited Children. All rights reserved.
//

#import "ViewController.h"
#import "LocationDataController.h"
#import "Location.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    LocationDataController *model = [[LocationDataController alloc] init];
    Location *child = [model getChildLocation];
    
    self.addressLabel.text = child.address;
    [self.photoImageView setImage:[UIImage imageNamed:child.photoFileName]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
