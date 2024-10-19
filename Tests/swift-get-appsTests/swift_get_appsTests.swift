@testable import GetApps
import Testing

@Test func example() async throws {
	// Write your test here and use APIs like `#expect(...)` to check expected conditions.
	let allApps = getInstalledApps()
	print(allApps.count)
	let installedApps = getInstalledApps(ignoreSystemApps: true)
	print(installedApps.count)
}
