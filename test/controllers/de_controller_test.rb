# frozen_string_literal: true

require 'test_helper'

class DeControllerTest < ActionDispatch::IntegrationTest
  test 'should get ubermich' do
    get de_ubermich_url
    assert_response :success
  end

  test 'should get leistungen' do
    get de_leistungen_url
    assert_response :success
  end

  test 'should get feedback' do
    get de_feedback_url
    assert_response :success
  end

  test 'should get kontakt' do
    get de_kontakt_url
    assert_response :success
  end

  test 'should get ubersetzen' do
    get de_ubersetzen_url
    assert_response :success
  end

  test 'should get dolmetschen' do
    get de_dolmetschen_url
    assert_response :success
  end

  test 'should get index' do
    get de_index_url
    assert_response :success
  end

  test 'should get linzenzen' do
    get de_linzenzen_url
    assert_response :success
  end
end
