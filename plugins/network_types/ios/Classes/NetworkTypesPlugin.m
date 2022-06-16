#import "NetworkTypesPlugin.h"
#if __has_include(<network_types/network_types-Swift.h>)
#import <network_types/network_types-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "network_types-Swift.h"
#endif

@implementation NetworkTypesPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNetworkTypesPlugin registerWithRegistrar:registrar];
}
@end
