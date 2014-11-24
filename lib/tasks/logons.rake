namespace :logons do
  desc "Cleans up the logons which were not logged off"

  task cleanup: :environment do
    # TODO We should send out an email to admins here
    Logon.active.update_all(:logout_time, Time.now)
  end
end
