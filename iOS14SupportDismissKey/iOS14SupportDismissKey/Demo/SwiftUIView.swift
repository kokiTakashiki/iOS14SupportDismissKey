//
//  SwiftUIView.swift
//  PopUIViewControllerTest
//
//  Created by 武田孝騎 on 2023/06/10.
//

import SwiftUI

struct SwiftUIView: View {

    @Environment(\.dismissable) private var dismiss
    //@Environment(\.customDismiss) private var dismiss
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(width: 200, height: 200)
                .shadow(radius: 3.0)
            Button {
                dismiss()
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange)
                        .frame(width: 100, height: 50)
                    Text("Tap me")
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
