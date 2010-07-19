#!/usr/bin/env bash
jekyll && rsync -avz --delete _site/ klepasor@klepas.org:2683/public_html/
