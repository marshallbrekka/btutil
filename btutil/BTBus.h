//
//  BTDevice.h
//  btutil

#import <Foundation/Foundation.h>

@interface BTBus : NSObject
+ (int) on;
+ (int) off;
+ (void) status;
@end
