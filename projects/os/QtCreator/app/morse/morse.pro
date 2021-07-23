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
#   File: morse.pro
#
# Author: $author$
#   Date: 7/8/2021
#
# QtCreator .pro file for xosnadir executable morse
########################################################################
include(../../../../../build/QtCreator/xosnadir.pri)
include(../../../../QtCreator/xosnadir.pri)
include(../../xosnadir.pri)
include(../../../../QtCreator/app/morse/morse.pri)

TARGET = $${morse_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${morse_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${morse_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${morse_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${morse_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${morse_HEADERS} \
$${morse_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${morse_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${morse_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${morse_LIBS} \
$${FRAMEWORKS} \


