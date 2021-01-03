import Foundation
import ArgumentParser

struct ReplaceCommand: ParsableCommand {
    
    static let configuration = CommandConfiguration(abstract: "Replaces occurences of `string` with a supplied `replacement` string.")
    init() {}
    
    @Argument() var filePath: String
    @Argument() var string: String
    @Argument() var replacement: String

    func run() throws {
        
        let contents = try String(contentsOfFile: filePath)
        let replaced = contents.replacingOccurrences(of: string, with: replacement)
        try replaced.write(toFile: filePath, atomically: true, encoding: .utf8)
        
    }
}

