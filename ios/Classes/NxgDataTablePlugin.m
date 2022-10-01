#import "NxgDataTablePlugin.h"
#if __has_include(<nxg_data_table/nxg_data_table-Swift.h>)
#import <nxg_data_table/nxg_data_table-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nxg_data_table-Swift.h"
#endif

@implementation NxgDataTablePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNxgDataTablePlugin registerWithRegistrar:registrar];
}
@end
