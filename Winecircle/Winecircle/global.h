//
//  global.h
//  mlh
//
//  Created by qd on 13-5-8.
//  Copyright (c) 2013年 sunday. All rights reserved.
//
#import <SystemConfiguration/SystemConfiguration.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "BaseModel.h"
#import "Util.h"
#import "DateUtil.h"
#import "UIView+Sizes.h"
#import "HttpManager.h"
#import "tools.h"
#import "UIImageView+WebCache.h"
#import "UIButton+WebCache.h"
#import "MyTool.h"
#import "UMSocial.h"
#import "UMSocialQQHandler.h"
#import "UMSocialSinaHandler.h"

#ifdef DEBUG
#define DDLog(...) NSLog(__VA_ARGS__)
#define DDMethod() NSLog(@"%s", __func__)
#else
#define DDLog(...)
#define DDMethod()
#endif

#ifndef global_h
#define global_h

#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]

#define UI_NAVIGATION_BAR_HEIGHT        44
#define UI_TOOL_BAR_HEIGHT              44
#define UI_TAB_BAR_HEIGHT               49
#define UI_STATUS_BAR_HEIGHT            20
#define UI_SCREEN_WIDTH                 [[UIScreen mainScreen] bounds].size.width
#define UI_SCREEN_HEIGHT                [[UIScreen mainScreen] bounds].size.height

#define UI_scaleX                       UI_SCREEN_WIDTH / 320.0
#define UI_scaleY                       UI_SCREEN_HEIGHT / 480.0


#define LOAD_MORE_TEXT_HEIGHT 77
// 显示文字阈值
#define LOAD_MORE_THRESHOLD (UI_SCREEN_HEIGHT - UI_STATUS_BAR_HEIGHT - UI_NAVIGATION_BAR_HEIGHT - UI_TAB_BAR_HEIGHT - LOAD_MORE_TEXT_HEIGHT)
// 刷新阈值
#define LOAD_MORE_MAX       (LOAD_MORE_THRESHOLD + 10.0)

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define DEFAULT_VOID_COLOR [UIColor whiteColor]

#define ColorWithRGBA(r,g,b,a)  [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:a]

#define BaseColor ColorWithRGBA(28, 204, 13, 1)

/****************显示坐标位置*****************************/
#define iOS7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? YES:NO)

#define CGRectMake_Nav_Status(x,y,width,hight) iOS7?CGrectMake(x,y,y + UI_STATUS_BAR_HEIGHT + UI_NAVIGATION_BAR_HEIGHT,hight):CGRectMake(x,y,width,hight)

#define CGRectMake_Status(x,y,width,higth) iOS7?CGRectMake(x,y + UI_STATUS_BAR_HEIGHT,width,higth)

/**********************************************/

#define PATH_OF_APPITEMIMAGE [NSString stringWithFormat:@"%@/appitemimage", PATH_OF_DOCUMENT]

#define nilOrJSONObjectForKey(JSON_, KEY_) [[JSON_ objectForKey:KEY_] isKindOfClass:[NSNull class]] ? nil : [JSON_ objectForKey:KEY_];

//static NSString * const sBaseJsonURLStr = @"http://cm.o2o2m.com:8083";

static NSString * const sBaseUrlStr = @"http://nzxyadmin.53xsd.com/";
static NSString * const sBaseImgUrlStr = @"http://nzxyimage.53xsd.com/meiniang";



static NSString * const sBaseJsonURLStr = @"http://beauty.o2o2m.com";
//http://gaoxinquan.xasd.com.cn/
static NSString * const sBaseJsonURLStrWeb = @"http://admin.o2o2m.com/";

//static NSString * const sBaseUploadUrlStr = @"http://admin.sunday-mobi.com/";
static NSString * const sBaseUploadUrlStr = @"http://cmadmin.o2o2m.com";

//static NSString * const sVersionDownloadURL = @"itms-services://?action=download-manifest&url=https://dl.dropboxusercontent.com/s/j3qyypwp0hds8xp/zdtc.plist";
//static NSString * const sVersionDownloadURL = @"itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/sunwen812645842/sunday/master/mein2.plist";
//static NSString *const sVersionRequestURL = @"https://raw.githubusercontent.com/sunwen812645842/sunday/master/mein2.plist";

static NSString * const sVersionDownloadURL = @"itms-services://?action=download-manifest&url=https://app.hdtht.com/ios/sunday/mnxy.plist";

static NSString * const sVersionURL = @"http://vipstatic.sunday-mobi.com/download/mnxy/ios/versions.plist";

static NSString * const sAppName = @"NZXY";
static NSString * const sProjectId = @"0";


typedef enum{   //4种状态, 可用于各种情况，比如异步变同步时作标志位
    FlagWait,
    FlagNoWait,
    FlagSuccess,
    FlagFailure,
}WaitFlag;

//个推
#define kGTAppId           @"zPayDHslMA9rE4MJavgI26"
#define kGTAppKey          @"1uaQKV5DM3AECHjnSwMo8"
#define kGTAppSecret       @"pdNd8d47AV8Wsmq34ZqFr"

//友盟
#define kUMkey          @"54c7576ffd98c5acfd0007ce"
//微信
#define kWXid           @"wxe76f86152b5841f0"
#define kWXSecret       @"1453160f0fbddb202e2f27b2fbc5f4fc"
//qq
#define kqqid           @"1104151303"
#define kqqkey          @"k4ZqjkcwuvPknK4k"

//#define BaseColor       [Util uiColorFromString:@"#e1008c"]

#define HUDShowErrorServerOrNetwork [[tools shared] HUDShowHideText:@"服务器或网络异常" delay:2];

#endif
