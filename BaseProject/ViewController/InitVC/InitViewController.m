#import "InitViewController.h"
#import "WalkthroughViewController.h"
#import "AppDelegate.h"

@interface InitViewController ()

@end

@implementation InitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self startApp];
}

- (void)startApp {
    NSLog(@"%s", __func__);
    
    dispatch_async(dispatch_get_main_queue(), ^{
        if(![Utils loadAlreadyUse]) {
            WalkthroughViewController* welcomeVc = [[WalkthroughViewController alloc] init];
            [self.navigationController setViewControllers:@[welcomeVc] animated:YES];
        } else {
            AppDelegate* appdel = [UIApplication sharedApplication].delegate;
            [appdel startApp];
        }
    });
}
@end
