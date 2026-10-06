#!/usr/bin/env bash

self=$(readlink -e "$0")
bin=${self%/*}
REPO_ROOT=$(git -C "${bin}" rev-parse --show-toplevel)
readonly REPO_ROOT

active_exercises () {
    jq -r '
        .exercises |
        to_entries |
        map(
            select(.key != "foregone") |
            .key as $key |
            .value |
            map(
                select(.status != "deprecated") |
                "exercises/\($key)/\(.slug)"
            )
        ) |
        add |
        sort |
        .[]
    ' "${REPO_ROOT}/config.json"
}

name() {
    local slug="$1"
    jq -r --arg slug "${slug}" '
        .exercises |
        to_entries |
        map(
            .key as $key |
            .value |
            map(
                select(.slug == $slug)
                .name
            )
        ) |
        flatten |
        .[0]
    ' "${REPO_ROOT}/config.json"
}

test_script_content() {
    printf '#!/usr/bin/env bash\n'
    printf '\n'
    # shellcheck disable=SC2016
    printf 'slug=${PWD##*/}\n'
    # shellcheck disable=SC2016
    printf '[[ -f "${slug//-/_}.gd" ]] || die "Error! solution file is missing"\n'
    # shellcheck disable=SC2016
    printf '[[ -f "${slug//-/_}_test.gd" ]] || die "Error! test file is missing"\n'
    # shellcheck disable=SC2016
    printf 'exec godot --headless --script ./lib/test_runner.gd -- "${slug}" "${PWD}"\n'
}

write_project_file() {
    local exercise="$1"
    local slug="${exercise##*/}"
    local name
    name=$(name "${slug}")
    {
        printf 'config_version=5\n\n'
        printf '[application]\n'
        printf 'config/name="Exercism - %s"\n' "$name"
        printf 'config/features=PackedStringArray("4.7")\n'
    } > "${exercise}/project.godot"
}

write_test_runner () {
    local exercise="$1"
    local content
    if (( $# == 2 )); then
        content="$2"
    else
        content=$(curl -s https://raw.githubusercontent.com/exercism/gdscript-test-runner/refs/heads/main/bin/test_runner.gd)
    fi
    [[ -e "${exercise}/lib" ]] || mkdir "${exercise}/lib"
    printf '%s\n' "${content}" > "${exercise}/lib/test_runner.gd"
    test_script_content > "${exercise}/run_tests"
    chmod 755 "${exercise}/run_tests"
}
