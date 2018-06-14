// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func lintLane() {
        desc("Lint changes")
        let status = sh(command: "swiftlint lint", log: true, errorCallback: "ERROR!!!")
        echo(message: "Status: \(status)\n")
        exit(1)
	}
}
