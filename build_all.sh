#!/usr/bin/env sh
set -e
cd ejemplo_banco
bundle install
bundle exec rake
cd ..
cd chopper
bundle install
bundle exec rake
cd ..
cd piedra-papel-tijera
bundle install
bundle exec rake
cd ..
cd batalla_naval
bundle install
bundle exec rake
cd ..
cd calculadora
bundle install
bundle exec rake
