//
//  GetMoreRamApp.swift
//  GetMoreRam
//
//  Created by s s on 2025/3/14.
//

import SwiftUI

@main
struct iRAMPlusApp: App {
    init() {
        UserDefaults.standard.register(defaults: [
            "saveLoginToKeychain": true,
            "enableDebugging": false,
            "enableIncreasedMemoryLimit": true,
            "enableExtendedVirtualAddressing": false
        ])
        // Migrate old credentials from appleID to appleAccount keychain keys
        Keychain.shared.migrateOldCredentials()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
