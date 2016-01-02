module HookTest
  module IssuesControllerPatch
    def self.included(base)
      base.send(:include, InstanceMethods)

      base.class_eval do
        unloadable

        alias_method_chain :show, :test
      end
    end

    module InstanceMethods
      def show_with_test
        # チケットに紐づいたテストデータがあれば取得
        @test = Test.find_by(issue_id: @issue.id)
        if @test.nil?
          # なければ新規作成
          @test = Test.create!(issue_id: @issue.id, content: "", result: 0)
        end
        return show_without_test
      end
    end
  end
end
