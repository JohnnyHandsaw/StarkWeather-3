//
//  DetailViewController.h
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>


@class RSI;
@interface DetailViewController : UITableViewController <MFMailComposeViewControllerDelegate>
{
    
}
- (IBAction)sendEmail:(id)sender;



@property (strong, nonatomic) RSI *project;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *roofSQSLabel;
@property (weak, nonatomic) IBOutlet UILabel *BFHeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *LFWallsLabel;
@property (weak, nonatomic) IBOutlet UILabel *LFCurbsLabel;
@property (weak, nonatomic) IBOutlet UILabel *LFCopingLabel;
@property (weak, nonatomic) IBOutlet UILabel *LFEdgeLabel;
@property (weak, nonatomic) IBOutlet UILabel *ACCurbsLabel;
@property (weak, nonatomic) IBOutlet UILabel *ACSleepersLabel;
@property (weak, nonatomic) IBOutlet UILabel *JacksLabel;
@property (weak, nonatomic) IBOutlet UILabel *PansLabel;
@property (weak, nonatomic) IBOutlet UILabel *CladScuppersLabel;
@property (weak, nonatomic) IBOutlet UILabel *ScuppersLabel;
@property (weak, nonatomic) IBOutlet UILabel *DrainsLabel;
@property (weak, nonatomic) IBOutlet UILabel *PipesLabel;
@property (weak, nonatomic) IBOutlet UILabel *TTopsLabel;
@property (weak, nonatomic) IBOutlet UILabel *CornersLabel;
@property (weak, nonatomic) IBOutlet UILabel *SkylightsLabel;
@property (weak, nonatomic) IBOutlet UILabel *SkylightsRepLabel;

@end
