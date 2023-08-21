local Translations = {
    debug = {
        loadmodel = "^5Debug^7: ^Loading Model^7: '^6",
        unloadmodel = "^5Debug^7: ^2Unloading Model^7: '^6",
        loadanim = "^5Debug^7: ^2Loading Anim Dictionary^7: '^6",
        unloadanim = "^5Debug^7: ^2Unloading Anim Dictionary^7: '^6",
        loadptfx = "^5Debug^7: ^2Loading Ptfx Dictionary^7: '^6",
        unloadptfx = "^5Debug^7: ^2Unloading Ptfx Dictionary^7: '^6",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})