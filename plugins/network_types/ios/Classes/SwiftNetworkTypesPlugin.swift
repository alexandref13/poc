import Flutter
import UIKit
import Reachability
import CoreTelephony
public class SwiftNetworkTypesPlugin: NSObject, FlutterPlugin {
    private var reachability: Reachability?
    private var eventSink: FlutterEventSink?
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "network_types", binaryMessenger: registrar.messenger())
        let instance = SwiftNetworkTypesPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        let streamChannel = FlutterEventChannel(name: "network_types_status", binaryMessenger: registrar.messenger())
        streamChannel.setStreamHandler(instance)

    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "networkStatus" {
            result(statusForNetWork())
        }else{
            result(FlutterMethodNotImplemented)
        }
    }
}

extension SwiftNetworkTypesPlugin: FlutterStreamHandler {
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        NotificationCenter.default.addObserver(self, selector:#selector(networkStatusChange(_:)) , name: .reachabilityChanged, object: nil)
        do {
            reachability = try Reachability()
            try reachability?.startNotifier()
        }catch(let erro as NSError){
            return FlutterError(code: "\(erro.code)", message: erro.domain, details: "Falha ao inicializar o monitoramento de rede.");
        }
        eventSink = events
        return nil
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        if reachability != nil {
            do {
                try reachability?.startNotifier()
                reachability = nil
            }catch(let erro as NSError){
                return FlutterError(code: "\(erro.code)", message: erro.domain, details: "Falha ao interromper o monitoramento de rede.");
            }
        }
        NotificationCenter.default.removeObserver(self)
        return nil
    }


    @objc func networkStatusChange(_ notice: Notification) {
        eventSink?(statusForNetWork())
    }

    private func statusForNetWork() -> String {
        //0:unreachable 1:2G 2:3G 3:Wi-Fi 4:4G 5:5G 6:othermobie
        if reachability == nil {
             reachability = try! Reachability()
        }
        guard let netReach = reachability else { return "0" }
        switch netReach.connection {
        case .wifi:
            return NetworkStatus.wifi.value
        case .unavailable:
            return NetworkStatus.unreach.value
        case .cellular:
            
            if Float(String(UIDevice.current.systemVersion.split(separator: ".").first!)) ?? 0 >= 7.0 {
                let teleInfo = CTTelephonyNetworkInfo()
                guard let access = teleInfo.currentRadioAccessTechnology else {
                    return  NetworkStatus.other.value
                }
                if [CTRadioAccessTechnologyEdge,
                    CTRadioAccessTechnologyGPRS,
                    CTRadioAccessTechnologyCDMA1x].contains(access) {
                    return NetworkStatus.mobile2G.value
                }
                
                if [CTRadioAccessTechnologyHSDPA,
                    CTRadioAccessTechnologyWCDMA,
                    CTRadioAccessTechnologyHSUPA,
                    CTRadioAccessTechnologyCDMAEVDORev0,
                    CTRadioAccessTechnologyCDMAEVDORevA,
                    CTRadioAccessTechnologyCDMAEVDORevB,
                    CTRadioAccessTechnologyeHRPD].contains(access) {
                    return NetworkStatus.mobile3G.value
                }
                
                if [CTRadioAccessTechnologyLTE].contains(access) {
                    return NetworkStatus.mobile4G.value
                }
                if #available(iOS 14.0, *), [CTRadioAccessTechnologyNRNSA,
                                             CTRadioAccessTechnologyNR].contains(access) {
                    return NetworkStatus.mobile5G.value
                }
                return NetworkStatus.other.value
                
            }else{
                return NetworkStatus.other.value
            }
        default:
            return NetworkStatus.unreach.value
        }
    }
    
    enum NetworkStatus: Int {
        case unreach = 0
        case mobile2G = 1
        case mobile3G = 2
        case wifi = 3
        case mobile4G = 4
        case mobile5G = 5
        case other = 6
        var value: String{
            return "\(self.rawValue)"
        }
    }
}
