# frozen_string_literal: true

require 'test_helper'

class EnControllerTest < ActionDispatch::IntegrationTest
  test 'should get aboutme' do
    get en_aboutme_url
    assert_response :success
  end

  test 'should get contact' do
    get en_contact_url
    assert_response :success
  end

  test 'should get feedback' do
    get en_feedback_url
    assert_response :success
  end

  test 'should get index' do
    get en_index_url
    assert_response :success
  end

  test 'should get interpretation' do
    get en_interpretation_url
    assert_response :success
  end

  test 'should get resume' do
    get en_resume_url
    assert_response :success
  end

  test 'should get services' do
    get en_services_url
    assert_response :success
  end

  test 'should get translation' do
    get en_translation_url
    assert_response :success
  end

  test 'should get licenses' do
    get en_licenses_url
    assert_response :success
  end
end
