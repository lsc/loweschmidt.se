year := `date +%Y`
month := `date +%m`
day := `date +%d`
root := justfile_directory()

alias n := new-post
alias s := serve
alias b := build

[private]
list-recipes:
    @just --list --list-prefix '  * '

new-post name:
    @mkdir -p {{ root }}/content/posts/{{ year }}/{{ month }}
    @hugo new content {{ root }}/content/posts/{{ year }}/{{ month }}/{{ day }}-{{ name }}.md

serve:
    @hugo serve

build:
    @hugo build
