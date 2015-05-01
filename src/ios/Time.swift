import Foundation

@objc(Time) class Time : CDVPlugin {
    func whatIsTime(command: CDVInvokedUrlCommand) {
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
        let hour = components.hour
        let minute = components.minute
        let data = ["hour":hour,"minute":minute]
        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAsDictionary: data)
        commandDelegate.sendPluginResult(pluginResult, callbackId:command.callbackId)
    }
}