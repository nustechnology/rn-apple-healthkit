//
//  RCTAppleHealthKit+Methods_FHIR.m
//  RCTAppleHealthKit
//
//  Created by Thuỳ Nguyễn on 12/26/18.
//  Copyright © 2018 Greg Wilson. All rights reserved.
//

#import "RCTAppleHealthKit+Methods_FHIR.h"
#import "RCTAppleHealthKit+Queries.h"
#import "RCTAppleHealthKit+Utils.h"
@implementation RCTAppleHealthKit (Methods_FHIR)
- (void)FHIR_getFHIRData:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback{
    if (@available(iOS 12.0, *)) {
        NSString *clinicalType = [input objectForKey:@"clinicalType"];
        if(clinicalType){
            HKSampleType *clinicType = [HKSampleType clinicalTypeForIdentifier: clinicalType];
            [self fetchFHIRResourceType:clinicType completion:^(NSArray * results, NSError * error) {
                if(results){
                    callback(@[[NSNull null], results]);
                    return;
                } else {
                    NSLog(@"error getting FHIR data: %@", error);
                    callback(@[RCTMakeError(@"error getting FHIR data", nil, nil)]);
                    return;
                }
            }];
        }else {
            callback(@[RCTMakeError(@"clinicalType was missing", nil, nil)]);
        }
    } else {
        callback(@[RCTMakeError(@"Just support ios 12.0+", nil, nil)]);
    }

}
@end
