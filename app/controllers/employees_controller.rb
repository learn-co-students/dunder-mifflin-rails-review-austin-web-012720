class EmployeesController < ApplicationController

    def index
        @emps = Employee.all
    end

    def show
        @emp = Employee.find(params[:id])
    end

    def new
        @dogs = Dog.all
        @emp = Employee.new
    end

    def create
        @emp = Employee.new(employee_params)
        if @emp.valid?
            @emp.save
            redirect_to employee_path(@emp)
        else
            render 'new'
        end
    end

    def edit
        @dogs = Dog.all
        @emp = Employee.find(params[:id])
    end

    def update
        @emp = Employee.find(params[:id])
        @emp.update(employee_params)
        if @emp.valid?
            redirect_to employee_path(@emp)
        else
            render 'edit'
        end
    end

    def destroy
        @emp = Employee.find(params[:id])
        @emp.destroy
        redirect_to employees_path
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end