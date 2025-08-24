// import UIKit
// import Flutter
// import zpdk
//
// @UIApplicationMain
// @objc class AppDelegate: FlutterAppDelegate {
//     private var eventSink: FlutterEventSink?
//
//     override func application(
//         _ application: UIApplication,
//         didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
//     ) -> Bool {
//         GeneratedPluginRegistrant.register(with: self)
//          let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
//          let shareChannel = FlutterMethodChannel(name: "flutter.native/channelPayOrder", binaryMessenger: controller.binaryMessenger)
//          shareChannel.setMethodCallHandler({
//              (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
//              if(call.method=="payOrder"){
//                  let args = call.arguments as? [String: Any]
//                  let  _zptoken = args?["zptoken"] as? String
//                  //                ZaloPaySDK.sharedInstance()?.paymentDelegate = paymentHandler
//                  ZaloPaySDK.sharedInstance()?.payOrder(_zptoken)
//              }
//          })
//          ZaloPaySDK.sharedInstance()?.initWithAppId(2956, uriScheme: "https://spcharge.page.link/*/exchanged?payment_method=zalopay", environment: .sandbox)
//
//
//         return super.application(application, didFinishLaunchingWithOptions: launchOptions)
//     }
//
//      override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
//          return ZaloPaySDK.sharedInstance().application(app, open:url, sourceApplication: "vn.com.vng.zalopay", annotation:nil)
//      }
//      func paymentDidSucceeded(_ transactionId: String!, zpTranstoken: String!, appTransId: String!) {
//          //Example of Handling Success
//          guard let eventSink = eventSink else {
//              return
//          }
//          eventSink(["errorCode": 1, "zpTranstoken": zpTranstoken, "transactionId": transactionId, "appTransId": appTransId])
//      }
//      func paymentDidCanceled(_ zpTranstoken: String!, appTransId: String!) {
//          //Example of Handling User Canceled
//          guard let eventSink = eventSink else {
//              return
//          }
//          eventSink(["errorCode": 4, "zpTranstoken": zpTranstoken, "appTransId": appTransId])
//      }
//      func paymentDidError(_ errorCode: ZPPaymentErrorCode, zpTranstoken: String!, appTransId: String!) {
//          //Example of Handling Error
//          guard let eventSink = eventSink else {
//              return
//          }
//          //Redirect to Zalo/ZaloPay Store when errorCode == ZPPaymentErrorCode.appNotInstall
//          eventSink(["errorCode": errorCode, "zpTranstoken": zpTranstoken, "appTransId": appTransId])
//      }
// }


import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
