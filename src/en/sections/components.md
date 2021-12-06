# Components

Each component in SystemRT is designed with modularity and simplicity at the core. This means each component's functionality or support can be improved by installing modules.
These modules can be installed from the application store. However, ExpidusOS also ships with its own modules which provide the basic functionality.

## devident

* [GitHub](https://github.com/ExpidusOS/libdevident)

devident, also known as `libdevident`, is the device identification library. It is responsible for looking up what device is running and provide information to applications
and Genesis Shell.

## Genesis Shell

* [GitHub](https://github.com/ExpidusOS/genesis)

The Genesis Shell is a modular desktop environment, that is the software which gives you a desktop interface. It is designed for all kinds of devices and can in fact provide
multiple device layout types on different monitors.

## SystemRT

* [GitHub](https://github.com/ExpidusOS/systemrt)

SystemRT is the component responsible with securing applications. It is short for "System Runtime", without it applications are free to do anything without much to prevent them.
This is why SystemRT is vital to running ExpidusOS. SystemRT starts automatically as a system service uppon startup.
