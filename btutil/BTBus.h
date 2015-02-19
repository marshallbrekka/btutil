//
//  BTDevice.h
//  btutil

#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>

@interface BTBus : NSObject
+ (int) on;
+ (int) off;
+ (void) status;
@end
