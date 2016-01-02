module HookTest
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_show_description_bottom,
              :partial => 'hooks/hook_test/view_issues_show_description_bottom'

    # 以下でも可
    # def view_issues_show_description_bottom(context={})
    #   context[:controller].send(:render_to_string, {
    #     :partial => "hooks/hook_test/view_issues_show_description_bottom",
    #     :locals => context
    #   })
    # end
  end
end
