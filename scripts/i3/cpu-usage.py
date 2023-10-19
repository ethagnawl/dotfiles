#!/usr/bin/env python3
import psutil
print("CPU: " + str(psutil.cpu_percent(interval=1)) + "%")
print("-")
