#import "ProjectSkeletonPlugin.h"
#if __has_include(<project_skeleton/project_skeleton-Swift.h>)
#import <project_skeleton/project_skeleton-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "project_skeleton-Swift.h"
#endif

@implementation ProjectSkeletonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftProjectSkeletonPlugin registerWithRegistrar:registrar];
}
@end
