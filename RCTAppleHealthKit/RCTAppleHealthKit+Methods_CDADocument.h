//
//  RCTAppleHealthKit+Methods_CDADocument.h
//  RCTAppleHealthKit
//
//  Created by Thuỳ Nguyễn on 12/26/18.
//  Copyright © 2018 Greg Wilson. All rights reserved.
//

#import "RCTAppleHealthKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface RCTAppleHealthKit (Methods_CDADocument)
- (void)document_getCDADocuments:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
@end

NS_ASSUME_NONNULL_END
