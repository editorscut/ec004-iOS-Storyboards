//
//  DSTEvent.h
//  OneThing
//
//  Created by Daniel Steinberg on 12/27/13.
//  Copyright (c) 2013 Dim Sum Thinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DSTEvent : NSManagedObject

@property (nonatomic, retain) NSNumber * duration;
@property (nonatomic, retain) NSDate * endTIme;
@property (nonatomic, retain) NSString * eventDescription;
@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * title;

@end
