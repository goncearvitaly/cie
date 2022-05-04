require "appium_lib"

def caps
  { caps: {
      deviceName: "Galaxy S6",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "movie.apk")),
      appPackage: "com.cie.qatest",
      appActivity: "MainConverterActivity",
      newCommandTimeout: "3600"
  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object



Before do
  $driver.start_driver
end


After do
  $driver.driver_quit
end