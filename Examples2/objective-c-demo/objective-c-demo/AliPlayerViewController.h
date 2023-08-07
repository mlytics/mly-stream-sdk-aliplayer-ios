 
#import <UIKit/UIKit.h>
#import <AliyunPlayer/AliyunPlayer.h>
#import <MuxCore/MuxCore.h>
@import MLYSDK;
@import MuxStatsAliPlayer;

NS_ASSUME_NONNULL_BEGIN

@interface AliPlayerViewController : UIViewController
@property (nonatomic, strong) MLYAliPlayer *mlyPlayer;
@property (nonatomic, strong) AliPlayer *player;
@property (nonatomic, strong) MLYAliPlayerPlugin *plugin;
@end

NS_ASSUME_NONNULL_END
