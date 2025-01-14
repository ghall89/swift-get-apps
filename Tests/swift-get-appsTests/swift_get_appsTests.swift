@testable import GetApps
import Testing

@Test func example() async throws {
	// Write your test here and use APIs like `#expect(...)` to check expected conditions.
	let allApps = getAllApps()
	print(allApps.count)
	let installedApps = getUserApps()
	print(installedApps.count)
}
