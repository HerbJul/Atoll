//
//  Ext+URL.swift
//  NotchDrop
//
//  Created by 秋星桥 on 2024/7/8.
//


import Cocoa
import QuickLook

extension URL {
    func snapshotPreview(size: CGSize = CGSize(width: 128, height: 128)) -> NSImage {
        if let cgImage = QLThumbnailImageCreate(
            kCFAllocatorDefault,
            self as CFURL,
            size,
            nil
        )?.takeRetainedValue() {
            return NSImage(cgImage: cgImage, size: .zero)
        }
        return NSWorkspace.shared.icon(forFile: path)
    }
}
