# Role de Bloqueio
r_bloqueio = Role.find(15)

# Role Liberacao 
r_liberado = Role.find(13)

for p in Project.all
    puts ('-----------------------')
    for i in p.issues.all
        #checar se exitir o status da demanda
        #if p.issues.exists?(status: 15)
        if i.status.id == 15 and i.tracker_id != 32
           puts('foi')
           for m in p.members.all
               #se liberado 13
               if m.roles.exists?(r_liberado.id)
                  m.roles = [r_bloqueio]
                  m.save
               end              
           end          
        else
           for m in p.members.all
               #se bloqueado para 13
               if m.roles.exists?(r_bloqueio.id)
                  m.roles = [r_liberado]
                  m.save
                  puts('Voltou!!!')                                
               end
           end   
           puts('nao foi')
        end          
    puts ('-----------------------')
    end
end
