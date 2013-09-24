#
# Cookbook Name:: nlesc-base
# Recipe:: default
#
# Copyright (C) 2013 Netherlands eScience Center
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node.default['ntp']['servers'] = ["0.pool.ntp.org", "1.pool.ntp.org", "2.pool.ntp.org"]
node.default['java']['jdk_version'] = 7
node.default['java']['oracle']['accept_oracle_download_terms'] = true

include_recipe "ntp"
include_recipe "openssh"
include_recipe "git"
include_recipe "java::oracle"
# TODO see if 2 jdk's can be installed and the oracle jdk as default
#include_recipe "java::openjdk"
