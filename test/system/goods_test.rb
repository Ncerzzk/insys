require "application_system_test_case"

class GoodsTest < ApplicationSystemTestCase
  setup do
    @good = goods(:one)
  end

  test "visiting the index" do
    visit goods_url
    assert_selector "h1", text: "Goods"
  end

  test "creating a Good" do
    visit goods_url
    click_on "New Good"

    fill_in "Mass", with: @good.mass
    fill_in "Pay", with: @good.pay_id
    fill_in "Pay type", with: @good.pay_type
    fill_in "Receiver address", with: @good.receiver_address
    fill_in "Receiver name", with: @good.receiver_name
    fill_in "Receiver phone", with: @good.receiver_phone
    fill_in "Sender address", with: @good.sender_address
    fill_in "Sender name", with: @good.sender_name
    fill_in "Sender phone", with: @good.sender_phone
    fill_in "Who pay", with: @good.who_pay
    click_on "Create Good"

    assert_text "Good was successfully created"
    click_on "Back"
  end

  test "updating a Good" do
    visit goods_url
    click_on "Edit", match: :first

    fill_in "Mass", with: @good.mass
    fill_in "Pay", with: @good.pay_id
    fill_in "Pay type", with: @good.pay_type
    fill_in "Receiver address", with: @good.receiver_address
    fill_in "Receiver name", with: @good.receiver_name
    fill_in "Receiver phone", with: @good.receiver_phone
    fill_in "Sender address", with: @good.sender_address
    fill_in "Sender name", with: @good.sender_name
    fill_in "Sender phone", with: @good.sender_phone
    fill_in "Who pay", with: @good.who_pay
    click_on "Update Good"

    assert_text "Good was successfully updated"
    click_on "Back"
  end

  test "destroying a Good" do
    visit goods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Good was successfully destroyed"
  end
end
