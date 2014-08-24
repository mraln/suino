# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

Parto.destroy_all
Matriz.destroy_all
Reprodutor.destroy_all

reprodutores = Reprodutor.create!([{ numid: '0001', nome: 'Reprodutor 1', raca: 'Landrace' },
                                  { numid: '0002', nome: 'Reprodutor 2', raca: 'Duroc' },
                                  { numid: '0003', nome: 'Reprodutor 3', raca: 'Pereira' }])

matrizes = Matriz.create!([
                          { numid: '1001', nome: 'Matriz 1', raca: 'Nilo' },
                          { numid: '1002', nome: 'Matriz 2', raca: 'Piau' },
                          { numid: '1003', nome: 'Matriz 3', raca: 'Large White' },
                        ])

matrizes.each_with_index do |matriz, index|
  parto = matriz.partos.new
  parto.reprodutor = reprodutores[index]
  parto.cobertura = (Date.today + index.days)
  parto.data_parto = 114.days.from_now.to_date
  parto.qtde_filhos = ((index*2)+10)
  parto.mortalidade = (index + ((rand * 10).to_i)) 
  parto.save!
end
