#-------------------------------------------------------------------------
#
#  Copyright (c) 2021 Rajit Manohar
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#  
#-------------------------------------------------------------------------
TARGETACT=globals.act spreset.act

ACT_STDLIB=_all_.act channel.act data.act func.act

include $(ACT_HOME)/scripts/Makefile.std

all:

install: install_act install_std

install_std: $(patsubst %,std/%,$(ACT_STDLIB))
	@if [ ! -d $(ACT_HOME)/act/std ]; then mkdir $(ACT_HOME)/act/std; fi
	@for i in $(ACT_STDLIB); do $(ACT_HOME)/scripts/install std/$$i $(ACT_HOME)/act/std/$$i; done

-include Makefile.deps
