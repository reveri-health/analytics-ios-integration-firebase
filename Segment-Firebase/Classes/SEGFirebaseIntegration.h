//
//  SEGFirebaseIntegration.h
//  Pods
//

#import <Foundation/Foundation.h>

#if defined(__has_include) && __has_include(<Analytics/SEGAnalytics.h>)
#import <Analytics/SEGIntegration.h>
#else
@import Segment;
#endif


@interface SEGFirebaseIntegration : NSObject <SEGIntegration>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) Class firebaseClass;
@property (nonatomic, strong) Class crashlyticsClass;

- (id)initWithSettings:(NSDictionary *)settings;
- (id)initWithSettings:(NSDictionary *)settings andFirebase:(id)firebaseClass andCrashlyticsClass:(id)crashlyticsClass;


@end
