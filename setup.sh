#!/bin/bash

# Setup
#
# Copyright (C) 2018 Sergey Kolevatov
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#

source "install_ubuntu_package_incl.sh"

distr_name=$1
shift
packages=$*

[[ -z "$distr_name" ]] && echo "ERROR: distribution name is not given" && exit
[[ -z "$packages" ]]   && echo "ERROR: packages are not given" && exit


setup "$distr_name" "$packages"
