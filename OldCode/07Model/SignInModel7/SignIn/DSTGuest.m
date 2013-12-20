#import "DSTGuest.h"

@implementation DSTGuest

+ (instancetype)sharedGuest {
    static DSTGuest *_sharedGuest = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedGuest = [[self alloc] init];
    });
    return _sharedGuest;
}

@end
