///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2018 $organization$
///
/// This software is provided by the author and contributors ``as is''
/// and any express or implied warranties, including, but not limited to,
/// the implied warranties of merchantability and fitness for a particular
/// purpose are disclaimed. In no event shall the author or contributors
/// be liable for any direct, indirect, incidental, special, exemplary,
/// or consequential damages (including, but not limited to, procurement
/// of substitute goods or services; loss of use, data, or profits; or
/// business interruption) however caused and on any theory of liability,
/// whether in contract, strict liability, or tort (including negligence
/// or otherwise) arising in any way out of the use of this software,
/// even if advised of the possibility of such damage.
///
///   File: main.hpp
///
/// Author: $author$
///   Date: 3/30/2018
///////////////////////////////////////////////////////////////////////
#ifndef _XOS_NADIR_XOS_APP_CONSOLE_MORSE_MAIN_HPP
#define _XOS_NADIR_XOS_APP_CONSOLE_MORSE_MAIN_HPP

#include "xos/base/getopt/main.hpp"
#include "xos/app/console/morse/code.hpp"

namespace xos {
namespace app {
namespace console {
namespace morse {

typedef xos::base::getopt::main_implements main_implements;
typedef xos::base::getopt::main main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main: virtual public main_implements, public main_extends {
public:
    typedef main_implements Implements;
    typedef main_extends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main(): spaces_(true), space_(" ") {
    }
    virtual ~main() {
    }
protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int run(int argc, char_t **argv, char_t **env) {
        int err = 0; char_t c = 0;
        if (optind < argc) {
            bool spaces = spaces_; const char* space = space_; int j = 0;
            for (int arg = optind; arg < argc; ++arg) {
                for (int i = 0; (c = argv[arg][i]) != 0; ++i) {
                    if ((spaces) && (j)) {
                        this->out(space);
                    } else {
                    }
                    if (((c = ::tolower(c)) >= 'a') && (c <= 'z')) {
                        this->out(letter[c - 'a']); ++j;
                    } else {
                      if ((c >= '0') && (c <= '9')) {
                          this->out(digit[c - '0']); ++j;
                      } else {
                          if ((c >= ' ') && (c <= ' ')) {
                              this->out(space); ++j;
                          } else {
                          }
                      }
                    }
                }
            }
            this->outln();
        }
        return err;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    bool spaces_;
    const char* space_;
};

} // namespace morse
} // namespace console
} // namespace app
} // namespace xos

#endif // _XOS_NADIR_XOS_APP_CONSOLE_MORSE_MAIN_HPP
