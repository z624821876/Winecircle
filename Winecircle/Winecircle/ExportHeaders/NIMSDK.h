//
//  NIMSDK.h
//  NIMLib
//
//  Created by Netease.
//  Copyright (c) 2015 Netease. All rights reserved.
//  Version 1.0.0

#import <Foundation/Foundation.h>
#import "NIMSDKHeaders.h"

/**
 *  NIMSDK
 */
@interface NIMSDK : NSObject
/**
 *  获取SDK实例
 *
 *  @return NIMSDK实例
 */
+ (instancetype)sharedSDK;

/**
 *  获取SDK版本号
 *
 *  @return SDK版本号
 */
- (NSString *)sdkVersion;

/**
 *  初始化SDK
 *
 *  @param appKey  申请的appKey
 *  @param cerName 推送证书名
 */
- (void)registerWithAppID:(NSString *)appKey
                  cerName:(NSString *)cerName;

/**
 *  更新APNS Token
 *
 *  @param token APNS Token
 */
- (void)updateApnsToken:(NSData *)token;


/**
 *  登录管理类 负责登录,注销和相关操作的通知收发
 */
@property (nonatomic,strong,readonly)   id<NIMLoginManager>   loginManager;

/**
 *  聊天管理类,负责消息的收发
 *  @discussion 如果没有登录成功过,这个接口返回nil
 */
@property (nonatomic,strong,readonly)   id<NIMChatManager>     chatManager;

/**
 *  会话管理类,负责消息,最近会话的读写和管理
 *  @discussion 如果没有登录成功过,这个接口返回nil
 */
@property (nonatomic,strong,readonly)   id<NIMConversationManager>  conversationManager;

/**
 *  媒体管理类,负责多媒体相关的接口 (录音等)
 */
@property (nonatomic,strong,readonly)   id<NIMMediaManager>    mediaManager;

/**
 *  群组管理类,负责群组的操作:创建,拉人,踢人,同步等
 *  @discussion 如果没有登录成功过,这个接口返回nil
 */
@property (nonatomic,strong,readonly)   id<NIMTeamManager>    teamManager;

/**
 *  系统通知管理类
 *  @discussion 如果没有登录成功过,这个接口返回nil
 */
@property (nonatomic,strong,readonly)   id<NIMSystemNotificationManager>    systemNotificationManager;

/**
 *  APNS推送管理类
 *  @discussion 如果没有登录成功过,这个接口返回nil
 */
@property (nonatomic,strong,readonly)   id<NIMApnsManager> apnsManager;

/**
 *  资源管理器,负责文件上传和下载
 */
@property (nonatomic,strong,readonly)   id<NIMResourceManager> resourceManager;

/**
 *  网络通话管理类
 */
@property (nonatomic,strong,readonly)   id<NIMNetCallManager> netCallManager;

@end
