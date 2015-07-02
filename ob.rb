#!/usr/bin/env ruby

current_branch = `git rev-parse --abbrev-ref HEAD`
link = `git remote -v | tr "\t" " " |cut -d " " -f 2 |head -1 |tr ':' '/'`
link.gsub!(/^git@/, 'https://')
link.gsub!(/\.git.*$/, "/tree/#{current_branch}")
`open #{link}`
