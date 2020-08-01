import UIKit
import Flutter


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    //
    
    
    
//    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController;
//       let twitterChannel = FlutterMethodChannel.init(name: "com.channels/test",
//                                                      binaryMessenger: controller as! FlutterBinaryMessenger);
//
//       twitterChannel.setMethodCallHandler({
//           (call: FlutterMethodCall, result: FlutterResult) -> Void in
//           if ("test" == call.method) {
//                self.testChannel(result: result)
//           } else {
//               result(FlutterMethodNotImplemented);
//           }
//       });
    
    
    
    //
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    
    
    private func testChannel(result: FlutterResult){




           result(String("true"))
           return
       }
}
