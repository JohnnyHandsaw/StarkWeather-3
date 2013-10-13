//
//  DetailViewController.m
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "DetailViewController.h"
#import "RSI.h"

@interface DetailViewController ()

- (void)configureView;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setProject:(RSI *) newProject
{
    if (_project != newProject)
    {
        _project = newProject;
        
        // Update the view.
        [self configureView];
    }
}
- (void)configureView
{
    // Update the user interface for the detail item.
    RSI *theProject = self.project;
    
        if (theProject)
    {
        self.nameLabel.text = theProject.name;
        self.cityLabel.text = theProject.city;
        self.roofSQSLabel.text = theProject.roofSQS;
        self.BFHeightLabel.text = theProject.BFHeight;
        self.LFWallsLabel.text = theProject.LFWalls;
        self.LFCurbsLabel.text = theProject.LFCurbs;
        self.LFCopingLabel.text = theProject.LFCoping;
        self.LFEdgeLabel.text = theProject.LFEdge;
        self.ACCurbsLabel.text = theProject.ACCurbs;
        self.ACSleepersLabel.text = theProject.ACSleepers;
        self.JacksLabel.text = theProject.Jacks;
        self.PansLabel.text = theProject.Pans;
        self.CladScuppersLabel.text = theProject.CladScuppers;
        self.ScuppersLabel.text = theProject.Scuppers;
        self.DrainsLabel.text = theProject.Drains;
        self.PipesLabel.text = theProject.Pipes;
        self.TTopsLabel.text = theProject.TTops;
        self.CornersLabel.text = theProject.Corners;
        self.SkylightsLabel.text = theProject.Skylights;
        self.SkylightsRepLabel.text = theProject.SkylightsRep;

            }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)sendEmail:(id)sender
{
    MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    if ([MFMailComposeViewController canSendMail])
    {
        [composer setToRecipients:[NSArray arrayWithObjects:@"", nil]];
        [composer setSubject:@""];
        [composer setMessageBody:@"Enter message here." isHTML:NO];
        [composer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentViewController:composer animated:YES completion:NULL];
    }
    
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"An error has occured." delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil, nil];
        [alert show];
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (IBAction)Done:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}


-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    if (error)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"An error has occured." delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil, nil];
        [alert show];
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
    else
    {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}




@end
