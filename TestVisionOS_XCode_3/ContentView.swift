//
//  ContentView.swift
//  TestVisionOS_XCode_3
//
//  Created by Maëva Soulard on 19/03/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State var enlarge = false

    var body: some View {
        Model3D(named: "Test", bundle: realityKitContentBundle)
            .padding(.bottom, 50)
        /*RealityView { content in
            // Add the initial RealityKit content
            let scene = try? await Entity(named: "Test", in: realityKitContentBundle)
            content.add(scene)
        }*/
        /*VStack {
            RealityView { content in
                // Add the initial RealityKit content
                if let scene = try? await Entity(named: "Test", in: realityKitContentBundle) {
                    content.add(scene)
                }
            } update: { content in
                // Update the RealityKit content when SwiftUI state changes
                if let scene = content.entities.first {
                    let uniformScale: Float = enlarge ? 1.1 : 1
                    scene.transform.scale = [uniformScale, uniformScale, uniformScale]
                }
            }
            .gesture(TapGesture().targetedToAnyEntity().onEnded { _ in
                enlarge.toggle()
            })

            /*VStack {
                Toggle("Enlarge RealityView Content", isOn: $enlarge)
                    .toggleStyle(.button)
            }.padding().glassBackgroundEffect()*/
        }*/
    }
}

#Preview(immersionStyle: .full) {
    ContentView()
}
