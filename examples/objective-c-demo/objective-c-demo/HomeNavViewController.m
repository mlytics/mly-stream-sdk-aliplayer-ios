 
#import "HomeNavViewController.h"
#import "PlayerViewController.h"
#import "AliPlayerViewController.h"

@implementation HomeNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)goAliPlayerVideoBtnAction {
    AliPlayerViewController *vc = [[AliPlayerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)goPlayerVideoBtnAction {
    PlayerViewController *vc = [[PlayerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor blackColor];
    CGFloat btnHeight = 50.0;
    
    self.aliPlayerButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, btnHeight)];
    [self.aliPlayerButton setTitle:@"AliPlayer" forState:UIControlStateNormal];
    [self.aliPlayerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.playerButton = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.aliPlayerButton.frame), self.view.frame.size.width, btnHeight)];
    [self.playerButton setTitle:@"AVPlayer" forState:UIControlStateNormal];
    [self.playerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [self.aliPlayerButton addTarget:self action:@selector(goAliPlayerVideoBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.playerButton addTarget:self action:@selector(goPlayerVideoBtnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.aliPlayerButton];
    [self.view addSubview:self.playerButton];
}
@end
