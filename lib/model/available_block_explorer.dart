import 'package:flutter/material.dart';
import 'package:natrium_wallet_flutter/model/setting_item.dart';

enum AvailableBlockExplorerEnum { BTCOBLOCK, BTCOEXPLORE, NANOCAFE }

/// Represent the available authentication methods our app supports
class AvailableBlockExplorer extends SettingSelectionItem {
  AvailableBlockExplorerEnum explorer;

  AvailableBlockExplorer(this.explorer);

  String getDisplayName(BuildContext context) {
    switch (explorer) {
      case AvailableBlockExplorerEnum.BTCOBLOCK:
        return "block.bitcoinnano.org";
      case AvailableBlockExplorerEnum.BTCOEXPLORE:
        return "explore.bitcoinnano.org";
      case AvailableBlockExplorerEnum.NANOCAFE:
        return "nanocafe.cc";
      default:
        return "block.bitcoinnano.org";
    }
  }

  // For saving to shared prefs
  int getIndex() {
    return explorer.index;
  }
}
