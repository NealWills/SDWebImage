//
//  SDWebImageBasePlugin.h
//  SDWebImage
//
//  Created by Neal Wills on 2022/2/9.
//  Copyright © 2022 Dailymotion. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef NSDictionary *_Nullable(^SDBasePluginActionBlock)(NSDictionary *params);

typedef NS_ENUM(NSInteger, SDWebImageBasePluginStage) {
    SDWebImageBasePluginStageNone = -1,
    SDWebImageBasePluginStageSDKInit = 0,
    SDWebImageBasePluginStageRequestWillStart,
    SDWebImageBasePluginStageRequestDidStart,
    SDWebImageBasePluginStageRequestFailedToRetry,
    SDWebImageBasePluginStageRequestFailed,
    SDWebImageBasePluginStageRequestSuccess,
};

//SDWebImageBasePlugin

@interface SDWebImageBasePlugin : NSObject

@property (nonatomic, copy, readonly) SDBasePluginActionBlock action;

- (void)registPlugin;

- (SDWebImageBasePluginStage)stage;
- (NSString *)name;

@end

NS_ASSUME_NONNULL_END
