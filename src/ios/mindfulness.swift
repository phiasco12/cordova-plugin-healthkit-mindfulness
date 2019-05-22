/*
* Notes: The @objc shows that this class & function should be exposed to Cordova.
*/
@objc(mindfulness) class mindfulness : CDVPlugin {
  @objc(mindful:) // Declare your function name.
  func mindful(command: CDVInvokedUrlCommand) { // write the function code.

    /* 
     * Always assume that the plugin will fail.
     * Even if in this example, it can't.
     */

    // Set the plugin result to fail.
   /* var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "The Plugin Failed");

    // Set the plugin result to succeed.
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "The plugin succeeded");

    // Send the function result back to Cordova.
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);*/
	
	
	
	@IBAction func activateHealthKit(_ sender: Any) {
     let typestoRead = Set([
            HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.mindfulSession)!
            ])
        
      let typestoShare = Set([
            HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.mindfulSession)!
            ])
        
        self.healthStore.requestAuthorization(toShare: typestoShare, read: typestoRead) { (success, error) -> Void in
            if success == false {
                print("solve this error\(error)")
                NSLog(" Display not allowed")
            }
            if success == true {
                print("dont worry everything is good \(success)")
                NSLog(" Integrated SuccessFully")
            }
          }
        }
	
	
	
	
	
	
	
	
  }
}

