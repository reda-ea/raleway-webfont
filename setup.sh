#!/bin/bash

wget --header="User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11" 'http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' -O webfont.tmp

grep url.http webfont.tmp | sed 's/^.*url(//g' | sed 's/).*//g' | xargs wget

sed 's,http.*/,,g' webfont.tmp > raleway.css

