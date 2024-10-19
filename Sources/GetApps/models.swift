import AppKit
import Foundation

public struct InstalledApp: Identifiable, Hashable {
	public var id: UUID = .init()
	public var location: URL
	public var bundleId: String
	public var name: String {
		return location.deletingPathExtension().lastPathComponent
	}

	public var icon: NSImage? {
		getAppIcon(identifier: bundleId)
	}
}

private func getAppIcon(identifier: String) -> NSImage? {
	if let appPath = NSWorkspace.shared.urlForApplication(withBundleIdentifier: identifier) {
		let pathString = String(appPath.absoluteString.dropFirst(7).dropLast(1).replacingOccurrences(of: "%20", with: " "))
		let appIcon = NSWorkspace.shared.icon(forFile: pathString)
		return appIcon
	}
	
	return nil
}
