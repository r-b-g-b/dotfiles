#! /usr/bin/env python
import statistics
import sys
import time

def read_once():
    with open("/sys/class/power_supply/BAT1/current_now", "r") as fp:
        current_now = int(fp.read())

    with open("/sys/class/power_supply/BAT1/charge_now", "r") as fp:
        charge_now = int(fp.read())

    return current_now, charge_now


if __name__ == "__main__":
    values = []
    for _ in range(10):
        time.sleep(0.05)
        values.append(read_once())
    currents_now, charges_now = zip(*values)
    current_now, charge_now = statistics.mean(currents_now), statistics.mean(charges_now)

    hours_remaining = charge_now / current_now
    hours_remaining = charge_now / current_now
    hours = int(hours_remaining)
    minutes = (hours_remaining - int(hours)) * 60

    print(f"{hours}:{minutes:02.0f}", file=sys.stdout)
