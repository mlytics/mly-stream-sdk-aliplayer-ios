 #import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@import MLYSDK;

static NSString * _Nonnull const clientID = @"cegh8d9j11u91ba1u600";
static NSString * _Nonnull const videoURL = @"https://vsp-stream.s3.ap-northeast-1.amazonaws.com/HLS/raw/SpaceX.m3u8";

NS_ASSUME_NONNULL_BEGIN

@interface HomeNavViewController : UIViewController
@property (nonatomic, strong) UIButton *aliPlayerButton;
@property (nonatomic, strong) UIButton *playerButton;
@end

NS_ASSUME_NONNULL_END
