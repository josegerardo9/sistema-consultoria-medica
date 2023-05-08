//
//  ConditionalModifier.swift
//  RetoTC2007B
//

import SwiftUI

extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

/*
 Codigo de: https://www.avanderlee.com/swiftui/conditional-view-modifier/#:~:text=Conditional%20View%20Modifier%20creation%20in,different%20configurations%20to%20your%20views.
*/
