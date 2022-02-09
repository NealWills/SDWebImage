//
//  SDWebImageBasePlugin.m
//  SDWebImage
//
//  Created by Neal Wills on 2022/2/9.
//  Copyright © 2022 Dailymotion. All rights reserved.
//

#import "SDWebImageBasePlugin.h"
#import "SDWebImagePluginManager.h"

@interface SDBasePluginActionBlockUnit ()

@end

@implementation SDBasePluginActionBlockUnit

@end


@interface SDWebImageBasePlugin ()

@property (nonatomic, copy) SDBasePluginActionBlock action;
@property (nonatomic, assign) SDWebImageBasePluginStage stage;

@end

@implementation SDWebImageBasePlugin



- (void)registPlugin {
    
}

- (SDWebImageBasePluginStage)stage {
    return SDWebImageBasePluginStageNone;
}

- (NSString *)name {
    return @"SDWebImageBasePluginNameDefault";
}

@end
