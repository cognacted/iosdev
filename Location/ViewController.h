//
//  ViewController.h
//  Location
//
//  Created by Leonid Litvak on 2/7/15.
//  Copyright (c) 2015 Leonid Litvak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *latitudeLabel;
@property (weak, nonatomic) IBOutlet UITextField *longitudeLabel;
@property (weak, nonatomic) IBOutlet UITextField *accuracyLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;


@end

