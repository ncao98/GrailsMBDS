

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'tp.mbds.com.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'tp.mbds.com.UserRole'
grails.plugin.springsecurity.authority.className = 'tp.mbds.com.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/**',               access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/error',          access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/index',          access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/index.gsp',      access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/shutdown',       access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/assets/**',      access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/**/js/**',       access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/**/css/**',      access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/**/images/**',   access: ['ROLE_ADMIN','ROLE_MODERATOR']],
	[pattern: '/**/favicon.ico', access: ['ROLE_ADMIN','ROLE_MODERATOR']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

