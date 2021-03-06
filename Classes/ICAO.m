//
//  ICAO.m
//  WxHere
//
//  Created by Ayal Spitz on 10/24/09.
//  Copyright (C) 2009 Ayal Spitz
// 
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of the GNU General Public License
//  as published by the Free Software Foundation; either version 2
//  of the License, or (at your option) any later version.
//  
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//  
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
//

#import "ICAO.h"


@implementation ICAO
@synthesize stationID;

- (id)init:(NSString *)name atLat:(double)lat Lon:(double)lon{
	self = [super init];
	if (self != nil) {
		latitude = lat;
		longitude = lon;
		self.stationID = name;
	}
	return self;
}

- (void)dealloc{
	[stationID release];
	[super dealloc];
}

- (double)distanceFromLat:(double)lat Lon:(double)lon{
	double dLat = latitude - lat;
	double dLon = longitude - lon;
	
	return (dLat * dLat) + (dLon * dLon);
}

@end
