//
//  WorkspaceDocument+CommandListeners.swift
//  CodeEdit
//
//  Created by Khan Winter on 6/5/22.
//

import Combine
import Foundation

class WorkspaceNotificationModel: ObservableObject {

  @Published var highlightedFileItem: CEWorkspaceFile?

  init() {
    highlightedFileItem = nil
  }

}
