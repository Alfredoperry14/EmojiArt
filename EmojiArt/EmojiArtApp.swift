//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Alfredo Perry on 10/5/24.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Main")
    @StateObject var store2 = PaletteStore(named: "Alternate")
    @StateObject var store3 = PaletteStore(named: "Special")

    var body: some Scene {
        WindowGroup {
//            PaletteManager(
//                stores: [paletteStore, store2, store3],
//                selectedStore: paletteStore
//            )
            EmojiArtDocumentView(document: defaultDocument)
                .environmentObject(paletteStore)
        }
    }
}
