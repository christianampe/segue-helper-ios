import UIKit.UIStoryboardSegue

/// A protocol used to set up a type-safe segue identifier.
protocol SegueIdentifiable {
    associatedtype Segue: RawRepresentable
    
    /// A method used to convert a UIStoryboardSegue to its specific type-safe Segue.
    ///
    /// - Parameter segue: A UIStoryboardSegue passed from the Storyboard.
    /// - Returns: The Segue associated with the UIStoryboardSegue.
    func segueCase(for segue: UIStoryboardSegue) -> Segue
}
