//
//  MapViewController.m
//  MissingKids
//
//  Created by Taylor Jones on 3/7/14.
//  Copyright (c) 2014 National Center For Missing And Exploited Children. All rights reserved.
//

#import "MapViewController.h"
#import "LocationDataController.h"
#import "Location.h"

@interface MapViewController ()

@end

@implementation MapViewController

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

- (void) viewDidAppear:(BOOL)animated
{
    LocationDataController *model = [[LocationDataController alloc] init];
    Location *child = [model getChildLocation];
    
    CLLocationCoordinate2D childCoordinates;
    childCoordinates.latitude = child.latitude;
    childCoordinates.longitude = child.longitude;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(childCoordinates, 750, 750);
    
    [self.mapView setRegion:viewRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
