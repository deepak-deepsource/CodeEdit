//
//  StatusBarBreakpointButton.swift
//  CodeEditModules/StatusBar
//
//  Created by Stef Kors on 14/04/2022.
//

import CodeEditSymbols
import SwiftUI

struct StatusBarBreakpointButton: View {
  @EnvironmentObject private var model: DebugAreaViewModel

  var body: some View {
    Button {
      model.isBreakpointEnabled.toggle()
    } label: {
      if model.isBreakpointEnabled {
        Image.breakpoint_fill
          .foregroundColor(.accentColor)
      } else {
        Image.breakpoint
          .foregroundColor(.secondary)
      }
    }
    .buttonStyle(.plain)
  }
}
