#import "globalNotifications.h"

@implementation globalNotifications

+(void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:aName object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:aName object:nil];
}

+(void)removeObserver:(id)observer name:(NSString *)aName{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:aName object:nil];
}

+(void)removeObserver:(id)observer{
    [[NSNotificationCenter defaultCenter] removeObserver:observer];
}

+(void)postNotification:(NSString*)aName withUserInfo:(NSDictionary*)userInfo{    
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:aName object:nil userInfo:userInfo]];
}

+(void)postNotification:(NSString*)aName withUserInfo:(NSDictionary*)userInfo object:(id)obj
{
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:aName object:obj userInfo:userInfo]];
}

+(void)postNotification:(NSNotification *)note{
    [[NSNotificationCenter defaultCenter] postNotification:note];
} 



@end
