#!/usr/bin/env bash

set -e
set -o pipefail
IFS=$'\n'

# # install additional tools
[[ ! -f "$(which mdl)" ]] && gem install mdl
[[ ! -f "$(which yaml-lint)" ]] && gem install yaml-lint

# create a list of mdl rules to ignore
if [[ ! -f ~/.mdlrc ]] ; then
    cat << EOF > ~/.mdlrc
rules "~MD013","~MD014","~MD033"
EOF
fi

# find and lint files
for f in $(find . -type f -not \( -iwholename '*.git*' -o -iwholename '*.tmp*'  \) | sort -u) ; do
    if file "$f" | grep -i --quiet "\(bash\|shell\) script" ; then
        shellcheck "$f"
    elif file "$f" | grep -i --quiet "text" ; then
        if [[ "$f" = *.md ]]; then
            mdl "$f"
        elif [[ "$f" = *.yaml || "$f" = *.yml ]]; then
            yaml-lint -i -q "$f"
        fi
    fi
done

# create ansible config file
if [[ ! -f ./ansible.cfg ]] ; then
    cat << EOF > ./ansible.cfg
[defaults]
roles_path=./
EOF
fi

# check the syntax of the playbook, including the roles is uses.
ansible-playbook ./test.yaml -i ./inventory.local --syntax-check
