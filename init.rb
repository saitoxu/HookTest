require 'redmine'

require_dependency 'hook_test/hooks'

Rails.configuration.to_prepare do
  require_dependency 'issues_controller'

  # patchモジュールの読み込み
  unless IssuesController.included_modules.include? HookTest::IssuesControllerPatch
    IssuesController.send(:include, HookTest::IssuesControllerPatch)
  end
end

Redmine::Plugin.register :hook_test do
  name 'Hook Test plugin'
  author 'saitoxu'
  description 'This is a hook test plugin'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
