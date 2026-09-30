complete -c edgedb -n "__fish_use_subcommand" -s c -d 'Execute a query instead of starting REPL
' -r
complete -c edgedb -n "__fish_use_subcommand" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_use_subcommand" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_use_subcommand" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_use_subcommand" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_use_subcommand" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_use_subcommand" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_use_subcommand" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_use_subcommand" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_use_subcommand" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_use_subcommand" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_use_subcommand" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_use_subcommand" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_use_subcommand" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_use_subcommand" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_use_subcommand" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_use_subcommand" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_use_subcommand" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_use_subcommand" -l debug-print-frames
complete -c edgedb -n "__fish_use_subcommand" -l debug-print-descriptors
complete -c edgedb -n "__fish_use_subcommand" -l debug-print-codecs
complete -c edgedb -n "__fish_use_subcommand" -l help-connect -d 'Print all available connection options for interactive shell along with subcommands
'
complete -c edgedb -n "__fish_use_subcommand" -s t -l tab-separated -d 'Tab-separated output for queries
'
complete -c edgedb -n "__fish_use_subcommand" -s j -l json -d 'JSON output for queries (single JSON list per query)
'
complete -c edgedb -n "__fish_use_subcommand" -s V -l version -d 'Show command-line tool version
'
complete -c edgedb -n "__fish_use_subcommand" -l no-version-check
complete -c edgedb -n "__fish_use_subcommand" -l no-cli-update-check -d 'Disable check for new available CLI version
'
complete -c edgedb -n "__fish_use_subcommand" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_use_subcommand" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_use_subcommand" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_use_subcommand" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_use_subcommand" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_use_subcommand" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "dump" -d 'Create database backup
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "restore" -d 'Restore database from backup file
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "configure" -d 'Modify database configuration
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "migration" -d 'Migration management subcommands
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "migrate" -d 'Apply migration (alias for [49m[39m[1medgedb migration apply[0m)
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "database" -d 'Database commands
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "describe" -d 'Describe database schema or object
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "list" -d 'List name and related info of database objects (types, scalars, modules, etc.)
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "analyze" -d 'Analyze performance of query in quotes (e.g. [49m[39m[1m"select 9;"[0m)
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "pgaddr" -d 'Show PostgreSQL address. Works on dev-mode database only.
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "psql" -d 'Run psql shell. Works on dev-mode database only.
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "query" -d 'Execute EdgeQL query in quotes (e.g. [49m[39m[1m"select 9;"[0m)
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "ui" -d 'Launch EdgeDB instance in browser web UI
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "info" -d 'Show paths for EdgeDB installation
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "project" -d 'Manage project installation
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "instance" -d 'Manage local EdgeDB instances
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "server" -d 'Manage local EdgeDB installations
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "_gen_completions" -d 'Generate shell completions
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "cli" -d 'Self-installation commands
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "_self_install" -d 'Install EdgeDB
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "cloud" -d 'EdgeDB Cloud authentication
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "watch" -d 'Start a long-running process that watches for changes in schema files in a project\'s dbschema directory, applying them in real time.
'
complete -c edgedb -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l format -d 'Choose dump format. For normal dumps this parameter should be omitted. For [49m[39m[1m--all[0m, only [49m[39m[1m--format=dir[0m is required.
' -r -f -a "{dir	}"
complete -c edgedb -n "__fish_seen_subcommand_from dump" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from dump" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from dump" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l all -d 'Dump all databases and server configuration. [49m[39m[1mpath[0m is a directory in this case
'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from dump" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from restore" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from restore" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l all -d 'Restore all databases and server configuration. [49m[39m[1mpath[0m is a directory in this case
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -s v -l verbose -d 'Verbose output
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from restore" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "insert" -d 'Insert another configuration entry to the list setting
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "reset" -d 'Reset configuration entry (empty the list for list settings)
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "set" -d 'Set scalar configuration value
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and not __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from help" -f -a "Auth" -d 'Insert a client authentication rule
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and __fish_seen_subcommand_from Auth" -l priority -d 'Priority of the authentication rule. The lower the number, the higher the priority.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and __fish_seen_subcommand_from Auth" -l user -d 'The name(s) of the database role(s) this rule applies to. Will apply  to all roles if set to \'[3m\'[0m
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and __fish_seen_subcommand_from Auth" -l method -d 'The name of the authentication method type. Valid values are: Trust for no authentication and SCRAM for SCRAM-SHA-256 password authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and __fish_seen_subcommand_from Auth" -l comment -d 'An optional comment for the authentication rule.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from insert; and __fish_seen_subcommand_from Auth" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "listen_addresses" -d 'Reset listen addresses to 127.0.0.1
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "listen_port" -d 'Reset port to 5656
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "Auth" -d 'Clear authentication table (only admin socket can be used to connect)
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "shared_buffers" -d 'Reset shared_buffers PostgreSQL configuration parameter to default value
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "query_work_mem" -d 'Reset work_mem PostgreSQL configuration parameter to default value
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "maintenance_work_mem" -d 'Reset PostgreSQL configuration parameter of the same name
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "effective_cache_size" -d 'Reset PostgreSQL configuration parameter of the same name
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "default_statistics_target" -d 'Reset PostgreSQL configuration parameter of the same name
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "effective_io_concurrency" -d 'Reset PostgreSQL configuration parameter of the same name
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "session_idle_timeout" -d 'Reset session idle timeout
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "session_idle_transaction_timeout" -d 'Reset session idle transaction timeout
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "query_execution_timeout" -d 'Reset query execution timeout
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "allow_bare_ddl" -d 'Reset allow_bare_ddl parameter to [49m[39m[1mAlwaysAllow[0m
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "apply_access_policies" -d 'Reset apply_access_policies parameter to [49m[39m[1mtrue[0m
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "allow_user_specified_id" -d 'Reset allow_user_specified_id parameter to [49m[39m[1mfalse[0m
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from Auth; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from listen_addresses" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from listen_port" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from Auth" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from shared_buffers" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from query_work_mem" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from maintenance_work_mem" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from effective_cache_size" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from default_statistics_target" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from effective_io_concurrency" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from session_idle_timeout" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from session_idle_transaction_timeout" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from query_execution_timeout" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from allow_bare_ddl" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from apply_access_policies" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from reset; and __fish_seen_subcommand_from allow_user_specified_id" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "listen_addresses" -d 'Specifies the TCP/IP address(es) on which the server is to listen for connections from client applications.

If the list is empty, the server will not listen on any IP interface whatsoever, in which case only Unix-domain sockets can be used to connect to it.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "listen_port" -d 'The TCP port the server listens on; 5656 by default. Note that the same port number is used for all IP addresses the server listens on.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "shared_buffers" -d 'The amount of memory the database uses for shared memory buffers.

Corresponds to the PostgreSQL configuration parameter of the same name. Changing this value requires server restart.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "query_work_mem" -d 'The amount of memory used by internal query operations such as sorting.

Corresponds to the PostgreSQL work_mem configuration parameter.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "maintenance_work_mem" -d 'The maximum amount of memory to be used by maintenance operations.

Some of the operations that use this option are: vacuuming, link, index or constraint creation. A value without units is assumed to be kilobytes. Defaults to 64 megabytes (64MB).

Corresponds to the PostgreSQL maintenance_work_mem configuration parameter.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "effective_cache_size" -d 'Sets the planner’s assumption about the effective size of the disk cache available to a single query.

Corresponds to the PostgreSQL configuration parameter of the same name.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "default_statistics_target" -d 'Sets the default data statistics target for the planner.

Corresponds to the PostgreSQL configuration parameter of the same name.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "effective_io_concurrency" -d 'Sets the number of concurrent disk I/O operations that PostgreSQL expects can be executed simultaneously.

Corresponds to the PostgreSQL configuration parameter of the same name.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "session_idle_timeout" -d 'How long client connections can stay inactive before being closed by the server. Defaults to [49m[39m[1m60 seconds[0m; set to [49m[39m[1m0s[0m to disable.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "session_idle_transaction_timeout" -d 'How long client connections can stay inactive while in a transaction. Defaults to 10 seconds; set to [49m[39m[1m0s[0m to disable.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "query_execution_timeout" -d 'How long an individual query can run before being aborted. A value of [49m[39m[1m0s[0m disables the mechanism; it is disabled by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "allow_bare_ddl" -d 'Defines whether to allow DDL commands outside of migrations.

May be set to:
[38;5;240m•[39m [49m[39m[1mAlwaysAllow[0m
[38;5;240m•[39m [49m[39m[1mNeverAllow[0m
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "apply_access_policies" -d 'Apply access policies

User-specified access policies are not applied when set to [49m[39m[1mfalse[0m,  allowing any queries to be executed.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "allow_user_specified_id" -d 'Allow setting user-specified object identifiers.
'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and not __fish_seen_subcommand_from listen_addresses; and not __fish_seen_subcommand_from listen_port; and not __fish_seen_subcommand_from shared_buffers; and not __fish_seen_subcommand_from query_work_mem; and not __fish_seen_subcommand_from maintenance_work_mem; and not __fish_seen_subcommand_from effective_cache_size; and not __fish_seen_subcommand_from default_statistics_target; and not __fish_seen_subcommand_from effective_io_concurrency; and not __fish_seen_subcommand_from session_idle_timeout; and not __fish_seen_subcommand_from session_idle_transaction_timeout; and not __fish_seen_subcommand_from query_execution_timeout; and not __fish_seen_subcommand_from allow_bare_ddl; and not __fish_seen_subcommand_from apply_access_policies; and not __fish_seen_subcommand_from allow_user_specified_id; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from listen_addresses" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from listen_port" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from shared_buffers" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from query_work_mem" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from maintenance_work_mem" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from effective_cache_size" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from default_statistics_target" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from effective_io_concurrency" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from session_idle_timeout" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from session_idle_transaction_timeout" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from query_execution_timeout" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from allow_bare_ddl" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from apply_access_policies" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from configure; and __fish_seen_subcommand_from set; and __fish_seen_subcommand_from allow_user_specified_id" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -f -a "apply" -d 'Apply migration from latest migration script
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -f -a "create" -d 'Create migration script inside /migrations
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -f -a "status" -d 'Show current migration status
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -f -a "log" -d 'Show all migration versions
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -f -a "edit" -d 'Edit migration file

Invokes $EDITOR on the last migration file, and then fixes  migration id after editor exits. Usually should be used for migrations that have not been applied yet.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -f -a "upgrade-check" -d 'Check if current schema is compatible with new EdgeDB version
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and not __fish_seen_subcommand_from apply; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from log; and not __fish_seen_subcommand_from edit; and not __fish_seen_subcommand_from upgrade-check; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l schema-dir -d 'Directory where [49m[39m[1m*.esdl[0m and [49m[39m[1m*.edgeql[0m files are located. Default is [49m[39m[1m./dbschema[0m
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l to-revision -d 'Upgrade to a specified revision.

A unique revision prefix can be specified instead of a full revision name.

If this revision is applied, the command is a no-op. The command ensures that the revision is present, but additional applied revisions  are not considered an error.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l quiet -d 'Do not print messages, only indicate success by exit status
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l dev-mode -d 'Apply current schema changes on top of those found in the migration history

This is commonly used to apply schema temporarily before doing [49m[39m[1mmigration create[0m for testing purposes.

This works the same way as [49m[39m[1medgedb watch[0m but without starting  a long-running watch task.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from apply" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l schema-dir -d 'Directory where [49m[39m[1m*.esdl[0m and [49m[39m[1m*.edgeql[0m files are located. Default is [49m[39m[1m./dbschema[0m
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l squash -d 'Squash all schema migrations into one and optionally provide a fixup migration.

Note: this discards data migrations.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l non-interactive -d 'Do not ask questions. By default works only if "safe" changes are to be done (those for which EdgeDB has a high degree of confidence). This safe default can be overridden with [49m[39m[1m--allow-unsafe[0m.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l allow-unsafe -d 'Apply the most probable unsafe changes in case there are ones. This is only useful in non-interactive mode.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l allow-empty -d 'Create a new migration even if there are no changes (use this for data-only migrations)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l debug-print-queries -d 'Print queries executed
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from create" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l schema-dir -d 'Directory where [49m[39m[1m*.esdl[0m and [49m[39m[1m*.edgeql[0m files are located. Default is [49m[39m[1m./dbschema[0m
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l quiet -d 'Do not print any messages, only indicate success by exit status
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from status" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l schema-dir -d 'Directory where [49m[39m[1m*.esdl[0m and [49m[39m[1m*.edgeql[0m files are located. Default is [49m[39m[1m./dbschema[0m
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l limit -d 'Show maximum N revisions (default: no limit)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l from-fs -d 'Print revisions from the filesystem (database connection not required)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l from-db -d 'Print revisions from the database (no filesystem schema is required)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l newest-first -d 'Sort migrations starting from newer to older, instead of the default older to newer
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from log" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l schema-dir -d 'Directory where [49m[39m[1m*.esdl[0m and [49m[39m[1m*.edgeql[0m files are located. Default is [49m[39m[1m./dbschema[0m
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l no-check -d 'Do not check migration using the database connection
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l non-interactive -d 'Fix migration id non-interactively, and do not run editor
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from edit" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l schema-dir -d 'Directory where [49m[39m[1m*.esdl[0m and [49m[39m[1m*.edgeql[0m files are located. Default is [49m[39m[1m./dbschema[0m
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l to-version -d 'Check upgrade to a specified version
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l to-channel -d 'Check upgrade to latest version in the channel
' -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l to-nightly -d 'Check upgrade to latest nightly version
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l to-testing -d 'Check upgrade to latest testing version
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l watch -d 'Monitor schema changes and check again on change
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migration; and __fish_seen_subcommand_from upgrade-check" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l schema-dir -d 'Directory where [49m[39m[1m*.esdl[0m and [49m[39m[1m*.edgeql[0m files are located. Default is [49m[39m[1m./dbschema[0m
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l to-revision -d 'Upgrade to a specified revision.

A unique revision prefix can be specified instead of a full revision name.

If this revision is applied, the command is a no-op. The command ensures that the revision is present, but additional applied revisions  are not considered an error.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l quiet -d 'Do not print messages, only indicate success by exit status
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l dev-mode -d 'Apply current schema changes on top of those found in the migration history

This is commonly used to apply schema temporarily before doing [49m[39m[1mmigration create[0m for testing purposes.

This works the same way as [49m[39m[1medgedb watch[0m but without starting  a long-running watch task.
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from migrate" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -f -a "create" -d 'Create a new database
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -f -a "drop" -d 'Delete database along with its data
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -f -a "wipe" -d 'Preserve database while deleting its data
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from drop; and not __fish_seen_subcommand_from wipe; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from create" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l non-interactive -d 'Drop database without confirming
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from drop" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l non-interactive -d 'Drop database without confirming
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from database; and __fish_seen_subcommand_from wipe" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -f -a "object" -d 'Describe a database object
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -f -a "schema" -d 'Describe current database schema
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and not __fish_seen_subcommand_from object; and not __fish_seen_subcommand_from schema; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -s v -l verbose
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from object" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from describe; and __fish_seen_subcommand_from schema" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "aliases" -d 'Display list of aliases defined in the schema
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "casts" -d 'Display list of casts defined in the schema
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "databases" -d 'Display list of databases for an EdgeDB instance
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "indexes" -d 'Display list of indexes defined in the schema
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "modules" -d 'Display list of modules defined in the schema
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "roles" -d 'Display list of roles for an EdgeDB instance
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "scalars" -d 'Display list of scalar types defined in the schema
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "types" -d 'Display list of object types defined in the schema
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and not __fish_seen_subcommand_from aliases; and not __fish_seen_subcommand_from casts; and not __fish_seen_subcommand_from databases; and not __fish_seen_subcommand_from indexes; and not __fish_seen_subcommand_from modules; and not __fish_seen_subcommand_from roles; and not __fish_seen_subcommand_from scalars; and not __fish_seen_subcommand_from types; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s c -l case-sensitive
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s s -l system
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s v -l verbose
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from aliases" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -s c -l case-sensitive
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from casts" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from databases" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s c -l case-sensitive
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s s -l system
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s v -l verbose
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from indexes" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -s c -l case-sensitive
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from modules" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -s c -l case-sensitive
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from roles" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s c -l case-sensitive
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s s -l system
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from scalars" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s c -l case-sensitive
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s s -l system
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from list; and __fish_seen_subcommand_from types" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l debug-output-file -d 'Write analysis into specified JSON file instead of formatting
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l read-json -d 'Read JSON file instead of executing a query
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l expand -d 'Show detailed output of analyze command
'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from analyze" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from pgaddr" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from psql" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from psql" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from psql" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from psql" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from psql" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from query" -s F -l output-format -d 'Output format: [49m[39m[1mjson[0m, [49m[39m[1mjson-pretty[0m, [49m[39m[1mjson-lines[0m, [49m[39m[1mtab-separated[0m. Default is [49m[39m[1mjson-pretty[0m.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -s f -l file -d 'Filename to execute queries from. Pass [49m[39m[1m--file -[0m to execute queries from stdin.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from query" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from query" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from query" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from query" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from query" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from query" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from query" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from query" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from query" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from query" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from query" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from ui" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from ui" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l print-url -d 'Print URL in console instead of opening in the browser
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l no-server-check -d 'Do not probe the UI endpoint of the server instance
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from ui" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from info" -l get -d 'Get specific value:

[38;5;240m•[39m [49m[39m[1mconfig-dir[0m -- Base configuration directory
[38;5;240m•[39m [49m[39m[1mcache-dir[0m -- Base cache directory
[38;5;240m•[39m [49m[39m[1mdata-dir[0m -- Base data directory (except on Windows)
[38;5;240m•[39m [49m[39m[1mservice-dir[0m -- Directory where supervisor/startup files are placed
' -r -f -a "{config-dir	,cache-dir	,data-dir	,service-dir	}"
complete -c edgedb -n "__fish_seen_subcommand_from info" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from project; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from project; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from help" -f -a "init" -d 'Initialize project or link to existing unlinked project
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from help" -f -a "unlink" -d 'Clean up project configuration. Use [49m[39m[1medgedb project init[0m to relink
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from help" -f -a "info" -d 'Get various metadata about project instance
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from help" -f -a "upgrade" -d 'Upgrade EdgeDB instance used for current project

This command has two modes of operation.

Upgrade instance to version specified in [49m[39m[1medgedb.toml[0m:

[49m[39m[1mproject upgrade[0m

Update [49m[39m[1medgedb.toml[0m to new version and upgrade the instance:

[49m[39m[1mproject upgrade --to-latest[0m[49m[39m[1m         [0m
[49m[39m[1mproject upgrade --to-version=1-beta2[0m
[49m[39m[1mproject upgrade --to-nightly[0m[49m[39m[1m        [0m

In all cases your data is preserved and converted using dump/restore mechanism. May fail if lower version is specified (e.g. if upgrading from nightly to stable).
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and not __fish_seen_subcommand_from init; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l project-dir -d 'Explicitly set a root directory for the project
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l server-version -d 'Specify the desired EdgeDB server version
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l server-instance -d 'Specify the EdgeDB server instance to be associated with the project
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -s d -l database -d 'Specify the default database for the project to use on that instance
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l server-start-conf -d 'Deprecated parameter, does nothing.
' -r -f -a "{auto	,manual	}"
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l link -d 'Specify whether the existing EdgeDB server instance should be linked with the project
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l no-migrations -d 'Skip running migrations

There are two main use cases for this option: 1. With [49m[39m[1m--link[0m to connect to a datastore with existing data 2. To initialize a new instance but then restore using a dump
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -l non-interactive -d 'Initialize in in non-interactive mode (accepting all defaults)
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from init" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from unlink" -l project-dir -d 'Explicitly set a root directory for the project
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from unlink" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from unlink" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from unlink" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from unlink" -s D -l destroy-server-instance -d 'If specified, the associated EdgeDB instance is destroyed  using [49m[39m[1medgedb instance destroy[0m.
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from unlink" -l non-interactive -d 'Unlink in in non-interactive mode (accepting all defaults)
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from unlink" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from info" -l project-dir -d 'Explicitly set a root directory for the project
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from info" -l get -d 'Get a specific value:

[38;5;240m•[39m [49m[39m[1minstance-name[0m -- Name of the listance the project is linked to
' -r -f -a "{instance-name	,cloud-profile	}"
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from info" -l instance-name -d 'Display only the instance name (shortcut to [49m[39m[1m--get instance-name[0m)
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from info" -l json -d 'Output in JSON format
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from info" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l project-dir -d 'Explicitly set a root directory for the project
' -r -f -a "(__fish_complete_directories)"
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l to-version -d 'Upgrade specified instance to a specified version
' -r
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l to-channel -d 'Upgrade specified instance to the specified channel
' -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l to-latest -d 'Upgrade specified instance to latest version
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l to-nightly -d 'Upgrade specified instance to latest nightly version
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l to-testing -d 'Upgrade specified instance to latest testing version
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -s v -l verbose -d 'Verbose output
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l force -d 'Force upgrade process even if there is no new version
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -l non-interactive -d 'Do not ask questions, assume user wants to upgrade instance
'
complete -c edgedb -n "__fish_seen_subcommand_from project; and __fish_seen_subcommand_from upgrade" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "create" -d 'Initialize a new EdgeDB instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "list" -d 'Show all instances
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "status" -d 'Show status of an instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "start" -d 'Start an instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "stop" -d 'Stop an instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "restart" -d 'Restart an instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "destroy" -d 'Destroy an instance and remove the data
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "link" -d 'Link a remote instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "unlink" -d 'Unlink a remote instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "logs" -d 'Show logs for an instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "upgrade" -d 'Upgrade installations and instances
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "revert" -d 'Revert a major instance upgrade
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "reset-password" -d 'Generate new password for instance user (randomly generated by default)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "credentials" -d 'Display instance credentials (add [49m[39m[1m--json[0m for verbose)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from status; and not __fish_seen_subcommand_from start; and not __fish_seen_subcommand_from stop; and not __fish_seen_subcommand_from restart; and not __fish_seen_subcommand_from destroy; and not __fish_seen_subcommand_from link; and not __fish_seen_subcommand_from unlink; and not __fish_seen_subcommand_from logs; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from revert; and not __fish_seen_subcommand_from reset-password; and not __fish_seen_subcommand_from credentials; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l version -d 'Create instance under latest nightly version Create instance with specified version
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l channel -d 'Indicate channel (stable, testing, or nightly) for instance to create
' -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l port -d 'Indicate port for instance to create
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l region -d 'The region in which to create the instance (for cloud instances)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l start-conf -d 'Deprecated parameter, unused.
' -r -f -a "{auto	,manual	}"
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l default-database -d 'Default database name (created during initialization and saved in credentials file)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l default-user -d 'Default user name (created during initialization and saved in credentials file)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l nightly -d 'Create instance under latest nightly version
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -l non-interactive -d 'Do not ask questions, assume user wants to upgrade instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from create" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l extended -d 'Output more debug info about each instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l debug -d 'Output all available debug info about each instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l json -d 'Output in JSON format
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l no-remote -d 'Query remote instances
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -l quiet -d 'Do not show warnings on no instances
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -s I -l instance -d 'Name of instance
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l service -d 'Show current systems service info
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l extended -d 'Output more debug info about each instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l debug -d 'Output all available debug info about each instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l json -d 'Output in JSON format
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -l quiet -d 'Do not print error on "No instance found", only indicate by error code
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from status" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from start" -s I -l instance -d 'Name of instance to start
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from start" -l managed-by -d 'Indicate whether managed by edgedb-cli, systemd, launchctl, or None
' -r -f -a "{systemd	,launchctl	,edgedb-cli	}"
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from start" -l foreground -d 'Start the server in the foreground rather than using systemd to manage the process (note: you might need to stop the non-foreground instance first)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from start" -l auto-restart -d 'With [49m[39m[1m--foreground[0m, stops server running in the background; also restarts the service on exit.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from start" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from stop" -s I -l instance -d 'Name of instance to stop
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from stop" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from restart" -s I -l instance -d 'Name of instance to restart
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from restart" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -s I -l instance -d 'Name of instance to destroy
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -s v -l verbose -d 'Verbose output
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -s q -l quiet -d 'Quiet output
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -l force -d 'Force destroy even if instance is referred to by a project
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -l non-interactive -d 'Do not ask questions, assume user wants to delete instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from destroy" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l non-interactive -d 'Run in non-interactive mode (accepting all defaults)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l quiet -d 'Reduce command verbosity.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l trust-tls-cert -d 'Trust peer certificate.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l overwrite -d 'Overwrite existing credential file if any.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from link" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from unlink" -s I -l instance -d 'Specify remote instance name
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from unlink" -l force -d 'Force destroy even if instance is referred to by a project
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from unlink" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from logs" -s I -l instance -d 'Name of instance
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from logs" -s n -l tail -d 'Number of lines to show
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from logs" -s f -l follow -d 'Show log tail and continue watching for new entries
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from logs" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l to-version -d 'Upgrade specified instance to a specified version
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l to-channel -d 'Upgrade specified instance to latest version in the channel
' -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -s I -l instance -d 'Instance to upgrade
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l to-latest -d 'Upgrade specified instance to latest version
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l to-nightly -d 'Upgrade specified instance to latest nightly version
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l to-testing -d 'Upgrade specified instance to latest testing version
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -s v -l verbose -d 'Verbose output
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l force -d 'Force upgrade even if there is no new version
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l force-dump-restore -d 'Force dump-restore during upgrade even if version is compatible

Used by [49m[39m[1mproject upgrade --force[0m
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -l non-interactive -d 'Do not ask questions, assume user wants to upgrade instance
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from upgrade" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from revert" -s I -l instance -d 'Name of instance to revert
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from revert" -l ignore-pid-check -d 'Do not check if upgrade is in progress
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from revert" -s y -l no-confirm -d 'Do not ask for confirmation
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from revert" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -s I -l instance -d 'Name of instance to reset
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -l user -d 'User to change password for (default obtained from credentials file)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -l password -d 'Read password from the terminal rather than generating a new one
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -l password-from-stdin -d 'Read password from stdin rather than generating a new one
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -l save-credentials -d 'Save new user and password into a credentials file. By default credentials file is updated only if user name matches.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -l no-save-credentials -d 'Do not save generated password into a credentials file even if user name matches.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -l quiet -d 'Do not print any messages, only indicate success by exit status
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from reset-password" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -s I -l instance -d 'Local instance name created with [49m[39m[1medgedb instance create[0m to connect to (overrides host and port)
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l dsn -d 'DSN for EdgeDB to connect to (overrides all other options except password)
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l credentials-file -d 'Path to JSON file to read credentials from
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -s H -l host -d 'EdgeDB instance host
' -r -f -a "(__fish_print_hostnames)"
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -s P -l port -d 'Port to connect to EdgeDB
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l unix-path -d 'A path to a Unix socket for EdgeDB connection

When the supplied path is a directory, the actual path will be computed using the [49m[39m[1m--port[0m and [49m[39m[1m--admin[0m parameters.
' -r -F
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -s u -l user -d 'EdgeDB user name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -s d -l database -d 'Database name to connect to
' -r -f
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l secret-key -d 'Secret key to authenticate with
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l tls-ca-file -d 'Certificate to match server against

Might either be a full self-signed server certificate or certificate authority (CA) certificate that the server certificate is signed with.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l tls-security -d 'Specifications for client-side TLS security mode:

[49m[39m[1minsecure[0m: Do not verify server certificate at all, only use encryption.

[49m[39m[1mno_host_verification[0m: This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.

[49m[39m[1mstrict[0m: Verify server certificate and check hostname. Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

[49m[39m[1mdefault[0m: Defaults to "strict" when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file); otherwise to "no_host_verification".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l wait-until-available -d 'Retry up to WAIT_TIME (e.g. \'30s\') in case EdgeDB connection  cannot be established.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l connect-timeout -d 'Fail when no response from EdgeDB for TIMEOUT (default \'10s\');  alternatively will retry if [49m[39m[1m--wait-until-available[0m is also specified.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l json -d 'Output in JSON format (password is included in cleartext)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l insecure-dsn -d 'Output a DSN with password in cleartext
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l password -d 'Ask for password on terminal (TTY)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l no-password -d 'Don\'t ask for password
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l password-from-stdin -d 'Read password from stdin rather than TTY (useful for scripts)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l tls-verify-hostname -d 'Verify server hostname using provided certificate.

Useful when certificate authority (CA) is used for certificate handling and usually not used for self-signed certificates.

Enabled by default when no specific certificate is present (via [49m[39m[1m--tls-ca-file[0m or in credentials JSON file)
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l no-tls-verify-hostname -d 'Do not verify server hostname

This allows using any certificate for any hostname. However, a certificate must be present and matching certificate specified with [49m[39m[1m--tls-ca-file[0m or credentials file or signed by one of the root certificate authorities.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -l admin -d 'Connect to a passwordless Unix socket with superuser privileges by default.
'
complete -c edgedb -n "__fish_seen_subcommand_from instance; and __fish_seen_subcommand_from credentials" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from uninstall; and not __fish_seen_subcommand_from list-versions; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from uninstall; and not __fish_seen_subcommand_from list-versions; and not __fish_seen_subcommand_from help" -f -a "info" -d 'Show locally installed EdgeDB versions
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from uninstall; and not __fish_seen_subcommand_from list-versions; and not __fish_seen_subcommand_from help" -f -a "install" -d 'Install an EdgeDB version locally
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from uninstall; and not __fish_seen_subcommand_from list-versions; and not __fish_seen_subcommand_from help" -f -a "uninstall" -d 'Uninstall an EdgeDB version locally
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from uninstall; and not __fish_seen_subcommand_from list-versions; and not __fish_seen_subcommand_from help" -f -a "list-versions" -d 'List available and installed versions of EdgeDB
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from uninstall; and not __fish_seen_subcommand_from list-versions; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -l version -r
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -l channel -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -l get -d 'Get specific value:

[38;5;240m•[39m [49m[39m[1mbin-path[0m -- Path to the server binary
[38;5;240m•[39m [49m[39m[1mversion[0m -- Server version
' -r -f -a "{bin-path	,version	}"
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -l bin-path -d 'Display only the server binary path (shortcut to [49m[39m[1m--get bin-path[0m)
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -l json -d 'Output in JSON format
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -l latest
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -l nightly
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from info" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from install" -l version -r
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from install" -l channel -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from install" -s i -l interactive
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from install" -l nightly
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from install" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from uninstall" -l channel -d 'Uninstall only versions from a specific channel
' -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from uninstall" -l all -d 'Uninstall all versions
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from uninstall" -l unused -d 'Uninstall unused versions
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from uninstall" -l nightly -d 'Uninstall nightly versions
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from uninstall" -s v -l verbose -d 'Increase verbosity
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from uninstall" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from list-versions" -l column -d 'Single column output
' -r -f -a "{major-version	,installed	,available	}"
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from list-versions" -l installed-only
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from list-versions" -l json -d 'Output in JSON format
'
complete -c edgedb -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from list-versions" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from _gen_completions" -l shell -d 'Shell to print out completions for
' -r -f -a "{bash	,elvish	,fish	,powershell	,zsh	}"
complete -c edgedb -n "__fish_seen_subcommand_from _gen_completions" -l prefix -d 'Install all completions into the prefix
' -r
complete -c edgedb -n "__fish_seen_subcommand_from _gen_completions" -l home -d 'Install all completions into the prefix
'
complete -c edgedb -n "__fish_seen_subcommand_from _gen_completions" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from migrate; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from migrate; and not __fish_seen_subcommand_from help" -f -a "upgrade" -d 'Upgrade the \'edgedb\' command-line tool
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from migrate; and not __fish_seen_subcommand_from help" -f -a "install" -d 'Install the \'edgedb\' command-line tool
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from migrate; and not __fish_seen_subcommand_from help" -f -a "migrate" -d 'Migrate files from [49m[39m[1m~/.edgedb[0m to the new directory layout
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and not __fish_seen_subcommand_from upgrade; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from migrate; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -l to-channel -d 'Upgrade specified instance to specified channel
' -r -f -a "{stable	,testing	,nightly	}"
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -s v -l verbose -d 'Enable verbose output
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -s q -l quiet -d 'Disable progress output
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -l force -d 'Force reinstall even if no newer version exists
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -l to-nightly -d 'Upgrade to latest nightly version
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -l to-stable -d 'Upgrade to latest stable version
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -l to-testing -d 'Upgrade to latest testing version
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from upgrade" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -l nightly
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -l testing
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -s v -l verbose -d 'Enable verbose output
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -s q -l quiet -d 'Skip printing messages and confirmation prompts
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -s y -d 'Disable confirmation prompt, also disables running [49m[39m[1mproject init[0m
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -l no-modify-path -d 'Do not configure PATH environment variable
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -l no-wait-for-exit-prompt -d 'Indicate that edgedb-init should not issue a "Press Enter to continue" prompt before exiting on Windows. Used when edgedb-init is invoked  from an existing terminal session and not in a new window.
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -l upgrade -d 'Installation is run from [49m[39m[1mself upgrade[0m command
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from install" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from migrate" -s n -l dry-run -d 'Dry run: do not actually move anything
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from migrate" -s v -l verbose -d 'Dry run: do not actually move anything (with increased verbosity)
'
complete -c edgedb -n "__fish_seen_subcommand_from cli; and __fish_seen_subcommand_from migrate" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -l nightly
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -l testing
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -s v -l verbose -d 'Enable verbose output
'
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -s q -l quiet -d 'Skip printing messages and confirmation prompts
'
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -s y -d 'Disable confirmation prompt, also disables running [49m[39m[1mproject init[0m
'
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -l no-modify-path -d 'Do not configure PATH environment variable
'
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -l no-wait-for-exit-prompt -d 'Indicate that edgedb-init should not issue a "Press Enter to continue" prompt before exiting on Windows. Used when edgedb-init is invoked  from an existing terminal session and not in a new window.
'
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -l upgrade -d 'Installation is run from [49m[39m[1mself upgrade[0m command
'
complete -c edgedb -n "__fish_seen_subcommand_from _self_install" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -f -a "login" -d 'Authenticate to EdgeDB Cloud and remember secret key locally
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -f -a "logout" -d 'Forget the stored access token
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -f -a "secretkey" -d 'Secret key management
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and not __fish_seen_subcommand_from login; and not __fish_seen_subcommand_from logout; and not __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from login" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from login" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from login" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from login" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from logout" -l all-profiles -d 'Log out from all Cloud profiles
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from logout" -l force -d 'Force log out from all profiles, even if linked to a project
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from logout" -l non-interactive -d 'Do not ask questions, assume user wants to log out of all profiles not linked to a project
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from logout" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from revoke; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from revoke; and not __fish_seen_subcommand_from help" -f -a "list" -d 'List existing secret keys.
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from revoke; and not __fish_seen_subcommand_from help" -f -a "create" -d 'Create a new secret key.
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from revoke; and not __fish_seen_subcommand_from help" -f -a "revoke" -d 'Revoke a secret key.
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from create; and not __fish_seen_subcommand_from revoke; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from list" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from list" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from list" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from list" -l json -d 'Output results as JSON
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -s n -l name -d 'Friendly key name
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l description -d 'Long key description
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l expires -d 'Key expiration in duration units (e.g. "1 hour 30 minutes"). Does not expire if set to [49m[39m[1mnever[0m.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l scopes -d 'Comma-separated list of key scopes. Mutually exclusive with [49m[39m[1m--inherit-scopes[0m.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l json -d 'Output results as JSON
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -l inherit-scopes -d 'Inherit key scopes from the currently used key.  Mutually exclusive with [49m[39m[1m--scopes[0m.
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -s y -l non-interactive -d 'Do not ask questions, assume default answers to all inputs that have a default.  Requires key TTL and scopes to be explicitly specified via [49m[39m[1m--ttl[0m or [49m[39m[1m--no-expiration[0m, and [49m[39m[1m--scopes[0m or [49m[39m[1m--inherit-scopes[0m.
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from create" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from revoke" -l secret-key-id -d 'Id of secret key to revoke
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from revoke" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from revoke" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from revoke" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from revoke" -l json -d 'Output results as JSON
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from revoke" -s y -l non-interactive -d 'Revoke key without asking for confirmation
'
complete -c edgedb -n "__fish_seen_subcommand_from cloud; and __fish_seen_subcommand_from secretkey; and __fish_seen_subcommand_from revoke" -s h -l help -d 'Print help information'
complete -c edgedb -n "__fish_seen_subcommand_from watch" -l cloud-api-endpoint -d 'Specify the EdgeDB Cloud API endpoint. Defaults to the current logged-in server, or <https://api.g.aws.edgedb.cloud> if unauthorized
' -r
complete -c edgedb -n "__fish_seen_subcommand_from watch" -l cloud-secret-key -d 'Specify EdgeDB Cloud API secret key to use instead of loading key from a remembered authentication.
' -r
complete -c edgedb -n "__fish_seen_subcommand_from watch" -l cloud-profile -d 'Specify authenticated EdgeDB Cloud profile. Defaults to "default".
' -r
complete -c edgedb -n "__fish_seen_subcommand_from watch" -s v -l verbose -d 'Print DDLs applied to the schema
'
complete -c edgedb -n "__fish_seen_subcommand_from watch" -s h -l help -d 'Print help information'
