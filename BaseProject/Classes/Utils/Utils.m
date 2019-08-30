#import "Utils.h"
#import "Constaint.h"

@implementation Utils


+ (void)saveAlreadyUse:(BOOL)flag {
    [[NSUserDefaults standardUserDefaults] setBool:flag forKey:UD_KEY_ALREADY_USE];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)loadAlreadyUse {
    return [[NSUserDefaults standardUserDefaults] boolForKey:UD_KEY_ALREADY_USE];
}
@end
