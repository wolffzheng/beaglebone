import sys
sys.path.append("/home/ubuntu/logi-tools/python/")

import time,math
import logi_hal

gpio_0=0x0000
logi_hal.setGPIODir(gpio_0,0x2)
logi_hal.setGPIOVal(gpio_0,0x2)
