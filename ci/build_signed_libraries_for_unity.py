#!/usr/bin/env python3
import sys
import os
import argparse
import subprocess

PROJECT_PATH = "./Src/Newtonsoft.Json/Newtonsoft.Json.csproj"
DEFAULT_BUILD_DIR = "./Build"


def main():
    args = parse_input()
    build_output = args.build_output
    if not build_output:
        build_output = DEFAULT_BUILD_DIR

    if not os.path.exists(build_output):
        os.makedirs(build_output)

    base_build_command = "dotnet build " + PROJECT_PATH + " -p:AdditionalConstants=SIGNING"

    build_for_configuration(base_build_command, "UnityAOT", build_output)
    build_for_configuration(base_build_command, "UnityEditor", build_output)


def parse_input():
    parser = argparse.ArgumentParser()
    parser.add_argument("--build-output", help="The path where to put the built artifacts.", type=str,
                        required=False, default="")
    args = parser.parse_args()
    return args


def build_for_configuration(base_build_command, configuration, build_output):
    print("Building " + configuration)
    build_command = base_build_command \
                    + " -o " + build_output + "/" + configuration \
                    + " --configuration " + configuration
    build_process_output = subprocess.run(build_command, shell=True, check=True)
    print(build_process_output)


if __name__ == "__main__":
    sys.exit(main())
