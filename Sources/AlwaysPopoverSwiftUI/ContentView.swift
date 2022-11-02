//
//  ContentView.swift
//  Popovers
//
//  Copyright © 2021 PSPDFKit GmbH. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showsPopover = false
    @State var showsAlwaysPopover = false

    var body: some View {
        VStack(spacing: 50) {
            Button("Standard Popover") {
                showsPopover = true
            }
            .popover(isPresented: $showsPopover) {
                PopoverContent()
            }
            
            Button("Custom Always Popover") {
                showsAlwaysPopover = true
            }
            .alwaysPopover(isPresented: $showsAlwaysPopover) {
                PopoverContent()
            }
        }
    }
}

struct PopoverContent: View {
    var body: some View {
        Text("This should be presented\nin a popover.")
            .font(.subheadline)
            .padding()
    }
}
