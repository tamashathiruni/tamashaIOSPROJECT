//
//  PaymentButton.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI
import PassKit

// PaymentButton SwiftUI View
struct PaymentButton: View {
    var action: () -> Void // Action to perform when the button is tapped

    var body: some View {
        Representable(action: action)
            .frame(minWidth: 100, maxWidth: 400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
    }
}

// PreviewProvider for PaymentButton
struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton(action: {})
    }
}

// Representable UIViewRepresentable for PKPaymentButton
extension PaymentButton {
    struct Representable: UIViewRepresentable {
        var action: () -> Void // Action to perform when the button is tapped

        // Create a Coordinator
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }

        // Create and return the PKPaymentButton
        func makeUIView(context: Context) -> PKPaymentButton {
            context.coordinator.button
        }

        // Update the PKPaymentButton (no updates needed)
        func updateUIView(_ uiView: PKPaymentButton, context: Context) {}
    }

    // Coordinator class to handle PKPaymentButton interactions
    class Coordinator: NSObject {
        var action: () -> Void // Action to perform when the button is tapped
        var button: PKPaymentButton // PKPaymentButton instance

        // Initialize Coordinator with action and create PKPaymentButton
        init(action: @escaping () -> Void) {
            self.action = action
            self.button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)

            super.init()

            // Add target action for button tap
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }

        // Handle button tap action
        @objc func callback(_ sender: Any) {
            action()
        }
    }
}
