//
//  themeSetting.swift
//  Todo App
//
//  Created by Reefkey on 22/02/21.
//

import Foundation

final public class ThemeSettings: ObservableObject {
    @Published public var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
    didSet {
        UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
    }
}
    private init() {}
    public static let shared = ThemeSettings()
}
