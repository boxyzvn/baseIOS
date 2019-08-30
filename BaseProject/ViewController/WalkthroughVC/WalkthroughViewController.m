#import "WalkthroughViewController.h"

@interface WalkthroughViewController ()

@end

@implementation WalkthroughViewController

- (instancetype)init {
    self = [super initWithNibName:@"WalkthroughViewController" bundle:nil];
    if (self) {
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [Utils saveAlreadyUse:YES];
}

@end
