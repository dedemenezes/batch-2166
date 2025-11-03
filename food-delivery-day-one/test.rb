require_relative "room_repository"
require_relative "patient_repository"

room_repository = RoomRepository.new("./rooms.csv")
p room_repository

blues = Room.new(numero_de_camas: 2, nome_da_porta: "Blues 01")
room_repository.create(blues)
puts "Novo quarto criado ⤵️"
p blues

patient_repo = PatientRepository.new('./patients.csv')
andre = Patient.new(nome: "Andre")

blues.add_patient(andre)

patient_repo.create(andre)

p patient_repo
