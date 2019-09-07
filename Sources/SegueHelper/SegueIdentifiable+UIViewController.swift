import UIKit.UIViewController
import UIKit.UIStoryboardSegue

extension SegueIdentifiable where Self: UIViewController, Segue.RawValue == String {
    
    /// Method used for extracting the segue case from the storyboard's UIStoryboardSegue.
    ///
    /// - Parameter segue: The UIStoryboardSegue passed from the storyboard.
    /// - Returns: Returns the enum case for which the UIStoryboardSegue is associated.  If there is no associated case, this method throws an exception.
    func segueCase(for segue: UIStoryboardSegue) -> Segue {
        guard let identifier = segue.identifier, let identifierCase = Segue(rawValue: identifier) else {
            fatalError("could not map segue identifier - \(String(describing: segue.identifier)) - to segue case")
        }
        
        return identifierCase
    }
}
