#import "APIClients.h"
#import "AFNetworking.h"

@implementation APIClients

+ (AFHTTPSessionManager*)getManager {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.timeoutInterval = 10;
    manager.responseSerializer             = [AFJSONResponseSerializer serializer];
    NSMutableSet* acceptableContentTypes = [[NSMutableSet alloc] initWithSet:[manager.responseSerializer acceptableContentTypes]];
    [acceptableContentTypes addObject:@"text/html"];
    [acceptableContentTypes addObject:@"text/plain"];
    
    manager.responseSerializer.acceptableContentTypes = acceptableContentTypes;
    
    return manager;
}

+ (NSMutableDictionary*)getCommonParam {
    NSMutableDictionary* params = [NSMutableDictionary new];
    
    return params;
}
@end
