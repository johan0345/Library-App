class RemoveOtpFieldsFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :otp_secret, :string if column_exists?(:users, :otp_secret)

    remove_column :users, :consumed_timestep, :integer if column_exists?(:users, :consumed_timestep)

    remove_column :users, :otp_required_for_login, :boolean if column_exists?(:users, :otp_required_for_login)
  end
end