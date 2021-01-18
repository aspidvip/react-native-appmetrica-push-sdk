//
//  RNAppmetricaPushSdk.m
//  Andrey Bondarenko
//  Copyright © 2021 Facebook. All rights reserved.
//

#import "React/RCTBridgeModule.h"
//#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(RNAppmetricaPushSdk, NSObject)
RCT_EXTERN_METHOD(initPush: (NSData *)deviceToken)
@end


