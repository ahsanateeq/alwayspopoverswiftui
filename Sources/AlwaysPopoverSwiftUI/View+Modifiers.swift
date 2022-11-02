//
//  View+Modifiers.swift
//  Popovers
//
//  Copyright © 2021 PSPDFKit GmbH. All rights reserved.
//

import SwiftUI
import UIKit

extension View {
    public func alwaysPopover<Content>(isPresented: Binding<Bool>,
                                       arrows: UIPopoverArrowDirection = .any,
                                       @ViewBuilder content: @escaping () -> Content) -> some View where Content : View {
        self.modifier(AlwaysPopoverModifier(isPresented: isPresented,
                                            arrowDirection: arrows,
                                            contentBlock: content))
    }
}
