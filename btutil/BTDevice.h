//
//  BTDevice.h
//  btutil

#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>

@interface BTDevice : NSObject
+ (void) list: (IOBluetoothDevice*)device;
+ (int) connect:(IOBluetoothDevice*)device;
+ (int) connectAddress:(NSString*)address;
+ (int) disconnect:(IOBluetoothDevice*)device;
+ (int) disconnectAddress:(NSString*)address;
@end
