# Changelog

## [4.0.2] - 2026-11-14

### Updated

- Upgrade Bootstrap SCSS sources, JavaScript bundle, and source map to 5.3.9.
- Rebuild the distributed CSS bundle with the updated Bootstrap sources.
- Align Bootstrap version references and custom SCSS paths in the documentation.

### Fixed

- Restore `mw-100` and its responsive variants in NinjaBootstrap, matching the parent theme.
- Version the Bootstrap script URL to invalidate cached JavaScript after upgrades.
- Build release ZIPs in a temporary directory to avoid recursively copying the staging directory or including previous archives.
- Exclude macOS metadata from version control and release archives.

Earlier releases predate this changelog.
