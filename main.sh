#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

#Install Webserver
${DIR}/install_webserver.sh

#Update html files
${DIR}/update_html_files.sh
