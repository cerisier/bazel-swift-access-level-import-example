import Foundation

//NOTE: Test each of these 3 imports to test various swift import visibility
#if INTERNAL_IMPORT
internal import Library
#elseif IMPLEMENTATION_ONLY_IMPORT
@_implementationOnly import Library
#else
import Library
#endif

public func fromBindings() {
    fromLibrary()
}