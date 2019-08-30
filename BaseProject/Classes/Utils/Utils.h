#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utils : NSObject
+ (void)saveAlreadyUse:(BOOL)flag;
+ (BOOL)loadAlreadyUse;
@end

NS_ASSUME_NONNULL_END
