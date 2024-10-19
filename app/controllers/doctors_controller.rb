class DoctorsController < ApplicationController
  def index
    @doctros = Doctor.all
  end
end
