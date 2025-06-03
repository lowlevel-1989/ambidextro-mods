extends Node

const MOD_DIR := "lowlevel1989-AmbidextroTrampolineBehavior"
const LOG_NAME := "lowlevel1989-AmbidextroTrampolineBehavior:Main"

var mod_dir_path := ""
var extensions_dir_path := ""

func _init() -> void:
	ModLoaderLog.info("Init", LOG_NAME)

	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)
	extensions_dir_path = mod_dir_path.path_join("extensions")
	ModLoaderMod.install_script_extension(
		extensions_dir_path.path_join("scenes/trampoline/trampoline.gd"))
