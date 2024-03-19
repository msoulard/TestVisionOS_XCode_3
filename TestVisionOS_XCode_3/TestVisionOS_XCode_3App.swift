//
//  TestVisionOS_XCode_3App.swift
//  TestVisionOS_XCode_3
//
//  Created by Maëva Soulard on 19/03/2024.
//

import SwiftUI

@main
struct TestVisionOS_XCode_3App: App {
    @State private var style: ImmersionStyle = .mixed
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)
            .immersionStyle(selection: $style, in: .full)
        ImmersiveSpace(id: "immersiveSpace"){
            ContentView()
        }.immersionStyle(selection: $style, in: .full)
    }
}
