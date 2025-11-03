require 'csv'

class PatientRepository
  # Precisaremos do room_repository
  # para que no load_csv possamos
  # localizar o quarto correto
  # e atribuir o quarto ao paciente
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @patients = []
    @next_id = 1
    load_csv
  end

  def create(patient)
    # atribuir um id ao novo room
    patient.id = @next_id
    @next_id += 1
    # guardar nonve room na coleção de rooms
    @patients << patient
    # p @rooms
    save_csv
  end

  def load_csv
    # row[:id] #=> '1'
    # row[:nome] #=> 'Andre'
    # row[:idade] #=> '34'
    # row[:curado] #=> 'false'

    # Para CADA paciente do csv, precisamos:
    # 1. Converter os campos para os tipos corretos
    # 2. Recriar o paciente
    # 3. Atribuir o id
    # 4. Deserializar o room_id para uma INSTANCIA DE ROOM,
    # room = @room_repository.find(room_id)
    # 5. Atribuir o quarto ao paciente
    # 6. Adicionar ao array de pacientes
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      # 1. Puxar os headers
      csv << [:id, :nome, :curado, :room_id]
      # 2.1 Iterar no array de quartos
      @patients.each do |patient|
        # 2.2. Puxar os atributos do quarto
        csv << [patient.id, patient.nome, patient.curado, patient.room.id]
      end
    end
  end
end
