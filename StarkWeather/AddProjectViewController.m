//
//  AddProjectViewController.m
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "AddProjectViewController.h"
#import "RSI.h"

@class RSI;

@interface AddProjectViewController ()

@end

@implementation AddProjectViewController


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ((textField == self.nameInput) || (textField == self.cityInput) || (textField == self.roofSQSInput) || (textField == self.BFInput) || (textField == self.LFWallsInput)|| (textField == self.LFCurbsInput) || (textField == self.LFEdgeInput) || (textField == self.LFCopingInput)
|| (textField == self.ACCurbsInput) || (textField == self.ACSleepersInput) || (textField == self.JacksInput) || (textField == self.PansInput) || (textField == self.CladScuppersInput) || (textField == self.ScuppersInput) || (textField == self.DrainsInput) || (textField == self.PipesInput) || (textField == self.TTopInput) || (textField == self.CornersInput) || (textField == self.SkylightsInput) || (textField == self.SkylightsRepInput))
        {
       [textField resignFirstResponder];
    }
    return YES;
}

- (void)viewDidLoad
{
        
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [self.view addGestureRecognizer:tapRecognizer];
    
    [self createPicker];
    
    [super viewDidLoad];

}

- (void)viewDidUnload
{
    _cityInput = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ReturnInput"])
    {
        if ([self.nameInput.text length] || [self.cityInput.text length] || [self.roofSQSInput.text length] || [self.BFInput.text length] || [self.LFWallsInput.text length] || [self.LFCurbsInput.text length] || [self.LFEdgeInput.text length] || [self.LFCopingInput.text length] || [self.ACCurbsInput.text length] || [self.ACSleepersInput.text length] || [self.JacksInput.text length] || [self.PansInput.text length] || [self.CladScuppersInput.text length] || [self.ScuppersInput.text length] || [self.DrainsInput.text length] || [self.PipesInput.text length] || [self.TTopInput.text length] || [self.CornersInput.text length] || [self.SkylightsInput.text length] || [self.SkylightsRepInput.text length])
        {
            RSI *project;
            
                        
            //sighting = [[BirdSighting alloc] initWithName:self.birdNameInput.text location:self.locationInput.text date:today];
            
            project = [[RSI alloc] initWithName:self.nameInput.text city:self.cityInput.text roofSQS:self.roofSQSInput.text BFHeight:self.BFInput.text LFWalls:self.LFWallsInput.text LFCurbs:self.LFCurbsInput.text LFEdge:self.LFEdgeInput.text LFCoping:self.LFCopingInput.text ACCurbs:self.ACCurbsInput.text ACSleepers:self.ACSleepersInput.text Jacks:self.JacksInput.text Pans:self.PansInput.text CladScuppers:self.CladScuppersInput.text Scuppers:self.ScuppersInput.text Drains:self.DrainsInput.text Pipes:self.PipesInput.text TTops:self.TTopInput.text Corners:self.CornersInput.text Skylights:self.SkylightsInput.text SkylightsRep:self.SkylightsRepInput.text];
            
            self.rsi = project;
        }
    }
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    _cityInput.inputView=picker;
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component
{
    return [cities count];
}

-(NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [cities objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    _cityInput.text= [cities objectAtIndex:row];
}

- (void)createPicker
{
    cities = [[NSMutableArray
                alloc]initWithObjects:@"Apache Junction, Maricopa County", @"Apache Junction, Pinal County", @"Arlington", @"Avondale", @"Benson", @"Bisbee", @"Black Canyon City", @"Buckeye", @"Bullhead City", @"Camp Verde", @"Carefree", @"Casa Grande", @"Cave Creek", @"Chandler", @"Chino Valley", @"Clarkdale", @"Claypool", @"Clifton", @"Colorado City", @"Coolidge", @"Cottonwood", @"Desert Hills", @"Dewey-Humboldt", @"Douglas", @"Duncan", @"Eagar", @"El Mirage", @"Eloy", @"Flagstaff", @"Florence", @"Fountain Hills", @"Fredownia", @"Gila Bend", @"Gilbert", @"Glendale", @"Globe", @"Gold Canyon", @"Goodyear", @"Guadalupe", @"Hayden", @"Heber", @"Higley", @"Holbrook", @"Huachuca City", @"Jerome", @"Kearney", @"Kingman, Mohave County", @"Lake Havasu", @"Litchfield Park", @"Mammoth", @"Marana", @"Maricopa", @"Mayer", @"Mesa", @"Miami", @"Navajo Nation", @"Nogales", @"Oro Valley", @"Page", @"Paradise Valley", @"Parker", @"Patagonia", @"Payson", @"Peoria", @"Phoenix", @"Pima", @"Pinetop/Lake", @"Prescott", @"Prescott Valley", @"Quartzsite", @"Queen Creek, Maricopa County", @"Queen Creek, Pinal County", @"Rio Rico", @"Rio Verde", @"Safford", @"Sahuarita", @"San Luis", @"San Manuel", @"Scottsdale", @"Sedona, Coconino County", @"Sedona, Yavapai County", @"Seligman", @"Show Low", @"Sierra Vista", @"Snowflake", @"Somerton", @"South Tucson", @"Springerville", @"St. Johns", @"Stanfield", @"Star Valley", @"Sun City", @"Sun Lakes", @"Superior", @"Surprise", @"Taylor", @"Tempe", @"Thatcher", @"Tolleson", @"Tombstone", @"Tonapah", @"Tuba City", @"Tucson", @"Waddell", @"Welton", @"Wickenburg", @"Wilcox", @"Williams", @"Winkel, Gila County", @"Winkel, Pinal County", @"Winslow", @"Wittman", @"Youngtown", @"Yuma", nil];

    
    
    picker = [[UIPickerView alloc] init];
    
    
    picker.showsSelectionIndicator = YES;   // note this is default to NO
    [picker setDataSource:self];
    [picker setDelegate:self];
    [picker setShowsSelectionIndicator:YES];
    _cityInput.inputView = picker;
    
}



-(void)tap:(UITapGestureRecognizer *)gr
{
    [self.view endEditing:YES];
}

                                                                                                                                                                                                                                                                                                                                
@end
