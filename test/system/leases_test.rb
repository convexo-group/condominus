require "application_system_test_case"

class LeasesTest < ApplicationSystemTestCase
  setup do
    @lease = leases(:one)
  end

  test "visiting the index" do
    visit leases_url
    assert_selector "h1", text: "Leases"
  end

  test "should create lease" do
    visit leases_url
    click_on "New lease"

    check "Active" if @lease.active
    fill_in "Due day", with: @lease.due_day
    fill_in "Duration", with: @lease.duration
    fill_in "Price", with: @lease.price
    fill_in "Tenant", with: @lease.tenant_id
    fill_in "Unit", with: @lease.unit_id
    click_on "Create Lease"

    assert_text "Lease was successfully created"
    click_on "Back"
  end

  test "should update Lease" do
    visit lease_url(@lease)
    click_on "Edit this lease", match: :first

    check "Active" if @lease.active
    fill_in "Due day", with: @lease.due_day
    fill_in "Duration", with: @lease.duration
    fill_in "Price", with: @lease.price
    fill_in "Tenant", with: @lease.tenant_id
    fill_in "Unit", with: @lease.unit_id
    click_on "Update Lease"

    assert_text "Lease was successfully updated"
    click_on "Back"
  end

  test "should destroy Lease" do
    visit lease_url(@lease)
    click_on "Destroy this lease", match: :first

    assert_text "Lease was successfully destroyed"
  end
end
