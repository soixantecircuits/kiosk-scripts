# Locales: installing

Check that you have the locales package installed. On Debian you can do that with.

$ dpkg -l locales

||/ Name           Version        Description
+++-==============-==============-============================================
ii  locales        2.7-18         GNU C Library: National Language (locale) da

The last line is the important one: if it starts with ii, the package is installed, and everything is fine. If not, install it. As root, type

$ aptitude install locales

If you get a dialog asking for details, read on to the next section.

# Locales: generation

make sure that on your system an UTF-8 locale is generated. As root, type

$ dpkg-reconfigure locales

You ll see a long list of locales, and you can navigate that list with the up/down arrow keys. Pressing the space bar toggles the locale under the cursor. Make sure to select at least one UTF-8 locale, for example en_US-UTF-8 is usually supported very well. (The first part of the locale name stands for the language, the second for the country or dialect, and the third for the character encoding).

In the next step you have the option to make one of the previously selected locales the default. Picking a default UTF-8 locale as default is usually a good idea, though it might change how some programs work, and thus shouldn t be done servers hosting sensitive applications.

# Locales: configuration

Type following command in shell:

sh configure.sh

# Locales: check

Run the locale program. The output should be similar to this:

LANG=en_US.UTF-8
LANGUAGE=en_US.UTF-8
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_ALL=en_US.UTF-8

If not you ve made a mistake in one of the previous steps, and need to recheck what you did.
