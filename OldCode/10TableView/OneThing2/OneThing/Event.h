#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSDate * endTime;
@property (nonatomic, retain) NSNumber * duration;
@property (nonatomic, retain) NSString * eventDescription;

@end
