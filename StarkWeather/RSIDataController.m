//
//  DataController.m
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "RSIDataController.h"
#import "RSI.h"

@class RSI;

@interface RSIDataController ()

- (void)initializeDefaultDataList;

@end

@implementation RSIDataController

@synthesize masterProjectList;

static RSIDataController *sharedGlobalVariables = nil;


+ (RSIDataController*)sharedGlobalVariables
{
    if (sharedGlobalVariables == nil)
    {
        sharedGlobalVariables = [[super allocWithZone:NULL] init];
        
        // initialize your variables here
        
        sharedGlobalVariables.masterProjectList = nil;
    }
    
    return sharedGlobalVariables;
}

+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self)
    
    {
        if (sharedGlobalVariables == nil)
            
        {
            sharedGlobalVariables = [super allocWithZone:zone];
            return sharedGlobalVariables;
        }
    }
    
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (void)initializeDefaultDataList
{
    NSMutableArray *projectList = [[NSMutableArray alloc] init];
    self.masterProjectList = projectList;
    RSI *project;
    
    project = [[RSI alloc] initWithName:@"Test" city:@"Phoenix" roofSQS:@"1" BFHeight:@"5'2\"" LFWalls:@"2" LFCurbs:@"3" LFEdge:@"4" LFCoping:@"5" ACCurbs:@"8" ACSleepers:@"7" Jacks:@"6" Pans:@"9" CladScuppers:@"10" Scuppers:@"11" Drains:@"12" Pipes:@"13" TTops:@"14" Corners:@"15" Skylights:@"16" SkylightsRep:@"17"];
    
    [self addRSIWithProject:project];
}

- (void)setMasterProjectList:(NSMutableArray *)newList
{
    if (masterProjectList != newList)
    {
        masterProjectList = [newList mutableCopy];
    }
}

- (id)init
{
    if (self = [super init])
    {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}
- (NSUInteger)countOfList
{
    return [self.masterProjectList count];
}
- (RSI *)objectInListAtIndex:(NSUInteger)theIndex
{
    return [self.masterProjectList objectAtIndex:theIndex];
}
- (void)addRSIWithProject:(RSI *)project
{
    [self.masterProjectList addObject:project];
}




@end
