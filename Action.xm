#import <UIKit/UIKit.h>
#import <libactivator/libactivator.h>
#import "Action.h"

static RoseListener* listener = nil;

@implementation RoseListener

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), (CFStringRef)RoseTriggerActivator, nil, nil, true);
}

@end

%ctor {
    listener = [[RoseListener alloc] init];
	[[LAActivator sharedInstance] registerListener:listener forName:@"me.shymemoriees.rose.listener"];
}