//
//  SDWebImagePluginManager.m
//  SDWebImage
//
//  Created by Neal Wills on 2022/2/9.
//  Copyright © 2022 Dailymotion. All rights reserved.
//

#import "SDWebImagePluginManager.h"
#import "SDWebImageBasePlugin.h"


@interface SDWebImagePluginManager ()

@property (nonatomic, strong) NSMutableArray <__kindof SDWebImageBasePlugin *>*pluginList;

@end

@implementation SDWebImagePluginManager

- (void)registPlugin:(SDWebImageBasePlugin *)plugin {
    [SDWebImagePluginManager.sharedManager.pluginList addObject:plugin];
}

+ (nonnull instancetype)sharedManager {
    static dispatch_once_t once;
    static id instance;
    dispatch_once(&once, ^{
        instance = [self new];
    });
    return instance;
}

- (NSMutableArray<__kindof SDWebImageBasePlugin *> *)pluginList {
    if (!_pluginList) {
        _pluginList = [NSMutableArray array];
    }
    return _pluginList;
}

@end
