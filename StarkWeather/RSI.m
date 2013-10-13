//
//  data.m
//  StarkWeather
//
//  Created by KennethKrakowski on 9/7/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "RSI.h"

@implementation RSI

-(id)initWithName:(NSString *)name city:(NSString *)city roofSQS:(NSString *)roofSQS BFHeight:(NSString *)BFHeight LFWalls:(NSString *)LFWalls LFCurbs:(NSString *)LFCurbs LFEdge:(NSString *)LFEdge LFCoping:(NSString *)LFCoping ACCurbs:(NSString *)ACCurbs ACSleepers:(NSString *)ACSleepers Jacks:(NSString *)Jacks Pans:(NSString *)Pans CladScuppers:(NSString *)CladScuppers Scuppers:(NSString *)Scuppers Drains:(NSString *)Drains Pipes:(NSString *)Pipes TTops:(NSString *)TTops Corners:(NSString *)Corners Skylights:(NSString *)Skylights SkylightsRep:(NSString *)SkylightsRep
{
    self = [super init];
    if (self)
    {
        _name = name;
        _city = city;
        _roofSQS = roofSQS;
        _BFHeight = BFHeight;
        _LFWalls = LFWalls;
        _LFCurbs = LFCurbs;
        _LFEdge = LFEdge;
        _LFCoping = LFCoping;
        _ACCurbs = ACCurbs;
        _ACSleepers = ACSleepers;
        _Jacks = Jacks;
        _Pans = Pans;
        _CladScuppers = CladScuppers;
        _Scuppers = Scuppers;
        _Drains = Drains;
        _Pipes = Pipes;
        _TTops = TTops;
        _Corners = Corners;
        _Skylights = Skylights;
        _SkylightsRep = SkylightsRep;
        
        return self;
    }
    return nil;
}

#pragma mark NSCoding



- (void) encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:_name forKey:kProjectName];
    [encoder encodeObject:_city forKey:kCity];
    [encoder encodeObject:_roofSQS forKey:kroofSQS];
    [encoder encodeObject:_BFHeight forKey:kBFHeight];
    [encoder encodeObject:_LFWalls forKey:kLFWalls];
    [encoder encodeObject:_LFCurbs forKey:kLFCurbs];
    [encoder encodeObject:_LFEdge forKey:kLFEdge];
    [encoder encodeObject:_LFCoping forKey:kLFCoping];
    [encoder encodeObject:_ACCurbs forKey:kACCurbs];
    [encoder encodeObject:_ACSleepers forKey:kACSleepers];
    [encoder encodeObject:_Jacks forKey:kJacks];
    [encoder encodeObject:_Pans forKey:kPans];
    [encoder encodeObject:_CladScuppers forKey:kCladScuppers];
    [encoder encodeObject:_Scuppers forKey:kScuppers];
    [encoder encodeObject:_Drains forKey:kDrains];
    [encoder encodeObject:_Pipes forKey:kPipes];
    [encoder encodeObject:_TTops forKey:kTTops];
    [encoder encodeObject:_Corners forKey:kCorners];
    [encoder encodeObject:_Skylights forKey:kSkylights];
[encoder encodeObject:_SkylightsRep forKey:kSkylightsRep];
}

- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init])
    {
        
    self.name = [decoder decodeObjectForKey:kProjectName];
    self.city = [decoder decodeObjectForKey:kCity];
    self.roofSQS = [decoder decodeObjectForKey:kroofSQS];
    self.BFHeight = [decoder decodeObjectForKey:kBFHeight];
    self.LFWalls = [decoder decodeObjectForKey:kLFWalls];
    self.LFCurbs = [decoder decodeObjectForKey:kLFCurbs];
    self.LFEdge = [decoder decodeObjectForKey:kLFEdge];
    self.LFCoping = [decoder decodeObjectForKey:kLFCoping];
    self.ACCurbs = [decoder decodeObjectForKey:kACCurbs];
    self.ACSleepers = [decoder decodeObjectForKey:kACSleepers];
    self.Jacks = [decoder decodeObjectForKey:kJacks];
    self.Pans = [decoder decodeObjectForKey:kPans];
    self.CladScuppers = [decoder decodeObjectForKey:kCladScuppers];
    self.Scuppers = [decoder decodeObjectForKey:kScuppers];
    self.Drains = [decoder decodeObjectForKey:kDrains];
    self.Pipes = [decoder decodeObjectForKey:kPipes];
    self.TTops = [decoder decodeObjectForKey:kTTops];
    self.Corners = [decoder decodeObjectForKey:kCorners];
    self.Skylights = [decoder decodeObjectForKey:kSkylights];
    self.SkylightsRep = [decoder decodeObjectForKey:kSkylightsRep];
}
    return self;
}

@end
