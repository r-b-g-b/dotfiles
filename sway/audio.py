import re
import sys
import subprocess


def main():
    volume = sys.stdin.read()
    m = re.match(r"Volume:\s*([\d.]*)(\s*\[MUTED\])?", volume)
    volume_float = float(m.group(1))
    muted = m.group(2) is not None

    output = ""
    if muted:
        output += "🔇 "
    else:
        output += "🔊 "

    output += f"{volume_float:.0%}"

    print(output, file=sys.stdout)


if __name__ == "__main__":
    main()
