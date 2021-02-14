//
//  ContentViewModule.m
//  poc-swift-react-natvie
//
//  Created by Wharley Ornelas Rocha on 2/14/21.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(EventsList, RCTEventEmitter)
RCT_EXTERN_METHOD(
                  showDetails: (RCTPromiseResolveBlock)resolve
                  rejecter: (RCTPromiseRejectBlock)reject
                  )
RCT_EXTERN_METHOD(startListening)
RCT_EXTERN_METHOD(stopListening)
@end
