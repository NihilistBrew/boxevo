
Usage
-----

#### Tweaking

The installation process will either result in either the whole
repository directory or just `simulation`. This does not matter, since
that directory is the only thing you need for running the program.

Where ever the directory may exists, open it. There are a few optional
things you can tweak before running the simulation:

-   Open `simulation\bundle\config.py` with any text editor. The
    variables here will all modify the simulation to one degree or
    another. After making a change, press `ctrl+s` to save it.
    -   Tip: For convenience of future simulations, you can keep it open
        and changing/saving it multiple times without having to re-open
        it.
-   To change the images of the sprites:
    -   Copy and paste an image of either an entity or a food sprite, or
        an image to be used as both.
    -   Change the relevant config variables (`entity_img` and/or
        `food_img`) to match the file name of the new images.
    -   Done!

#### Running

After you're finished tweaking and want to try it out, you have two
options:

1.  Run `simulation\bundle\startworld.exe`.

    -   This will create a single world populated by sprites that run
        for as long as the program is opened.
    -   No statistics are generated.

2.  Run `simulation\simulate.exe`.

    -   This will run `startworld.exe` for as many times and as long as
        specified in the config.
    -   Each execution creates a dated directory which contains all of
        the runs spawned by one execution of `simulate.exe`.
    -   Each run will generate a text file with evolutionary data, named
        `val(run).txt`.
    -   These `val.txt` files are in turn read by a graphing tool, which
        creates a graph `.png` for each evolutionary trait, where all of
        the data points are averages across all runs for that specific
        trait.