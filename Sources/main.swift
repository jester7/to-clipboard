//
//  main.swift
//  to-clipboard
//
//  Created by F. Jovan Jester on 16/04/24.
//

import Cocoa

let toClipboard = ToClipboard()
let app = NSApplication.shared
app.delegate = toClipboard
app.run()
