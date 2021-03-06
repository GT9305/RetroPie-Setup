rp_module_id="esthemesimple"
rp_module_desc="EmulationStation Theme Simple"
rp_module_menus="2+"
rp_module_flags="nobin"

function sources_esthemesimple() {
    gitPullOrClone "$md_build" https://github.com/gizmo98/simple-theme-plus.git
}

function install_esthemesimple() {
    # download themes archive
    wget -O simple_latest.zip "http://downloads.petrockblock.com/retropiearchives/simple_latest.zip"

    mkdir -p "/etc/emulationstation/themes"

    # remove old simple theme files
    rmDirExists "/etc/emulationstation/themes/simple"

    # unzip archive to tmp folder
    unzip simple_latest.zip -d /etc/emulationstation/themes/

    # delete zi parchive
    rm simple_latest.zip
    
    # copy simple-theme-plus themes
    cp -a "$md_build/"* "/etc/emulationstation/themes/simple/"
}
