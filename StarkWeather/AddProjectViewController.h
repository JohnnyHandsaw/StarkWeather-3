//
//  AddProjectViewController.h
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSI;
@interface AddProjectViewController : UITableViewController <UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
{
IBOutlet UIPickerView *picker;
    NSMutableArray *cities;
}
@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UITextField *cityInput;
@property (weak, nonatomic) IBOutlet UITextField *roofSQSInput;
@property (strong, nonatomic) RSI *rsi;
@property (weak, nonatomic) IBOutlet UITextField *BFInput;
@property (weak, nonatomic) IBOutlet UITextField *LFWallsInput;
@property (weak, nonatomic) IBOutlet UITextField *LFCurbsInput;
@property (weak, nonatomic) IBOutlet UITextField *LFCopingInput;
@property (weak, nonatomic) IBOutlet UITextField *LFEdgeInput;
//@property (weak, nonatomic) IBOutlet UITableViewCell ;
@property (weak, nonatomic) IBOutlet UITextField *ACCurbsInput;
@property (weak, nonatomic) IBOutlet UITextField *ACSleepersInput;
@property (weak, nonatomic) IBOutlet UITextField *JacksInput;
@property (weak, nonatomic) IBOutlet UITextField *PansInput;
@property (weak, nonatomic) IBOutlet UITextField *CladScuppersInput;
@property (weak, nonatomic) IBOutlet UITextField *ScuppersInput;
@property (weak, nonatomic) IBOutlet UITextField *DrainsInput;
@property (weak, nonatomic) IBOutlet UITextField *PipesInput;
@property (weak, nonatomic) IBOutlet UITextField *TTopInput;
@property (weak, nonatomic) IBOutlet UITextField *CornersInput;
@property (weak, nonatomic) IBOutlet UITextField *SkylightsInput;
@property (weak, nonatomic) IBOutlet UITextField *SkylightsRepInput;



@end
