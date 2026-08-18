## [Unreleased]

## [0.2.0] - 2026-08-18
* Stop the service with `KillMode=mixed`, so that systemd signals the GoodJob
  process only and lets it finish the jobs in flight. The default
  `KillMode=control-group` killed the child processes of those jobs at each deploy.
* Add `:good_job_stop_timeout` (default `90`), written as `TimeoutStopSec` in the
  service unit.

## [0.1.1] - 2023-03-20
* Fix: Change `systemd_conf_dir` to `good_job_systemd_conf_dir`

## [0.1.0] - 2023-02-18

- Initial release
