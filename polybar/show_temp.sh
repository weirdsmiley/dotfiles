#!/bin/sh

sensors | grep Tctl | awk '{print $2}' | tr -d "+"
