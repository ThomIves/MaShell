![MaShell Logo](https://github.com/ThomIves/MaShell/blob/master/MaShellLogo.png)

# MaShell
> A text user interface set of bash scripts used for storing install and removal routines and subsequently supplying rapid recovery of existing linux machines OR rapidly bringing up new linux machines.

When there would be a need to bring up a new linux system for whatever reason, I no longer wanted to repeat work that could appropriately be stored in an easy text user interface set of bash scripts that were easy to maintain.

## Installing / Getting started

Clone or download this to a directory of your choosing. Make sure that all shell scripts in all directories (*.sh files), are executable. 

To get an initial feel for how it all works, from a shell prompt, run `./InstallationMaster.sh` and follow the prompts. You'll see that each directory in the repository serves similar types (in my opinion) installation scripts.

`InstallationMaster.sh` calls `Master.sh` to serve up the contents of each directory as chosen from the main menu created by `InstallationMaster.sh`. Once you choose a specific installation script, `SinglePackageManager.sh` gets called to deal with the details. This is where the heavy lifting happens. If the packages you want to install are not installed, it goes through a step of best practices (again, in my opinion) to install those packages. If the package is, or packages are, already installed, it takes steps to remove them and backout of setups thoroughly. 

Take a look at what I have done in the subdirectories to get a feel for how to setup your own specific install scripts. The base level scripts in the subdirectories are mostly places to assign piece parts of installation to variables handled by `SinglePackageManager.sh`. Once you get a feel for the architecture, I hope that you will find it increasingly easy to add your own installation scripts under your own subdirectories that serve as the top level categories. 

## Initial Configuration

Other than making sure that all *.sh files are executable, this "should" work out of the box. I hate it when people "should" on me, so I hope I didn't just "should" on you.

## Adapting to Your Needs

As you start leveraging from what I have done, I recommend that you start with simple, depending on your level, steps until you get a feel for how to make the most of this for you. It would likely be best to keep this repo separate and use it as a reference as you modify a copy adapted to your needs. That way, if I make improvements (again, in my opinion :-) ), you can see that supposed improvements that I have made and see if you want to incorporate them. I architected this to be as flexible as possible, but I am sure there is still some work to be done.

## Deploying / Publishing

I would appreciate it, as you share your work leveraged from this set of scripts, if you would please keep a referral back to my github repo. Thanks! I'd do the same for you. :-)

## Contributing

I am open to share the development and improvements of this with others, but it has been solo up until now. Let me know if you'd like to contribute. 

## Links

This work came from https://github.com/ThomIves/MaShell originally. 

## Licensing

"The code in this project is licensed under MIT license."


