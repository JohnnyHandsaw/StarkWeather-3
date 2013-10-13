//
//  data.h
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//


#define kProjectName @"Project Name"
#define kCity @"City"
#define kroofSQS @"Roof SQS"
#define kBFHeight @"Base Flashing Height"
#define kLFWalls @"Linear Feet: Walls"
#define kLFCurbs @"Linear Feet: Curbs"
#define kLFEdge @"Linear Feet: Edge"
#define kLFCoping @"Linear Feet: Coping"
#define kACCurbs @"# AC Units Curbs"
#define kACSleepers @"# AC Units Sleepers"
#define kJacks @"# Lead Jacks"
#define kPans @"Sealant Pans"
#define kCladScuppers @"# Cladded Scuppers"
#define kScuppers @"# Scuppers"
#define kDrains @"# Drains"
#define kPipes @"# of Pipes"
#define kTTops @"# T-Tops/Vents"
#define kCorners @"# Corners"
#define kSkylights @"# Skylights"
#define kSkylightsRep @"# Skylights Replaced"

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RSI : NSObject <NSCoding, NSCopying>

{
    
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *roofSQS;
@property (nonatomic, copy) NSString *BFHeight;
@property (nonatomic, copy) NSString *LFWalls;
@property (nonatomic, copy) NSString *LFCurbs;
@property (nonatomic, copy) NSString *LFEdge;
@property (nonatomic, copy) NSString *LFCoping;
@property (nonatomic, copy) NSString *ACCurbs;
@property (nonatomic, copy) NSString *ACSleepers;
@property (nonatomic, copy) NSString *Jacks;
@property (nonatomic, copy) NSString *Pans;
@property (nonatomic, copy) NSString *CladScuppers;
@property (nonatomic, copy) NSString *Scuppers;
@property (nonatomic, copy) NSString *Drains;
@property (nonatomic, copy) NSString *Pipes;
@property (nonatomic, copy) NSString *TTops;
@property (nonatomic, copy) NSString *Corners;
@property (nonatomic, copy) NSString *Skylights;
@property (nonatomic, copy) NSString *SkylightsRep;

-(id)initWithName:(NSString *)name city:(NSString *)city roofSQS:(NSString *)roofSQS BFHeight:(NSString *)BFHeight LFWalls:(NSString *)LFWalls LFCurbs:(NSString *)LFCurbs LFEdge:(NSString *)LFEdge LFCoping:(NSString *)LFCoping ACCurbs:(NSString *)ACCurbs ACSleepers:(NSString *)ACSleepers Jacks:(NSString *)Jacks Pans:(NSString *)Pans CladScuppers:(NSString *)CladScuppers Scuppers:(NSString *)Scuppers Drains:(NSString *)Drains Pipes:(NSString *)Pipes TTops:(NSString *)TTops Corners:(NSString *)Corners Skylights:(NSString *)Skylights SkylightsRep:(NSString *)SkylightsRep;
@end
