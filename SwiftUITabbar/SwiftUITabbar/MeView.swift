//
//  MeView.swift
//  SwiftUITabbar
//
//  Created by ZMF on 2025/2/26.
//

import SwiftUI

struct MeView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: SettingView()) {
                Text("设置")
            }
        }
    }
}

#Preview {
    MeView()
}
