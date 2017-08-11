// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation
import Cocoa

// swiftlint:disable file_length
// swiftlint:disable line_length
// swiftlint:disable type_body_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> NSStoryboard {
    return NSStoryboard(name: self.storyboardName, bundle: Bundle(for: BundleToken.self))
  }

  static func initialController() -> Any {
    guard let controller = storyboard().instantiateInitialController()
    else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return controller
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func controller() -> Any {
    return Self.storyboard().instantiateController(withIdentifier: self.rawValue)
  }
  static func controller(identifier: Self) -> Any {
    return identifier.controller()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension NSWindowController {
  func performSegue<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

extension NSViewController {
  func performSegue<S: StoryboardSegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    performSegue(withIdentifier: segue.rawValue, sender: sender)
  }
}

enum StoryboardScene {
  enum EmployeeTableViewController: String, StoryboardSceneType {
    static let storyboardName = "EmployeeTableViewController"

    case employeeTableViewControllerScene = "EmployeeTableViewController"
    static func instantiateEmployeeTableViewController() -> jmbde.EmployeeTableViewController {
      guard let vc = StoryboardScene.EmployeeTableViewController.employeeTableViewControllerScene.controller() as? jmbde.EmployeeTableViewController
      else {
        fatalError("ViewController 'EmployeeTableViewController' is not of the expected class jmbde.EmployeeTableViewController.")
      }
      return vc
    }
  }
  enum Main: StoryboardSceneType {
    static let storyboardName = "Main"
  }
}

enum StoryboardSegue {
  enum Main: String, StoryboardSegueType {
    case employee = "Employee"
  }
}

private final class BundleToken {}
