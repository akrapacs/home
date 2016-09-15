#!/usr/bin/env python

import sys
import getopt
import os
from os.path import join, realpath, dirname, expanduser, exists
import subprocess

def call(args):
    ret = subprocess.call(args)
    if ret is not 0:
        sys.exit(ret)

def main():
    env_path = dirname(realpath(__file__))
    home_path = expanduser("~")

    print("Linking environment in {} to {}".format(env_path, home_path))
    
    cwd = os.getcwd()
    os.chdir(home_path)

    call(["ln", "-fs", join(env_path, "bin"), "bin"])
    
    call(["ln", "-fs", join(env_path, "bashrc"), ".bashrc"])
    call(["ln", "-fs", join(env_path, "emacs"), ".emacs"])
    call(["ln", "-fs", join(env_path, "emacs.d"), ".emacs.d"])
    call(["ln", "-fs", join(env_path, "gitconfig"), ".gitconfig"])
    call(["ln", "-fs", join(env_path, "hgrc"), ".hgrc"])
    call(["ln", "-fs", join(env_path, "profile"), ".profile"])
    call(["ln", "-fs", join(env_path, "vim"), ".vim"])
    call(["ln", "-fs", join(env_path, "vimrc"), ".vimrc"])

    if not exists(join(".subversion")):
        os.makedirs(".subversion")
    call(["ln", "-fs", join(env_path, "subversion.config"), ".subversion/config"])
    
    os.chdir(cwd)
    
    return 0

if __name__ == "__main__":
    sys.exit(main())
