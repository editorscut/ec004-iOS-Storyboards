#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DSTEvent : NSManagedObject

@property (nonatomic, retain) NSNumber * duration;
@property (nonatomic, retain) NSDate * endTIme;
@property (nonatomic, retain) NSString * eventDescription;
@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * title;

@end
