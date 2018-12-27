//
//  RCTAppleHealthKit+Methods_CDADocument.m
//  RCTAppleHealthKit
//
//  Created by Thuỳ Nguyễn on 12/26/18.
//  Copyright © 2018 Greg Wilson. All rights reserved.
//

#import "RCTAppleHealthKit+Methods_CDADocument.h"
#import "RCTAppleHealthKit+Queries.h"
#import "RCTAppleHealthKit+Utils.h"

@implementation RCTAppleHealthKit (Methods_CDADocument)
- (void)document_getCDADocuments:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback {
    [self fetchCDADocument:^(NSArray<__kindof HKCDADocumentSample *> *results, NSError *error) {
        if(results){
            callback(@[[NSNull null], results]);
            return;
        } else {
            NSLog(@"error getting sleep samples: %@", error);
            callback(@[RCTMakeError(@"error getting sleep samples", nil, nil)]);
            return;
        }
    }];
}
@end
