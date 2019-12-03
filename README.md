# Sublime Text 3 Build Systems
<https://github.com/amosyu2000/st3-build-systems>  
Amos Yu, amosyu2000.github.io  

## About  
A Sublime Text 3 (ST3) Package containing scripts for compiling/executing a handful of file types. ST3's built-in build systems do not allow the user to give input at runtime. These Sublime build systems bypass this issue by opening a separate command prompt window to execute the program rather than executing in ST3's build output panel.

![Screenshot](https://user-images.githubusercontent.com/46848538/70080896-6bdbb680-15d5-11ea-9c33-e7bda3e974d4.jpg "Python build")  

## Supported File Types  
- C  
- C++  
- Java  
- Python  

## Tips and Tricks
- `Ctrl+B` is the hotkey for building a file.
- Change your build system to automatic so that ST3 remembers which build system to use for each file type. Go to Tools > Build System > Automatic.  
- Some of the build systems in this package have custom features (ex. Compiling a custom `.exe` file in C instead of the generic `a.exe`). The hotkey `Ctrl+Shift+B` will access these.
- You may want to disable the output panel in ST3 from appearing every time you run a file. Go to Preferences > Settings and add `"show_panel_on_build": false` to your `Preferences.sublime-settings -- User` file.  
