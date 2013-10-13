//
//  MasterViewController.h
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSIDataController.h"

@class RSIDataController;

@interface MasterViewController : UITableViewController


@property (strong, nonatomic) RSIDataController *dataController;

- (IBAction)done:(UIStoryboardSegue *)segue;
- (IBAction)cancel:(UIStoryboardSegue *)segue;


@end
