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
#   File: nadir.pri
#
# Author: $author$
#   Date: 8/5/2021
#
# QtCreator .pri file for xosnadir executable nadir
########################################################################

########################################################################
# nadir

# nadir TARGET
#
nadir_TARGET = nadir

# nadir INCLUDEPATH
#
nadir_INCLUDEPATH += \
$${xosnadir_INCLUDEPATH} \

# nadir DEFINES
#
nadir_DEFINES += \
$${xosnadir_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_NADIR_MAIN_INSTANCE \

########################################################################
# nadir OBJECTIVE_HEADERS
#
#nadir_OBJECTIVE_HEADERS += \
#$${XOSNADIR_SRC}/xosnadir/app/console/nadir/main.hh \

# nadir OBJECTIVE_SOURCES
#
#nadir_OBJECTIVE_SOURCES += \
#$${XOSNADIR_SRC}/xosnadir/app/console/nadir/main.mm \

########################################################################
# nadir HEADERS
#
nadir_HEADERS += \
$${NADIR_SRC}/xos/app/console/nadir/main.hpp \
\
$${NADIR_SRC}/xos/base/main_main.hpp \

# nadir SOURCES
#
nadir_SOURCES += \
$${NADIR_SRC}/xos/app/console/nadir/main.cpp \
\
$${NADIR_SRC}/xos/base/main_main.cpp \

########################################################################
# nadir FRAMEWORKS
#
nadir_FRAMEWORKS += \
$${xosnadir_FRAMEWORKS} \

# nadir LIBS
#
nadir_LIBS += \
$${xosnadir_LIBS} \


