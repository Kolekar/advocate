class Lawyer::LawyerController < ApplicationController
  before_action :authenticate_user!
end
