#
# Cookbook Name:: users
# Recipe:: www-data
#
# Copyright 2011, Eric G. Wolfe
# Copyright 2009-2011, Opscode, Inc.
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

# Searches data bag "users" for groups attribute "www-data".
# Places returned users in Unix group "www-data" with GID 2600.
users_manage 'www-data' do
  group_id 2600
  action [ :remove, :create ]
end

# change actual www-data user shell to non-interactive.
user 'www-data' do
  shell '/bin/false'
end
