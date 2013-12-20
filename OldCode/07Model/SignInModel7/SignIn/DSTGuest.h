#import <Foundation/Foundation.h>

@interface DSTGuest : NSObject
@property (strong, nonatomic) NSString *signInName;
+ (instancetype)sharedGuest;
@end
