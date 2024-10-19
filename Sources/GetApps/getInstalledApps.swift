import Foundation

// get and return a list of non-system apps installed on user's device

public func getInstalledApps(ignoreSystemApps: Bool? = false) -> [InstalledApp] {
	let applicationsURL = URL(fileURLWithPath: "/Applications")
	let fileManager = FileManager.default
	var installedApps: [InstalledApp] = []

	do {
		let appURLs = try fileManager.contentsOfDirectory(at: applicationsURL, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)

		for appURL in appURLs {
			if isNonSystemApp(appURL: appURL) || ignoreSystemApps == false, let bundle = Bundle(url: appURL) {
				if let bundleId = bundle.bundleIdentifier {
					installedApps.append(InstalledApp(location: appURL, bundleId: bundleId))
				}
			}
		}
	} catch {
		print("ERROR: \(error)")
	}

	return installedApps.sorted { $0.name < $1.name }
}

private func isNonSystemApp(appURL: URL) -> Bool {
	let bundle = Bundle(url: appURL)
	if let bundleIdentifier = bundle?.bundleIdentifier {
		return !bundleIdentifier.hasPrefix("com.apple")
	}
	return false
}
