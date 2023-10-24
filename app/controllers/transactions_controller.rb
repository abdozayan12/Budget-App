class TransactionsController < ApplicationController
  def index
    @category = Group.find(params[:category_id])
    @transactions = @category.entities
    @transactions = @transactions.sort { |a, b| b.created_at <=> a.created_at }
    @total = @transactions.map(&:amount).sum
  end

  def new
    @entity = Entity.new
    @category = Group.find(params[:category_id])
  end

  def create
    @purchase = Entity.new(purchases_params)
    @category = Group.find(params[:category_id])

    if @purchase.save
      EntityGroup.create(group_id: @category.id, entity_id: @purchase.id)
      redirect_to category_transactions_path(group_id: @category.id), notice: 'Purchase was successfully created.'
    else
      redirect_to new_category_transaction_path(group_id: @category.id), notice: 'Purchase cannot create '
    end
  end

  private

  def purchases_params
    params.require(:entity).permit(:name, :amount).merge(author_id: current_user.id)
  end
end
