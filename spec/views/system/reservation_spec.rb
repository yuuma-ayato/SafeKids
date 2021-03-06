# frozen_string_literal: true

require 'rails_helper'
RSpec.describe '予約管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:reservation, daycare_to_use: 'みさと保育園')
    FactoryBot.create(:second_reservation, daycare_to_use: '吉川保育園')
  end
  describe '予約一覧画面' do
    context '予約を作成した場合' do
      it '予約が表示される' do
        visit new_user_session_path
        fill_in 'user_email', with: 'sample@example.com'
        fill_in 'user_password', with: '00000000'
        click_button 'ログイン'
        visit reservations_path
        expect(page).to have_content 'みさと保育園'
      end
    end
    #   context '複数のタスクを作成した場合' do
    #     it 'タスクが作成日時の降順に並んでいる' do
    #       visit tasks_path
    #       #index.html.erbの<%= task.title %>にclassをつけておく。
    #       task_list = all('.task_row') # タスク一覧を配列として取得するため、View側でidを振っておく
    #       expect(task_list[0]).to have_content 'new_task'
    #       expect(task_list[1]).to have_content 'task'
    #     end
    #     it 'タスクを終了期限順に並び変える' do
    #       visit tasks_path
    #       click_button '期限順に並べる'
    #       task_list = all('.task_row')
    #       expect(task_list[0]).to have_content 'task'
    #       expect(task_list[1]).to have_content 'new_task'
    #     end
    #     it 'タスクを優先順に並び変える' do
    #       visit tasks_path
    #       click_button '優先順に並べる'
    #       task_list = all('.task_row')
    #       expect(task_list[0]).to have_content 'task'
    #       expect(task_list[1]).to have_content 'new_task'
    #     end
    #   end
    #   context '検索をした場合' do
    #     before do
    #       FactoryBot.create(:task, title: "task")
    #       FactoryBot.create(:second_task, title: "sample")
    #     end
    #     it "タイトルで検索できる" do
    #       visit tasks_path
    #       fill_in 'title', with: 'sample'
    #       click_button '検索'
    #       expect(page).to have_content 'sample'
    #     end
    #   end
  end
  #
  # describe 'タスク登録画面' do
  #   context '必要項目を入力して、createボタンを押した場合' do
  #     it 'データが保存される' do
  #       # new_task_pathにvisitする（タスク登録ページに遷移する）
  #       # 1.ここにnew_task_pathにvisitする処理を書く
  #       visit new_task_path
  #       # 「タスク名」というラベル名の入力欄と、「タスク詳細」というラベル名の入力欄に
  #       # タスクのタイトルと内容をそれぞれfill_in（入力）する
  #       # 2.ここに「タスク名」というラベル名の入力欄に内容をfill_in（入力）する処理を書く
  #       fill_in 'タスク名', with: '6/25'
  #       # 3.ここに「タスク詳細」というラベル名の入力欄に内容をfill_in（入力）する処理を書く
  #       fill_in 'タスク詳細', with: 'RSpecの学習'
  #       fill_in '終了期限', with: DateTime.now
  #       select '着手中', from: 'task_status'
  #       select '中', from: 'task_priority'
  #       check @label.name
  #       # 4.「登録する」というvalue（表記文字）のあるボタンをclick_onする（クリックする）する処理を書く
  #       click_button '登録する'
  #       # clickで登録されたはずの情報が、タスク詳細ページに表示されているかを確認する
  #       # （タスクが登録されたらタスク詳細画面に遷移されるという前提）
  #       # 5.タスク詳細ページに、テストコードで作成したはずのデータ（記述）がhave_contentされているか（含まれているか）を確認（期待）するコードを書く
  #       expect(page).to have_content '6/25'
  #       expect(page).to have_content 'RSpecの学習'
  #       expect(page).to have_content DateTime.now.strftime("%Y-%m-%d%H:%M")
  #       expect(page).to have_content '着手中'
  #       expect(page).to have_content @label.name
  #     end
  #   end
  # end
  #
  # describe 'タスク詳細画面' do
  #   context '任意のタスク詳細画面に遷移した場合' do
  #     it '該当タスクの内容が表示されたページに遷移する' do
  #       visit task_path(id: 1)
  #       expect(page).to have_content 'task'
  #     end
  #   end
  # end
end
