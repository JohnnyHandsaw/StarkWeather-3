//
//  DataController.h
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RSI;

@interface RSIDataController : NSObject
{
    NSMutableArray *masterProjectList;
    
}


@property (nonatomic, copy) NSMutableArray *masterProjectList;

+ (RSIDataController *)sharedGlobalVariables;

- (NSUInteger)countOfList;
- (RSI *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addRSIWithProject:(RSI *)project;

@end
