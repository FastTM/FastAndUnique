return {
	bot_api_key = "", --Please add your bot api key here!
	cmd = '^[/!#]',
	db = 2, --default redis db: 0
	superadmins = {232006008,239299058},
	log = {
		chat = -1001057801239, --Your log chat, where your bot must be added!
		admin = 232006008,239299058, --The admin.
		stats = nil
	},
	human_readable_version = '4.2.0',
	bot_settings = {
		cache_time = {
			adminlist = 18000, --5 hours (18000s) Admin Cache time, in seconds.
		},
		multipurpose_mode = false, --If this is enabled, the bot will activate the plugins from plugins/multipurpose
		notify_bug = false, --Notify if a bug occurs!
		log_api_errors = true, --Log errors, which happening whilst interacting with the bot api.
		stream_commands = true,
		admin_mode = false,
		debug_connections = false,
		realm_max_members = 60,
		realm_max_subgroups = 6
	},
	channel = '@FastTM', --channel username with the '@'
	source_code = 'https://github.com/FastTM/Fast-Unique',
	help_groups = {
		['Internatonal (English)'] = disable, --group link, not (at)username! If you have your own support group, modify here!
		['Italian'] = disable,
		['Persian'] = 'https://telegram.me/joinchat/DdQheD9TiwmohbCkwqsGkQ',
		['Russian'] = disable,
		['Spanish'] = disable
	},--
	plugins = {
		'onmessage.lua', --THIS MUST BE THE FIRST: IF AN USER IS FLOODING/IS BLOCKED, THE BOT WON'T GO THROUGH PLUGINS
		'antispam.lua', --SAME OF onmessage.lua
		--'realms.lua', --must stay here
		'configure.lua',
		'menu.lua',
		'dashboard.lua',
		'banhammer.lua',
		'users.lua',
		'help.lua',
		'rules.lua',
		'service.lua',
		'links.lua',
		'warn.lua',
		'setlang.lua',
		'floodmanager.lua',
		'welcome.lua',
		'pin.lua',
		'mediasettings.lua',
		'private.lua',
		'admin.lua',
		'backup.lua',
		--'test.lua',
		--'logchannel.lua',
		'report.lua',
		'private_settings.lua',
		'extra.lua', --must be the last plugin in the list.
	},
	multipurpose_plugins = {},
	available_languages = {
		['en'] = 'English 🇬🇧',
		['it'] = 'Italiano 🇮🇹',
		['es'] = 'Español 🇪🇸',
		['pt_BR'] = 'Português 🇧🇷',
		['ru'] = 'Русский 🇷🇺',
		['de'] = 'Deutsch 🇩🇪',
		--['sv'] = 'Svensk 🇸🇪',
		['ar'] = 'العربية 🇸🇩',
		--['fr'] = 'Français 🇫🇷',
		['zh'] = '中文 🇨🇳',
		['fa'] = 'فارسی 🇮🇷',
		['id'] = 'Bahasa Indonesia 🇮🇩'
		-- more languages will come
	},
	allow_fuzzy_translations = false,
	chat_settings = { --default chat_settings for groups.
		['settings'] = {
			['Welcome'] = 'off',
			['Goodbye'] = 'off',
			['Extra'] = 'on',
			['Flood'] = 'off',
			['Silent'] = 'off',
			['Rules'] = 'off',
			['Reports'] = 'off',
			['Welbut'] = 'off'
		},
		['antispam'] = {
			['links'] = 'alwd',
			['forwards'] = 'alwd',
			['warns'] = 2,
			['action'] = 'ban'
		},
		['flood'] = {
			['MaxFlood'] = 5,
			['ActionFlood'] = 'kick'
		},
		['char'] = {
			['Arab'] = 'allowed', --'kick'/'ban'
			['Rtl'] = 'allowed'
		},
		['floodexceptions'] = {
			['text'] = 'no',
			['photo'] = 'no', -- image
			['forward'] = 'no',
			['video'] = 'no',
			['sticker'] = 'no',
			['gif'] = 'no',
		},
		['warnsettings'] = {
			['type'] = 'ban',
			['mediatype'] = 'ban',
			['max'] = 3,
			['mediamax'] = 2
		},
		['welcome'] = {
			['type'] = 'no',
			['content'] = 'no'
		},
		['goodbye'] = {
			['type'] = 'custom',
		},
		['media'] = {
			['photo'] = 'ok', --'notok' | image
			['audio'] = 'ok',
			['video'] = 'ok',
			['sticker'] = 'ok',
			['gif'] = 'ok',
			['voice'] = 'ok',
			['contact'] = 'ok',
			['document'] = 'ok', -- file
			['link'] = 'ok',
			['game'] = 'ok',
			['location'] = 'ok'
		},
		['tolog'] = {
			['ban'] = 'no',
			['kick'] = 'no',
			['tempban'] = 'no',
			['warn'] = 'no',
			['nowarn'] = 'no',
			['mediawarn'] = 'no',
			['spamwarn'] = 'no',
			['flood'] = 'no',
			['new_chat_member'] = 'no',
			['new_chat_photo'] = 'no',
			['delete_chat_photo'] = 'no',
			['new_chat_title'] = 'no',
			['pinned_message'] = 'no'
		},
	},
	private_settings = {
		rules_on_join = 'off',
		reports = 'off'
	},
	chat_custom_texts = {'extra', 'info', 'links', 'warns', 'mediawarn', 'spamwarns'},
	bot_keys = {
		d3 = {'bot:general', 'bot:usernames', 'bot:chat:latsmsg'},
		d2 = {'bot:groupsid', 'bot:groupsid:removed', 'tempbanned', 'bot:blocked', 'remolden_chats'} --remolden_chats: chat removed with $remold command
	}
}
