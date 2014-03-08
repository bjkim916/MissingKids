//
//  Location.h
//  MissingKids
//
//  Created by Taylor Jones on 3/7/14.
//  Copyright (c) 2014 National Center For Missing And Exploited Children. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (strong, nonatomic) NSString *address;

@property (strong, nonatomic) NSString *photoFileName;

@property (nonatomic) float latitude;

@property (nonatomic) float longitude;

@end
