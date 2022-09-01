# frozen_string_literal:true

class SecondaryTechStacksController < ApplicationController
  before_action :set_secondary_tech_stack, only: %i[edit update show destory]

  def index
    @secondary_tech_stacks = SecondaryTechStack.all
  end

  def new
    @secondary_tech_stack = SecondaryTechStack.new
  end

  def create
    @secondary_tech_stack = SecondaryTechStack.new(secondary_tech_stack_params)
    if @secondary_tech_stack.save
      flash[:notice] = 'Secondary Stack created Successfully!'
      redirect_to secondary_tech_stacks_path
    else
      flash[:error] = 'Create Operation has been Failed!'
      render :new
    end
  end

  def update
    if @secondary_tech_stack.update(secondary_tech_stack_params)
      flash[:notice] = 'Secondary Stack records updated Successfully!'
      redirect_to secondary_tech_stack_path
    else
      flash[:error] = 'updation Operation has been Failed!'
      render :edit
    end
  end

  def edit; end

  def show; end

  def destroy
    @secondary_tech_stack = SecondaryTechStack.find(params[:id])
    if @secondary_tech_stack.destroy
      flash[:notice] = 'SecondaryTechStack has been Deleted!'
      redirect_to secondary_tech_stacks_path
    else
      flash[:error] = 'Deletion Operation has been Failed!'
    end
  end

  private

  def set_secondary_tech_stack
    @secondary_tech_stack = SecondaryTechStack.find_by(id: params[:id])
  end

  def secondary_tech_stack_params
    params.require(:secondary_tech_stack).permit(:stack, :skills, :generic_info)
  end
end
