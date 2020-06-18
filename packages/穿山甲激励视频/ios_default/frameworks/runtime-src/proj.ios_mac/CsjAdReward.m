#import "CsjAdReward.h"
#import <BUAdSDK/BURewardedVideoModel.h>
#import <BUAdSDK/BUNativeExpressRewardedVideoAd.h>
#import "AppController.h"
#import <BUAdSDK/BUAdSDKManager.h>
#import "RootViewController.h"
@interface CsjAdReward ()<BUNativeExpressRewardedVideoAdDelegate>
@property (nonatomic,strong) BUNativeExpressRewardedVideoAd *rewardedVideoAd;
@end

static CsjAdReward *instance;    //这里声明一下静态实例，方便javascript层调用
@implementation CsjAdReward

//获取实例的方法，方便javascript层调用
+(CsjAdReward *) getAdInstance{
    return instance;
}


//初始化，根着SDK文档照做就好了
- (void) viewDidLoad {
    NSLog(@"viewDidLoad");
    
    instance=self;
    
    [BUAdSDKManager setAppID:@"5077829"];
    [BUAdSDKManager setIsPaidApp:NO];
    [BUAdSDKManager setLoglevel:BUAdSDKLogLevelDebug];
    
    BURewardedVideoModel *model=[[BURewardedVideoModel alloc]init];
    model.userId=@"38628";
    self.rewardedVideoAd=[[BUNativeExpressRewardedVideoAd alloc] initWithSlotID:@"945242076" rewardedVideoModel:model];
    self.rewardedVideoAd.delegate=self;
    [self.rewardedVideoAd loadAdData];
}

//打开激励视频的方法
-(void) OpenAd{
   if(self.rewardedVideoAd.isAdValid){
       [self.rewardedVideoAd showAdFromRootViewController:self];
    }
}

//视频结束的回调
- (void)nativeExpressRewardedVideoAdDidClose:(BUNativeExpressRewardedVideoAd *)rewardedVideoAd{
    NSLog(@"rewardedVideoAdDidClose");
    [self.rewardedVideoAd loadAdData];        //视频结束后，再加载一次广告数据，保证广告的不重复
}
@end
