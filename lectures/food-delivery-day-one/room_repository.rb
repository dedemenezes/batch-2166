require 'csv'
require_relative "room.rb"

class RoomRepository
  def initialize(csv_file_path)
    # csv_file_path: caminho do arquivo csv
    @csv_file_path = csv_file_path
    # rooms: array de instancias de room
    @rooms = []
    @next_id = 1
    load_csv
  end

  def create(room)
    # atribuir um id ao novo room
    room.id = @next_id
    @next_id += 1
    # guardar nonve room na coleção de rooms
    @rooms << room
    # p @rooms
    save_csv
  end

  def save_csv
    # salvar os atributos de cada quarto
    # como uma linha no csv

    # 1. Puxar os headers
    # 2.1 Iterar no array de quartos
    # 2.2. Puxar os atributos do quarto
  end


  def load_csv
    # row[:id] #=> '1'
    # row[:nome_da_porta] #=> 'Rock 01'
    # row[:numero_de_camas] #=> '3'

    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      # Para CADA room do csv, precisamos:
      # 1. Converter os campos para os tipos corretos
      row[:numero_de_camas] = row[:numero_de_camas].to_i

      # 2. Recriar o room
      room = Room.new(row)
      # p room

      # 3. Atribuir o id
      room.id = @next_id

      # 4. Adicionar ao array de rooms
      @rooms << room

      # 5. Atualizar o próximo id
      # @rooms = []; id should be 1
      # @rooms has 10 rooms; id should be 11 #=> @rooms.last.id + 1
      @next_id = @rooms.empty? ? @next_id : @rooms.last.id + 1
    end
  end
end
