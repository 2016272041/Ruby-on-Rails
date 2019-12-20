require "application_system_test_case"

class RegsTest < ApplicationSystemTestCase
  setup do
    @reg = regs(:one)
  end

  test "visiting the index" do
    visit regs_url
    assert_selector "h1", text: "Regs"
  end

  test "creating a Reg" do
    visit regs_url
    click_on "New Reg"

    fill_in "Comp", with: @reg.comp_id
    fill_in "Comp name", with: @reg.comp_name
    click_on "Create Reg"

    assert_text "Reg was successfully created"
    click_on "Back"
  end

  test "updating a Reg" do
    visit regs_url
    click_on "Edit", match: :first

    fill_in "Comp", with: @reg.comp_id
    fill_in "Comp name", with: @reg.comp_name
    click_on "Update Reg"

    assert_text "Reg was successfully updated"
    click_on "Back"
  end

  test "destroying a Reg" do
    visit regs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reg was successfully destroyed"
  end
end
