//
//  EnvironmentValues+dismissable.swift
//  iOS14SupportDismissKey
//
//  Created by 武田孝騎 on 2023/06/30.
//

import SwiftUI

extension EnvironmentValues {
    // this can be used as: @Environment(\.dismissable) var myDismiss
    // in any swiftui view and it will not complain about ios versions
    var dismissable: () -> Void {
        return dismissAction
    }


    // this function abstracts the availability check so you can
    // avoid the conflicting return types and any other headache
    private func dismissAction() {
        if #available(iOS 15, *) {
            dismiss()
        } else {
            // 親のViewControllerは閉じることができない。
            presentationMode.wrappedValue.dismiss()
        }
    }
}
