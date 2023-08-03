class MigrateToUtf8mb4 < ActiveRecord::Migration[7.0]
  def db
    ActiveRecord::Base.connection
  end

  def up
    # rubocop:disable Metrics/BlockLength
    safety_assured do
      execute 'ALTER TABLE `commit_activities` ROW_FORMAT=DYNAMIC CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;'
      execute 'ALTER TABLE `flipper_features` ROW_FORMAT=DYNAMIC CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;'
      execute 'ALTER TABLE `flipper_gates` ROW_FORMAT=DYNAMIC CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;'

      execute 'ALTER TABLE `architectures` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `attrib_namespaces` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `attrib_types` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `attrib_types` MODIFY `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `attrib_types` MODIFY `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `attribs` MODIFY `binary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `backend_infos` MODIFY `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `backend_infos` MODIFY `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `backend_packages` MODIFY `srcmd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `backend_packages` MODIFY `changesmd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `backend_packages` MODIFY `verifymd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `backend_packages` MODIFY `expandedmd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_disturl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_supportstatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_maintainer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_updateinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_updateinfo_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `flavor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `binary_releases` MODIFY `binary_cpeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_action_accept_infos` MODIFY `rev` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_action_accept_infos` MODIFY `srcmd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_action_accept_infos` MODIFY `xsrcmd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_action_accept_infos` MODIFY `osrcmd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_action_accept_infos` MODIFY `oxsrcmd5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_action_accept_infos` MODIFY `oproject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_action_accept_infos` MODIFY `opackage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `target_project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `target_package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `target_releaseproject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `source_project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `source_package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `source_rev` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `sourceupdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_request_actions` MODIFY `target_repository` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `bs_requests` MODIFY `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_requests` MODIFY `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `bs_requests` MODIFY `commenter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute "ALTER TABLE `bs_requests` MODIFY `priority` enum('critical','important','moderate','low') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'moderate'"
      execute 'ALTER TABLE `channel_binaries` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `channel_binaries` MODIFY `package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `channel_binaries` MODIFY `binaryarch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `channel_binaries` MODIFY `supportstatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'

      # In some circumstances these columns don't exist, this is to make sure that they do
      execute 'ALTER TABLE `channel_targets` MODIFY IF EXISTS `prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `channel_targets` ADD IF NOT EXISTS `prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'

      execute 'ALTER TABLE `channel_targets` MODIFY `id_template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `cloud_azure_configurations` MODIFY `application_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `cloud_azure_configurations` MODIFY `application_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `cloud_ec2_configurations` MODIFY `external_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `cloud_ec2_configurations` MODIFY `arn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `comments` MODIFY `commentable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `commit_activities` MODIFY `project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute 'ALTER TABLE `commit_activities` MODIFY `package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute "ALTER TABLE `configurations` MODIFY `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT ''"
      execute "ALTER TABLE `configurations` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT ''"
      execute "ALTER TABLE `configurations` MODIFY `registration` enum('allow','confirmation','deny') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'allow'"
      execute 'ALTER TABLE `configurations` MODIFY `download_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `configurations` MODIFY `ymp_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `configurations` MODIFY `bugzilla_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `configurations` MODIFY `http_proxy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `configurations` MODIFY `no_proxy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `configurations` MODIFY `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute "ALTER TABLE `configurations` MODIFY `obs_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'https://unconfigured.openbuildservice.org'"
      execute "ALTER TABLE `configurations` MODIFY `admin_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'unconfigured@openbuildservice.org'"
      execute "ALTER TABLE `configurations` MODIFY `default_tracker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'bnc'"
      execute 'ALTER TABLE `configurations` MODIFY `api_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute "ALTER TABLE `configurations` MODIFY `unlisted_projects_filter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '^home:.+'"
      execute "ALTER TABLE `configurations` MODIFY `unlisted_projects_filter_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'home projects'"
      execute 'ALTER TABLE `delayed_jobs` MODIFY `handler` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `delayed_jobs` MODIFY `locked_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `delayed_jobs` MODIFY `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `distribution_icons` MODIFY `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `distributions` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT'
      execute 'ALTER TABLE `distributions` MODIFY `vendor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `distributions` MODIFY `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `distributions` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `distributions` MODIFY `project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `distributions` MODIFY `reponame` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `distributions` MODIFY `repository` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `distributions` MODIFY `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `download_repositories` MODIFY `arch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `download_repositories` MODIFY `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `download_repositories` MODIFY `repotype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `download_repositories` MODIFY `archfilter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `download_repositories` MODIFY `masterurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `download_repositories` MODIFY `mastersslfingerprint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `download_repositories` MODIFY `pubkey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `event_subscriptions` MODIFY `eventtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `event_subscriptions` MODIFY `receiver_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `events` MODIFY `eventtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute "ALTER TABLE `flags` MODIFY `status` enum('enable','disable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL"
      execute 'ALTER TABLE `flags` MODIFY `repo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute "ALTER TABLE `flags` MODIFY `flag` enum('useforbuild','sourceaccess','binarydownload','debuginfo','build','publish','access','lock') " \
              'CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `flipper_features` MODIFY `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute 'ALTER TABLE `flipper_gates` MODIFY `feature_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute 'ALTER TABLE `flipper_gates` MODIFY `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute 'ALTER TABLE `flipper_gates` MODIFY `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute "ALTER TABLE `groups` MODIFY `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''"
      execute 'ALTER TABLE `groups` MODIFY `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `history_elements` MODIFY `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `history_elements` MODIFY `description_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `show_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `regex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `issue_trackers` MODIFY `label` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `issues` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `issues` MODIFY `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute "ALTER TABLE `issues` MODIFY `state` enum('OPEN','CLOSED','UNKNOWN') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL"
      execute 'ALTER TABLE `kiwi_descriptions` MODIFY `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_descriptions` MODIFY `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_descriptions` MODIFY `specification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_images` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_images` MODIFY `md5_last_revision` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_package_groups` MODIFY `profiles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_package_groups` MODIFY `pattern_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_packages` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `kiwi_packages` MODIFY `arch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_packages` MODIFY `replaces` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_preferences` MODIFY `type_containerconfig_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_preferences` MODIFY `type_containerconfig_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_preferences` MODIFY `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_repositories` MODIFY `repo_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_repositories` MODIFY `source_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_repositories` MODIFY `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_repositories` MODIFY `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `kiwi_repositories` MODIFY `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `linked_projects` MODIFY `linked_remote_project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute "ALTER TABLE `linked_projects` MODIFY `vrevmode` enum('standard','unextend','extend') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'standard'"
      execute 'ALTER TABLE `maintenance_incidents` MODIFY `updateinfo_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `notifications` MODIFY `event_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `notifications` MODIFY `subscription_receiver_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `notifications` MODIFY `subscriber_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `notifications` MODIFY `bs_request_oldstate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `notifications` MODIFY `bs_request_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `notifications` MODIFY `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute "ALTER TABLE `package_kinds` MODIFY `kind` enum('patchinfo','aggregate','link','channel','product') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL"
      execute 'ALTER TABLE `packages` MODIFY `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute 'ALTER TABLE `packages` MODIFY `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `packages` MODIFY `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `packages` MODIFY `bcntsynctag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `packages` MODIFY `releasename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `product_media` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `products` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute 'ALTER TABLE `products` MODIFY `cpe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `products` MODIFY `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `products` MODIFY `baseversion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `products` MODIFY `patchlevel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `products` MODIFY `release` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `project_log_entries` MODIFY `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `project_log_entries` MODIFY `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `project_log_entries` MODIFY `event_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `projects` MODIFY `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute 'ALTER TABLE `projects` MODIFY `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `projects` MODIFY `remoteurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `projects` MODIFY `remoteproject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute "ALTER TABLE `projects` MODIFY `kind` enum('standard','maintenance','maintenance_incident','maintenance_release') " \
              "CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'standard'"
      execute 'ALTER TABLE `projects` MODIFY `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `repositories` MODIFY `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL'
      execute "ALTER TABLE `repositories` MODIFY `remote_project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ''"
      execute "ALTER TABLE `repositories` MODIFY `rebuild` enum('transitive','direct','local') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL"
      execute "ALTER TABLE `repositories` MODIFY `block` enum('all','local','never') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL"
      execute 'ALTER TABLE `reviews` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT'
      execute 'ALTER TABLE `reviews` MODIFY `bs_request_id` int(11) DEFAULT NULL'
      execute 'ALTER TABLE `reviews` MODIFY `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `reviews` MODIFY `reviewer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `reviews` MODIFY `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `reviews` MODIFY `by_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `reviews` MODIFY `by_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `reviews` MODIFY `by_project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `reviews` MODIFY `by_package` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute "ALTER TABLE `roles` MODIFY `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''"
      execute 'ALTER TABLE `sessions` MODIFY `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL'
      execute "ALTER TABLE `static_permissions` MODIFY `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''"
      execute 'ALTER TABLE `status_histories` MODIFY `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `tokens` MODIFY `string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `tokens` MODIFY `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL'
      execute 'ALTER TABLE `users` MODIFY `login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute "ALTER TABLE `users` MODIFY `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''"
      execute "ALTER TABLE `users` MODIFY `realname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''"
      execute 'ALTER TABLE `users` MODIFY `password_digest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `users` MODIFY `deprecated_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `users` MODIFY `deprecated_password_hash_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute 'ALTER TABLE `users` MODIFY `deprecated_password_salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL'
      execute "ALTER TABLE `users` MODIFY `state` enum('unconfirmed','confirmed','locked','deleted','subaccount') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'unconfirmed'"
    end
    # rubocop:enable Metrics/BlockLength
  end
end
