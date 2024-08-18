marker = createMarker(1366.863, -1279.733, 12.547, "cylinder", 1.5, 255, 255, 255, 50)

function msg(player)
    outputChatBox("", player, 255,255,255, true)
    outputChatBox("#ffffffOlá, seja bem vindo à loja de armas. Confira abaixo os comandos, armas e respectivos preços.", player, 255,255,255, true)
    outputChatBox("#ffffff/m4 = #00FF00 R$12000", player, 255,255,255, true)
    outputChatBox("#ffffff/shotgun = #00FF00 R$10000", player, 255,255,255, true)
    outputChatBox("#ffffff/deagle = #00FF00 R$7000", player, 255,255,255, true)
    outputChatBox("#ffffff/mp5 = #00FF00 R$9000", player, 255,255,255, true)
    outputChatBox("", player, 255,255,255, true)
end

addEventHandler("onMarkerHit", marker, msg)

function pegarM4(player)
    if isElementWithinMarker(player, marker) then
        if getPlayerMoney(player) >= 12000 then 
            takePlayerMoney(player, 12000) -- tira o dinheiro do player
            giveWeapon(player, 31, 300, true) -- dá a arma ao player
            outputChatBox("#ffffffVocê comprou uma M4 com 300 munições.", player, 255,255,255, true)
        else
            outputChatBox("#ff0000Você não possui dinheiro suficente para comprar este item.", player, 255,255,255, true)
        end
    end
end

addCommandHandler("m4", pegarM4)

function pegarShotgun(player)
    if isElementWithinMarker(player, marker) then
        if getPlayerMoney(player) >= 10000 then 
            takePlayerMoney(player, 10000) 
            giveWeapon(player, 25, 300, true) 
            outputChatBox("#ffffffVocê comprou uma Shotgun com 300 munições.", player, 255,255,255, true)
        else
            outputChatBox("#ff0000Você não possui dinheiro suficente para comprar este item.", player, 255,255,255, true)
        end
    end
end

addCommandHandler("shotgun", pegarShotgun)

function pegarDeagle(player)
    if isElementWithinMarker(player, marker) then
        if getPlayerMoney(player) >= 7000 then 
            takePlayerMoney(player, 7000) 
            giveWeapon(player, 24, 300, true) 
            outputChatBox("#ffffffVocê comprou uma Deagle com 300 munições.", player, 255,255,255, true)
        else
            outputChatBox("#ff0000Você não possui dinheiro suficente para comprar este item.", player, 255,255,255, true)
        end
    end
end

addCommandHandler("deagle", pegarDeagle)

function pegarMP5(player)
    if isElementWithinMarker(player, marker) then
        if getPlayerMoney(player) >= 9000 then 
            takePlayerMoney(player, 9000) 
            giveWeapon(player, 29, 300, true) 
            outputChatBox("#ffffffVocê comprou uma MP5 com 300 munições.", player, 255,255,255, true)
        else
            outputChatBox("#ff0000Você não possui dinheiro suficente para comprar este item.", player, 255,255,255, true)
        end
    end
end

addCommandHandler("mp5", pegarMP5)