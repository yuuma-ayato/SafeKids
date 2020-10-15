# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'ユーザ登録・ログイン・ログアウト機能', type: :system do
  let!(:user) { FactoryBot.create(:user) }
  let!(:admin_user) { FactoryBot.create(:admin_user) }
  describe 'ユーザ登録のテスト' do
    context 'ユーザのデータがなくログインしていない場合' do
      it 'ユーザ新規登録のテスト' do
        visit new_user_registration_path
        fill_in 'user[email]', with: 'new_user@example.com'
        fill_in 'user[password]', with: '12345678'
        fill_in 'user[password_confirmation]', with: '12345678'
        click_on 'アカウント登録'
        expect(page).to have_content '連絡先情報入力'
      end
    end
  end

  describe 'セッション機能のテスト' do
    context 'ユーザのデータがありログインする場合' do
      it 'ログインができること' do
        visit new_user_session_path
        fill_in 'user_email', with: user.email
        fill_in 'user_password', with: user.password
        click_button 'ログイン'
        expect(page).to have_content 'ログインしました。'
      end
      it 'ログアウトができること' do
        visit new_user_session_path
        fill_in 'user_email', with: user.email
        fill_in 'user_password', with: user.password
        click_button 'ログイン'
        click_on 'ログアウト'
        expect(page).to have_content 'ログイン'
      end
    end
  end

  describe '管理画面のテスト' do
    context '管理者ユーザのデータがありログインしていない場合' do
      it '管理者は管理画面にアクセスできること' do
        visit new_user_session_path
        fill_in 'user_email', with: admin_user.email
        fill_in 'user_password', with: admin_user.password
        click_button 'ログイン'
        visit admin_users_path
        expect(page).to have_content '管理者画面'
      end
    end
    context '一般ユーザーでログインしている場合' do
      it '一般ユーザは管理画面にアクセスできないこと' do
        visit new_user_session_path
        fill_in 'user_email', with: user.email
        fill_in 'user_password', with: user.password
        click_button 'ログイン'
        visit admin_users_path
        expect(page).to have_content 'あなたは管理者ではありません'
      end
    end
  end
end
