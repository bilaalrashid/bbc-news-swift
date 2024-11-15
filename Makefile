README = README.md

release-version:
	bin/version-bump --readme $(README) --version $(VERSION)

release-major:
	bin/version-bump --readme $(README) --bump-type major

release-minor:
	bin/version-bump --readme $(README) --bump-type minor

release-patch:
	bin/version-bump --readme $(README) --bump-type patch

release: release-patch
