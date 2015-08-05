name             "mongodb_for_nodejs"
maintainer       "Ander Parra"
maintainer_email "ander.pp@gmail.com"
license          "Apache 2.0"
description      "Box for course of mongodb using node.js"
version          "0.0.1"

recipe "mongodb_for_nodejs::bootstrap", "bootstrap vm configuration"

%w{ apt }.each do |cookbook|
  depends cookbook
end

%w{ ubuntu }.each do |os|
  supports os
end
