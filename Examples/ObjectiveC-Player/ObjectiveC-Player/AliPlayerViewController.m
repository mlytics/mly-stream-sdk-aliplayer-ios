#import "HomeNavViewController.h"
#import "AliPlayerViewController.h"

@interface AliPlayerViewController ()

@end

@implementation AliPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    
    NSError *error = nil;
    
    [MLYDriver initializeAndReturnError:  &error :^(MLYDriverOptions * option) {
        [[option client] setId: clientID];
        
        MLYMuxModel *muxModel = [self.mlyPlayer getMuxConfigModel];
        [self.plugin adaptWithMuxModel:muxModel];
    }];
    
    if(error != nil){
        NSLog(@"MLYDriver initialize err:%@",error.description);
    }
}
 
- (void)setupView {
    self.plugin = [[MLYAliPlayerPlugin alloc] init];
    CGRect playerViewFrame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height);
    UIView *playerView = [[UIView alloc] initWithFrame:playerViewFrame];
    self.mlyPlayer = [[MLYAliPlayer alloc] initWithView:self.view playerView:playerView videoURL:videoURL];
    self.player = self.mlyPlayer.player;
}

- (void)viewDidDisappear:(BOOL)animated {
    [self.plugin deactivate];
    [self.player stop];
    [self.player destroy];
    [super viewDidDisappear:animated];
}

 
@end
