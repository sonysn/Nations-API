class RenameSymbolsColumnToSymbolInNationals < ActiveRecord::Migration[7.0]
  def change
    rename_column :nationals, :SYMBOLS, :SYMBOL
  end
end
