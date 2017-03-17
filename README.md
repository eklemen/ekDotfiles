# ekDotfiles

Finally getting around to piecing together some dotfiles/configs/setup scripts for a new machine.

#### So far

* Directory for JetBrains settings (WebStorm and PhpStorm)
  * As it turns out exporting PhpStorm settings does not import into WebStorm
* General scripts documented which will run installers package managers and git to get you up and running.

#### Todo

- [ ] Make directory and import Sublime settings
- [ ] Create separate .sh for OSX default scripts
- [ ] Create separate .sh for other general setup scripts (need to be bash executable)
  - [ ] Add `echo`'s for each step of installment
- [ ] Remap php.ini when upgrading to php7
- [ ] create symlink.sh for packages that live in this repo
- [ ] create install.sh for packages that get installed to the machine
- [ ] Create a setup.sh that will run symlink.sh and install.sh
- [ ] Update README when the above are completed to know how to run this stuff.
