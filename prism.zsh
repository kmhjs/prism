function _prism_validate_environment()
{
    [[ ${#ZSH_PLUGIN_PRISM_HUB_REPOSITORY} > 0 ]] || {
        return 255
    }

    [[ ! -e ${ZSH_PLUGIN_PRISM_HUB_REPOSITORY} ]] && {
        return 255
    }

    [[ ! -e ${ZSH_PLUGIN_PRISM_HUB_REPOSITORY}/log ]] && {
        return 255
    }

    [[ ! -x $(which git) ]] && {
        return 255
    }

    return 0
}

function _prism_core()
{
    local sub_cmd
    sub_cmd="$(echo $1 | xargs | cut -d ' ' -f 2)"

    [[ "${sub_cmd}" != "commit" ]] && {
        return 255
    }

    _prism_validate_environment
    [[ $? == 255 ]] && {
        return 255
    }

    echo "commit task"

    (
        cd ${ZSH_PLUGIN_PRISM_HUB_REPOSITORY}
        md5sum <(date +%s) | cut -d ' ' -f 1 > ./log
        git add ./log
        git commit -m '[Observer] -> User updated private repository'
    )
}

_prism_core $*
