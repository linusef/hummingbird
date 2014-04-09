# Before hooks will be run before the first step of each scenario.

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
end

# After hooks will be run after the last step of each scenario, 
# even when there are failing, undefined, pending or skipped steps.

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.

  # if(scenario.failed?)
  #   subject = "[Calvert] #{scenario.exception.message}"
  #   send_failure_email(subject)
  # end
end 