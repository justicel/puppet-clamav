class clamav::clamd(
  $config_file                 = $clamav::params::clamd_config_file,
  $service_name                = $clamav::params::clamd_service_name,
  $service_enable              = $clamav::params::clamd_service_enable,
  $service_ensure              = $clamav::params::clamd_service_ensure,
  $package_name                = $clamav::params::clamd_package_name,
  $log_file                    = $clamav::params::clamd_log_file,
  $log_file_unlock             = $clamav::params::clamd_log_file_unlock,
  $log_file_max_size           = $clamav::params::clamd_log_file_max_size,
  $log_time                    = $clamav::params::clamd_log_time,
  $log_clean                   = $clamav::params::clamd_log_clean,
  $log_syslog                  = $clamav::params::clamd_log_syslog,
  $log_facility                = $clamav::params::clamd_log_facility,
  $log_verbose                 = $clamav::params::clamd_log_verbose,
  $log_rotate                  = $clamav::params::clamd_log_rotate,
  $extended_detection_info     = $clamav::params::clamd_extended_detection_info,
  $pid_file                    = $clamav::params::clamd_pid_file,
  $temporary_directory         = $clamav::params::clamd_temporary_directory,
  $database_directory          = $clamav::params::clamd_database_directory,
  $official_database_only      = $clamav::params::clamd_official_database_only,
  $local_socket                = $clamav::params::clamd_local_socket,
  $local_socket_group          = $clamav::params::clamd_local_socket_group,
  $local_socket_mode           = $clamav::params::clamd_local_socket_mode,
  $fix_stale_socket            = $clamav::params::clamd_fix_stale_socket,
  $tcp_socket                  = $clamav::params::clamd_tcp_socket,
  $tcp_addr                    = $clamav::params::clamd_tcp_addr,
  $max_connection_queue_length = $clamav::params::clamd_max_connection_queue_length,
  $stream_max_length           = $clamav::params::clamd_stream_max_length,
  $stream_min_port             = $clamav::params::clamd_stream_min_port,
  $stream_max_port             = $clamav::params::clamd_stream_max_port,
  $max_threads                 = $clamav::params::clamd_max_threads,
  $read_timeout                = $clamav::params::clamd_read_timeout,
  $command_read_timeout        = $clamav::params::clamd_command_read_timeout,
  $send_buf_timeout            = $clamav::params::clamd_send_buf_timeout,
  $max_queue                   = $clamav::params::clamd_max_queue,
  $idle_timeout                = $clamav::params::clamd_idle_timeout,
  $exclude_path                = $clamav::params::clamd_exclude_path,
  $max_directory_recursion     = $clamav::params::clamd_max_directory_recursion,
  $follow_directory_symlinks   = $clamav::params::clamd_follow_directory_symlinks,
  $follow_file_symlinks        = $clamav::params::clamd_follow_file_symlinks,
  $cross_filesystems           = $clamav::params::clamd_cross_filesystems,
  $self_check                  = $clamav::params::clamd_self_check,
  $virus_event                 = $clamav::params::clamd_virus_event,
  $user                        = $clamav::params::clamd_user,
  $allow_supplementary_groups  = $clamav::params::clamd_allow_supplementary_groups,
  $exit_on_oom                 = $clamav::params::clamd_exit_on_oom,
  $foreground                  = $clamav::params::clamd_foreground,
  $debug                       = $clamav::params::clamd_debug,
  $leave_temporary_files       = $clamav::params::clamd_leave_temporary_files,
  $allow_all_match_scan        = $clamav::params::clamd_allow_all_match_scan,
  $detect_pua                  = $clamav::params::clamd_detect_pua,
  $exclude_pua                 = $clamav::params::clamd_exclude_pua,
  $include_pua                 = $clamav::params::clamd_include_pua,
  $algorithm_detection         = $clamav::params::clamd_algorithm_detection,
  $force_to_disk               = $clamav::params::clamd_force_to_disk,
  $disable_cache               = $clamav::params::clamd_disable_cache,
  $scan_pe                     = $clamav::params::clamd_scan_pe,
  $disable_cert_check          = $clamav::params::clamd_disable_cert_check,
  $scan_elf                    = $clamav::params::clamd_scan_elf,
  $detect_broken_executables   = $clamav::params::clamd_detect_broken_executables,
  $scan_ole2                   = $clamav::params::clamd_scan_ole2,
  $ole2_block_macros           = $clamav::params::clamd_ole2_block_macros,
  $scan_pdf                    = $clamav::params::clamd_scan_pdf,
  $scan_swf                    = $clamav::params::clamd_scan_swf,
  $scan_mail                   = $clamav::params::clamd_scan_mail,
  $scan_partial_messages       = $clamav::params::clamd_scan_partial_messages,
  $phishing_signatures         = $clamav::params::clamd_phishing_signatures,
  $phishing_scan_urls          = $clamav::params::clamd_phishing_scan_urls,
  $phishing_always_block_ssl_mismatch = $clamav::params::clamd_phishing_always_block_ssl_mismatch,
  $phishing_always_block_cloak = $clamav::params::clamd_phishing_always_block_cloak,
  $partition_intersection      = $clamav::params::clamd_partition_intersection,
  $heuristic_scan_precedence   = $clamav::params::clamd_heuristic_scan_precedence,
  $structured_data_detection   = $clamav::params::clamd_structured_data_detection,
  $structured_min_credit_card_count = $clamav::params::clamd_structured_min_credit_card_count,
  $structured_min_ssn_count    = $clamav::params::clamd_structured_min_ssn_count,
  $structured_ssn_format_normal = $clamav::params::clamd_structured_ssn_format_normal,
  $structured_ssn_format_stripped = $clamav::params::clamd_structured_ssn_format_stripped,
  $scan_html                   = $clamav::params::clamd_scan_html,
  $scan_archive                = $clamav::params::clamd_scan_archive,
  $archive_block_encrypted     = $clamav::params::clamd_archive_block_encrypted,
  $max_scan_size               = $clamav::params::clamd_max_scan_size,
  $max_file_size               = $clamav::params::clamd_max_file_size,
  $max_recursion               = $clamav::params::clamd_max_recursion,
  $max_files                   = $clamav::params::clamd_max_files,
  $max_embedded_pe             = $clamav::params::clamd_max_embedded_pe,
  $max_html_normalize          = $clamav::params::clamd_max_html_normalize,
  $max_html_no_tags            = $clamav::params::clamd_html_no_tags,
  $max_script_normalize        = $clamav::params::clamd_max_script_normalize,
  $max_zip_type_rcg            = $clamav::params::clamd_max_zip_type_rcg,
  $max_partitions              = $clamav::params::clamd_max_partitions,
  $max_icons_pe                = $clamav::params::clamd_max_icons_pe,
  $scan_on_access              = $clamav::params::clamd_scan_on_access,
  $on_access_max_file_size     = $clamav::params::clamd_on_access_max_file_size,
  $on_access_include_path      = $clamav::params::clamd_on_access_include_path,
  $on_access_exclude_path      = $clamav::params::clamd_on_access_exclude_path,
  $on_access_exclude_uid       = $clamav::params::clamd_on_access_exclude_uid,
  $bytecode                    = $clamav::params::clamd_bytecode,
  $bytecode_security           = $clamav::params::clamd_bytecode_security,
  $bytecode_timeout            = $clamav::params::clamd_bytecode_timeout,
  $stats_enabled               = $clamav::params::clamd_stats_enabled,
  $stats_pe_disabled           = $clamav::params::clamd_stats_pe_disabled,
  $stats_host_id               = $clamav::params::clamd_stats_host_id,
  $stats_timeout               = $clamav::params::clamd_stats_timeout,
) inherits clamav::params {

  package { $package_name:
    ensure => 'installed'
  }
  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
  }

  file { $config_file:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('clamav/clamd.conf.erb'),
    notify  => Service[$service_name],
  }
}
