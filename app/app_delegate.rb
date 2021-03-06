class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow

    alert = NSAlert.new
    alert.messageText = "Hello World!"
    alert.runModal

    trythis = NSAlert.new
    trythis.messageText = "What will show up here?"
    trythis.runModal

    anotherModal = NSAlert.new
    anotherModal.messageText = "Another modal over here."
    anotherModal.runModal

    yetAnotherModal = NSAlert.new
    yetAnotherModal.messageText = "Yet another modal over here."
    yetAnotherModal.runModal
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end
end
