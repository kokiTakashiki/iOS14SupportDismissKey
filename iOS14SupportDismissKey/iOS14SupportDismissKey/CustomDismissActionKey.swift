//
//  CustomDismissActionKey.swift
//  iOS14SupportDismissKey
//
//  Created by 武田孝騎 on 2023/06/30.
//

import UIKit
import SwiftUI

struct CustomDismissAction {
    private var parentViewController: UIViewController
    
    func callAsFunction(animated: Bool = true) {
        parentViewController.dismiss(animated: animated)
    }

    init(_ parentViewController: UIViewController = UIViewController()) {
        self.parentViewController = parentViewController
    }
}

struct CustomDismissActionKey: EnvironmentKey {
    static let defaultValue: CustomDismissAction = CustomDismissAction()
}

extension EnvironmentValues {
    var customDismiss: CustomDismissAction {
        get {
            self[CustomDismissActionKey.self]
        }
        set {
            self[CustomDismissActionKey.self] = newValue
        }
    }
}

extension View {
    func setupDismissAction(_ parentViewController: UIViewController) -> some View {
        environment(\.customDismiss, CustomDismissAction(parentViewController))
    }
}
