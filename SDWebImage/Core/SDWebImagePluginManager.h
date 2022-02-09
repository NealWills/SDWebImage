//
//  SDWebImagePluginManager.h
//  SDWebImage
//
//  Created by Neal Wills on 2022/2/9.
//  Copyright © 2022 Dailymotion. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SDWebImageBasePlugin;

NS_ASSUME_NONNULL_BEGIN

@interface SDWebImagePluginManager : NSObject

@property (nonatomic, strong, readonly) NSMutableArray <__kindof SDWebImageBasePlugin *>*pluginList;

+ (instancetype)sharedManager;

- (void)registPlugin:(SDWebImageBasePlugin *)plugin;

@end

NS_ASSUME_NONNULL_END
