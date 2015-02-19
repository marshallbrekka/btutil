//
//  BTBus.m
//  btutil
//

#import <Foundation/Foundation.h>
// #import	<IOBluetooth/Bluetooth.h>
#import "BTBus.h"

int IOBluetoothPreferenceGetControllerPowerState();
void IOBluetoothPreferenceSetControllerPowerState(int state);

inline int PowerState() {
    return IOBluetoothPreferenceGetControllerPowerState();
}

int SetPowerState(int state) {
    IOBluetoothPreferenceSetControllerPowerState(state);
    
    // sleep for a second
    usleep(1000000);
    
    // check to see if it changed.
    if (PowerState() != state) {
        printf("Error: unable to turn Bluetooth %s\n", state ? "on" : "off");
        return EXIT_FAILURE;
    }
    
    return EXIT_SUCCESS;
}


@implementation BTBus
+ (int) on {
    return SetPowerState(1);
}

+ (int) off {
    return SetPowerState(0);
}

+ (void) status {
    printf("Status: %s\n", PowerState() ? "on" : "off");
}

@end
