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
#   File: morse.pri
#
# Author: $author$
#   Date: 7/8/2021
#
# QtCreator .pri file for xosnadir executable morse
########################################################################

########################################################################
# morse

# morse TARGET
#
morse_TARGET = morse

# morse INCLUDEPATH
#
morse_INCLUDEPATH += \
$${xosnadir_INCLUDEPATH} \

# morse DEFINES
#
morse_DEFINES += \
$${xosnadir_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_MORSE_MAIN_INSTANCE \

########################################################################
# morse OBJECTIVE_HEADERS
#
#morse_OBJECTIVE_HEADERS += \
#$${XOSNADIR_SRC}/xos/app/console/morse/main.hh \

# morse OBJECTIVE_SOURCES
#
#morse_OBJECTIVE_SOURCES += \
#$${XOSNADIR_SRC}/xos/app/console/morse/main.mm \

########################################################################
# morse HEADERS
#
morse_HEADERS += \
$${NADIR_SRC}/xos/app/console/morse/main.hpp \

# morse SOURCES
#
morse_SOURCES += \
$${NADIR_SRC}/xos/app/console/morse/main.cpp \
$${NADIR_SRC}/xos/console/main_main.cpp \

########################################################################
# morse FRAMEWORKS
#
morse_FRAMEWORKS += \
$${xosnadir_FRAMEWORKS} \

# morse LIBS
#
morse_LIBS += \
$${xosnadir_LIBS} \


