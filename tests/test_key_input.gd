extends GUIDETestBase

# https://github.com/godotneers/G.U.I.D.E/issues/34
# if modifier IS the bound key, disabling "allow additional modifiers"
# does not prevent the action from triggering
func test_modifiers(modifier:int, test_parameters = [[KEY_SHIFT], [KEY_CTRL], [KEY_META], [KEY_ALT]]):
	var mc = mapping_context()
	var action = action_bool()
	var input = input_key(modifier)
	input.allow_additional_modifiers = false
	map(mc, action, input)
	
	GUIDE.enable_mapping_context(mc)
	
	# WHEN
	await tap_key(modifier)
	
	# THEN
	await assert_triggered(action)
	

# If bind something to a key and the modifier is down that is disallowed
# the action is not triggered.
func test_disallowed_modifiers_prevent_action():
	var mc = mapping_context()
	var action = action_bool()
	var input = input_key(KEY_A)
	input.control = true
	input.allow_additional_modifiers = false
	map(mc, action, input)
	
	GUIDE.enable_mapping_context(mc)
	
	# WHEN
	await tap_keys([KEY_CTRL, KEY_SHIFT, KEY_A])
	
	# THEN - not triggered because shift was down in addition to ctrl
	await assert_not_triggered(action)
	
	# WHEN
	await tap_keys([KEY_CTRL, KEY_A])
	
	# THEN - triggered because only ctrl + a were down
	await assert_triggered(action)

