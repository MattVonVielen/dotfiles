# Xenolinguist's dotfiles

## Getting started:

    git clone https://github.com/xenolinguist/dotfiles ~/.files
    cd ~/.files
    rake

## Modifying `bash_profile` & `bashrc`

### Don't. Write little scripts in `profile.d` instead

`bash_profile` should not do anything except source `bashrc`.

In an interactive session, `bashrc` should not do anything except recursively
source the contents of `~/.profile.d`. In a non-interactive session,
`bashrc` should do nothing at all.

Any customizations should be in individual files in a self-documenting location
under `profile.d`. Look there in this repository for examples.
