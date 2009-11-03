#!/usr/bin/env bash
jekyll && rsync -avz --delete _site/ klepas@klepas.org:klepas.org/