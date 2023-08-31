//
//  ExtensionManager.swift
//  CodeEdit
//
//  Created by Wouter Hennen on 30/12/2022.
//

import CodeEditKit
import ConcurrencyPlus
import ExtensionFoundation
import Foundation
import SwiftUI

final class ExtensionManager: ObservableObject {

  static var shared = ExtensionManager()

  @Published var extensions: [ExtensionInfo] = []

  init() {
    ExtensionDiscovery.shared.$extensions.assign(to: &$extensions)
  }

}
