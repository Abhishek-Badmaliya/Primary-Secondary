# frozen_string_literal:true

class PrimaryTechStacksController < ApplicationController
  before_action :set_primary_tech_stack, only: %i[edit update show destory]

  def index
    @primary_tech_stacks = PrimaryTechStack.all
  end

  def new
    @primary_tech_stack = PrimaryTechStack.new
  end

  def create
    @primary_tech_stack = PrimaryTechStack.new(primary_tech_stack_params)
    if @primary_tech_stack.save
      flash[:notice] = 'Primary Stack created Successfully!'
      redirect_to primary_tech_stacks_path
    else
      flash[:error] = 'Create Operation has been Failed!'
      render :new
    end
  end

  def update
    if @primary_tech_stack.update(primary_tech_stack_params)
      flash[:notice] = 'PrimaryTechStack records updated Successfully!'
      redirect_to primary_tech_stack_path
    else
      flash[:error] = 'updation Operation has been Failed!'
      render :edit
    end
  end

  def edit; end

  def show; end

  def destroy
    @primary_tech_stack = PrimaryTechStack.find(params[:id])
    if @primary_tech_stack.destroy
      flash[:notice] = 'PrimaryTechStack has been Deleted!'
      redirect_to primary_tech_stacks_path
    else
      flash[:error] = 'Deletion Operation has been Failed!'
    end
  end

  private

  def set_primary_tech_stack
    @primary_tech_stack = PrimaryTechStack.find_by(id: params[:id])
  end

  def primary_tech_stack_params
    params.require(:primary_tech_stack).permit(:stack, :skills, :generic_info)
  end
end
