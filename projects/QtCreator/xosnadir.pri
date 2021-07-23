########################################################################
# Copyright (c) 1988-2021 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: xosnadir.pri
#
# Author: $author$
#   Date: 6/26/2021
#
# QtCreator .pri file for xosnadir
########################################################################

OTHER_PKG = ../../../../../..
OTHER_PRJ = ../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

########################################################################
# xosnadir
XOSNADIR_NAME = nadir
XOSNADIR_SOURCE = src

XOSNADIR_PKG = ../../../../..
XOSNADIR_BLD = ../..

XOSNADIR_PRJ = $${XOSNADIR_PKG}
XOSNADIR_BIN = $${XOSNADIR_BLD}/bin
XOSNADIR_LIB = $${XOSNADIR_BLD}/lib
XOSNADIR_SRC = $${XOSNADIR_PKG}/$${XOSNADIR_SOURCE}

NADIR_SRC = $${XOSNADIR_SRC}
XOSNADIR_LIB_NAME = xos$${XOSNADIR_NAME}

# xosnadir BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
xosnadir_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
xosnadir_DEFINES += RELEASE_BUILD
}

# xosnadir INCLUDEPATH
#
xosnadir_INCLUDEPATH += \
$${XOSNADIR_SRC} \
$${build_xosnadir_INCLUDEPATH} \

# xosnadir DEFINES
#
xosnadir_DEFINES += \
$${build_xosnadir_DEFINES} \
NO_USE_NADIR_BASE \
NO_USE_XOS_LOGGER_INTERFACE \

# xosnadir LIBS
#
xosnadir_LIBS += \
-L$${XOSNADIR_LIB}/lib$${XOSNADIR_LIB_NAME} \
-l$${XOSNADIR_LIB_NAME} \
