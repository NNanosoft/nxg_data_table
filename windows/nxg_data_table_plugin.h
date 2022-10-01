#ifndef FLUTTER_PLUGIN_NXG_DATA_TABLE_PLUGIN_H_
#define FLUTTER_PLUGIN_NXG_DATA_TABLE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace nxg_data_table {

class NxgDataTablePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NxgDataTablePlugin();

  virtual ~NxgDataTablePlugin();

  // Disallow copy and assign.
  NxgDataTablePlugin(const NxgDataTablePlugin&) = delete;
  NxgDataTablePlugin& operator=(const NxgDataTablePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace nxg_data_table

#endif  // FLUTTER_PLUGIN_NXG_DATA_TABLE_PLUGIN_H_
