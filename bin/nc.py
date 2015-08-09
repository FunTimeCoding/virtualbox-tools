#!/usr/bin/env python3
import sys

from virtualbox_tools.node_config import NodeConfig


def main():
    application = NodeConfig(sys.argv[1:])

    return application.run()


if __name__ == '__main__':
    exit_code = main()
