//
//  ContentView.swift
//  Demo-Cocoapods
//
//  Created by Josh Emerson on 30/01/2026.
//

import LinkKit
import SwiftUI

struct ContentView: View {
    @State private var isPresented = false

    // Instructions for getting your link token can be found here:
    // https://developers.enode.com/docs/link-sdks
    //
    #warning("Replace <# link token here #> with your token")
    let linkToken = "<# link token here #>"

    var body: some View {
        Button(
            action: {
                self.isPresented = true
            },
            label: {
                Text("Open \(versionString())")
            }
        )
        .padding()
        .linkKitSheet(isPresented: $isPresented, linkToken: linkToken) { linkResult in
            switch linkResult {
            case .success:
                // Handle success
                print("Linking process has completed successfully!")
            case .failure(let error):
                // Handle error
                print("Linking process has failed: \(error)")
            @unknown default:
                fatalError()
            }
        }
    }
}

#Preview {
    ContentView()
}

func versionString() -> String {
    return "LinkKit \(linkKitVersion()) (Build \(LinkKitVersionNumber))"
}
