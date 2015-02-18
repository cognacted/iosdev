//
//  ViewController.m
//  Location
//
//  Created by Leonid Litvak on 2/7/15.
//  Copyright (c) 2015 Leonid Litvak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
CLLocationManager* _locationManager;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager startUpdatingLocation];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    // collecting the most recent location from the array of locations
    CLLocation *newLocation = [locations lastObject];
    NSLog(@"%.2f",newLocation.coordinate.latitude);
  
   // self.longitudeLabel.text =
    NSLog(@"%.2f",newLocation.coordinate.longitude);
    //self.accuracyLabel.text =
    NSLog(@"%.1fm",newLocation.horizontalAccuracy);
    [self.spinner stopAnimating];
}
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    //self.latitudeLabel.text = @"-";
    //self.longitudeLabel.text = @"-";
    //self.accuracyLabel.text = @"-";
     NSLog(@"-+-+-");
    [self.spinner stopAnimating];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
