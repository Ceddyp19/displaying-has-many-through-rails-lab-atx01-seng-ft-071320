# class PatientsController < ApplicationController
#     def show
#         @patient = Patient.find(params[:id])
#     end

#     def index 
#         @patients = Patient.all 
#     end
# end
class PatientsController < ApplicationController
    before_action :set_patient, only: [:show]
  
    def index
      @patients = Patient.all
    end
  
    def show
    end
  
    private
    def set_patient
      @patient = Patient.find(params[:id])
    end
  
    def patient_params
      params.require(:patient).permit(:name, :age)
    end
  end