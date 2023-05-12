require 'roo'

class Api::V1::WelcomeController < ApplicationController
    def hello
        import_data_from_file('country_currency_flag_and_symbol.xlsx')
        nations = National.all
        nations_json = nations.to_json(only: [:NAME, :SYMBOL, :FLAGS])
        render json: nations_json
        National.destroy_all
    end


    def import_data_from_file(file_path)
            spreadsheet = Roo::Spreadsheet.open(file_path)
            header = spreadsheet.row(1)
          (2..spreadsheet.last_row).each do |row_index|
            row_data = Hash[[header, spreadsheet.row(row_index)].transpose]
            country = National.new(row_data)
            country.save
          end
        end
end
