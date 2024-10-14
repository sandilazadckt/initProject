# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "F:/STM32/projectSetup/tmp/initProject+APP"
  "F:/STM32/projectSetup/tmp/1"
  "F:/STM32/projectSetup/tmp/initProject+APP"
  "F:/STM32/projectSetup/tmp/initProject+APP/tmp"
  "F:/STM32/projectSetup/tmp/initProject+APP/src/initProject+APP-stamp"
  "F:/STM32/projectSetup/tmp/initProject+APP/src"
  "F:/STM32/projectSetup/tmp/initProject+APP/src/initProject+APP-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "F:/STM32/projectSetup/tmp/initProject+APP/src/initProject+APP-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "F:/STM32/projectSetup/tmp/initProject+APP/src/initProject+APP-stamp${cfgdir}") # cfgdir has leading slash
endif()
