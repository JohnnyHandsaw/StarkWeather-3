//
//  MasterViewController.m
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "RSIDataController.h"
#import "RSI.h"
#import "AddProjectViewController.h"

@implementation MasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[RSIDataController alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem.accessibilityHint = @"Adds a new project.";
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"RSICell";
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    RSI *projectAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    [[cell textLabel] setText:projectAtIndex.name];
    
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (IBAction)done:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"ReturnInput"])
    {
        
        AddProjectViewController *addController = [segue sourceViewController];
        if (addController.rsi)
            
            [self.dataController addRSIWithProject:addController.rsi];
        [[self tableView] reloadData];
    }
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)cancel:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"CancelInput"])
    {
        
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowProjectDetails"])
   {
//      DetailViewController *detailViewController = [segue destinationViewController];
//        
//        detailViewController.project = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];
//    }
    DetailViewController *detailViewController = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
//    if ([[segue identifier] isEqualToString:@"ShowProjectDetails"]){
//        //NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    detailViewController.project = self.dataController.masterProjectList [indexPath.row];
}
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [[RSIDataController sharedGlobalVariables].masterProjectList removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}
@end
