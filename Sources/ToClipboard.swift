import Foundation
import Cocoa

class ToClipboard:  NSObject, NSApplicationDelegate {
    let clipboard: NSPasteboard
    let pipedInput: FileHandle
    
    override init() {
        clipboard = NSPasteboard.general
        pipedInput = FileHandle.standardInput
        super.init()
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        readAndCopy()
    }
        
    private func stripLastNewLine(s: String) -> String {
        return s.hasSuffix("\n") ? String(s.dropLast(1)) : s
    }

    private func readAndCopy() {
        if var text = String(bytes: pipedInput.availableData, encoding: .utf8) {
            text = stripLastNewLine(s: text)
            clipboard.clearContents()
            clipboard.setString(text, forType: .string)
            print("copied!")
            exit(0)
        }
    }

    deinit {
        pipedInput.closeFile()
    }

}
