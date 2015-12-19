#!/bin/sh
LDFLAGS="-L/Applications/moodle/common/lib $LDFLAGS"
export LDFLAGS
CFLAGS="-I/Applications/moodle/common/include $CFLAGS"
export CFLAGS
CXXFLAGS="-I/Applications/moodle/common/include $CXXFLAGS"
export CXXFLAGS
		    
PKG_CONFIG_PATH="/Applications/moodle/common/lib/pkgconfig"
export PKG_CONFIG_PATH
