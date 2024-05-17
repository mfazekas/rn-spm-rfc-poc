
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNRnSpmRfcPocSpec.h"

@interface RnSpmRfcPoc : NSObject <NativeRnSpmRfcPocSpec>
#else
#import <React/RCTBridgeModule.h>

@interface RnSpmRfcPoc : NSObject <RCTBridgeModule>
#endif

@end
