#import "AppDelegate.h"
#import "HomeNavViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[HomeNavViewController alloc] init]];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
