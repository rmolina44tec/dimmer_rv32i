db::setAttr geometry -of [gi::getFrames 1] -value 1040x824+159+55
sa::openSimulationConsole
gi::executeAction giCloseWindow -in [gi::getWindows 2]
sa::openSimulationConsole
gi::executeAction {menuPreShow} -in [gi::getWindows 3]
gi::executeAction {menuPreShow} -in [gi::getWindows 3]
gi::executeAction {menuPreShow} -in [gi::getWindows 3]
gi::executeAction giCloseWindow -in [gi::getWindows 3]
exit
db::setAttr geometry -of [gi::getFrames 1] -value 1040x708+159+55
