//
//  LocationDataController.m
//  MissingKids
//
//  Created by Taylor Jones on 3/7/14.
//  Copyright (c) 2014 National Center For Missing And Exploited Children. All rights reserved.
//

#import "LocationDataController.h"

@implementation LocationDataController

- (Location*)getChildLocation
{
    Location *testLocation = [[Location alloc] init];
    testLocation.address = @"Missing Child, 14204 Cove Ridge Court, Midlothian, VA 23112";
    testLocation.photoFileName = @"missingchild.png";
    testLocation.latitude = 37.447508;
    testLocation.longitude = -77.669622;
    
    return testLocation;
}

@end
