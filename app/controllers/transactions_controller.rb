class TransactionsController < ApplicationController
  before_action :authenticate_user

  def index
    @dump = Dump.new
    @transactions = Transaction.all
  end

  def import
    @dump = Dump.new(dump_params)

    if @dump.save
      Transaction.import(@dump.dumpfile.path)
      redirect_to root_path, notice: t(:file_imported_successfully)
    else
      redirect_to root_path, alert: t(:import_failed)
    end
  end

  private

  def dump_params
    params[:dump] = {dumpfile: ''} unless params[:dump].present?
    params.require(:dump).permit(:dumpfile)
  end
end
