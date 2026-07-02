#!/usr/bin/env bash

firefox https://www.udemy.com/course/100-days-of-code/?couponCode=KEEPLEARNING &
exec ghostty -e zsh -lc 'tmuxinator udemy'
