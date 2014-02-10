class TransactionsController < ApplicationController
  def index
    @dump = Dump.new
    @transactions = Transaction.all
  end

  def import
    @dump = Dump.new(dump_params)

    if @dump.save
      Transaction.import(@dump.dumpfile.path)
      redirect_to root_path, notice: 'Arquivo importado com sucesso.'
    else
      redirect_to root_path, notice: 'Falha ao importar arquivo.'
    end
  end

  private

  def dump_params
    params.require(:dump).permit(:dumpfile)
  end
end
