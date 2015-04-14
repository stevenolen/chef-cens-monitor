#
# Cookbook Name:: monitor
# Recipe:: rt4_checks
#
# Copyright 2015, Steve Nolen
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "monitor::default"

sensu_check "rt4-process" do
  command "check-procs.rb -p request-tracker4 -w 2 -c 2"
  handlers ["default"]
  standalone true
  interval 30
end