
#define UPDATED_BEACONS @"UPDATED_BEACONS"

@interface globalNotifications : NSObject 
  
+(void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName;
+(void)removeObserver:(id)observer name:(NSString *)aName;
+(void)removeObserver:(id)observer;
+(void)postNotification:(NSString*)aName withUserInfo:(NSDictionary*)userInfo;
+(void)postNotification:(NSNotification *)note;
+(void)postNotification:(NSString*)aName withUserInfo:(NSDictionary*)userInfo object:(id)obj;
@end
