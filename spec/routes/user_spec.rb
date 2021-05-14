require 'rails_helper'

RSpec.describe Users::RegistrationController, type: :controller do
  it { should route(:post, 'users/sign_up').to(action: :create) }
  it { should route(:delete, 'users/delete').to(action: :destroy)}
end