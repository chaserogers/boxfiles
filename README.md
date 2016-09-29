# boxfiles (dotfiles by b0xw00d)

## Installation
Install at your own risk!  I highly recommend making a backup of any important files before installing this.

#### Clone this repository:

`git clone https://github.com/b0xw00d/boxfiles.git`

#### Install the dotfiles:

`source boxfiles/install.sh`

That's it!  You're good to go.  Feel free to fork this repository and customize it as you see fit.

## Sublime Text 3 configuration
In order for the Sublime settings to take effect you'll need to install Sublime Text 3 and Package Control.  The instructions for installing Sublime Text 3 can be found [here] (https://www.sublimetext.com/3).  The Package Control instructions can be found [here] (https://packagecontrol.io/installation).

If you'd like to omit the Sublime Text portion of this repo entirely, delete the sublime folder and lines 13 and 14 from the install.sh file before running the install script.

## iTerm configuration
This task can be accomplished from your iTerm Preferences window.  Here is a useful article on how to sync your iTerm preferences with dotfiles:  [http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/](http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/).

## Rails template configuration
To configure your rails_template to create a new repository on github and push your project to that repository on initialize, follow these steps:

- navigate to boxfiles/rails/.rails_template.rb
- uncomment lines 51-54
- change b0xw00d to your github username on line 51
- save your changes

An example application generated with this template can be found [here] (https://github.com/b0xw00d/rails_template_example).
