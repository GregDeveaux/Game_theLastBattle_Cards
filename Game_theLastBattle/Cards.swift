//
//  Decoration.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 28/02/2022.
//

import Foundation


class Cards {
    
    var name: String = ""
    
        // name = 32 characters possible for not ruin the card
    let maxlengthNamePossible = 32
    
    var nameModifiedForCard: String {
        let lengthName = name.count
        
        let differenceOfLength = maxlengthNamePossible - lengthName
        for _ in 1..<differenceOfLength {
            let space = " "
            name = name + space
        }
        return name
    }
    
    var lifepoint: Int = 0
    var heal: Int = 0
    var power : Int = 0
    
    var lifepointModifiedForCard: String {
        let lifepointString = String(format: "%03d", lifepoint);
        return lifepointString
    }
    
    var healModifiedForCard: String {
        let healString = String(format: "%02d", heal);
        return healString
    }
    
    var powerModifiedForCard: String {
        let powerString = String(format: "%02d", power);
        return powerString
    }
    
    
    
    
        // we call the different fighters to integrate the specifications on the card
    
    var wizard1: String { return """
        
        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 1 •     °·. WIZARD .·°              |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                               //   |
        |   //             _-¯¯-_            //   |
        |   //            ∫      L           //   |
        |   //           /        L          //   |
        |   //          /     ô    L         //   |
        |   //         /     (§)    L        //   |
        |   //        /       ¨      L       //   |
        |   //       /                L      //   |
        |   //      /__––––¯¯¯¯¯¯––––__L     //   |
        |   //     ∑|_––––¯¯¯¯¯¯¯¯––––_|3    //   |
        |   //    ∑ |   _----|----.    | 3   //   |
        |   //    ∑ |       —---       | 3   //   |
        |   //    ∑_| _---"      “---_ |_3   //   |
        |   //   (  /  <{ø}  ||  {ø}>  L  )  //   |
        |   //    L|         )(         |7   //   |
        |   //    (_L_  ____d__b____  _/_)   //   |
        |   //     (  L/  ___7L___  L/  )    //   |
        |   //     (   | /{______}L |   )    //   |
        |   //      (  |/          L|  )     //   |
        |   //     M(       )     )    )M    //   |
        |   //   MWΩΩ( )            3  )ΩΩW  //   |
        |   // cWMWΩΩc(  )    )       )cΩΩMc //   |
        |   // cccMWΩΩc)             )cΩΩccc //   |
        |   // MccWMΩΩΩc(  )     (  )cΩΩΩccW //   |
        |   // WcccWΩΩΩΩc(.)  )   )cΩΩΩΩcccM //   |
        |   // MccccWMΩΩΩcc(.__.)ccΩΩΩMccccW //   |
        |   //                               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽
        
        
        """
    }
    
    
    var wizard2: String { return """
        
        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 2 •     °·. WIZARD .·°              |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                               //   |
        |   //      _-^-¯¯¯v¯¯¯¯¯¯¯-^-_      //   |
        |   //      |        Λ         |     //   |
        |   //      |      <(@)>       |     //   |
        |   //      |       |X|        |     //   |
        |   //      |      <(@)>       |     //   |
        |   //      |        V         |     //   |
        |   //      |                  |     //   |
        |   //    ╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮   //   |
        |   //   ╭╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╮  //   |
        |   //   |╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮╭╮|  //   |
        |   //   ╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯╰╯  //   |
        |   //   ∫ _| -¯¯¯-     -¯¯¯-  |_ L  //   |
        |   //  ∫ ( / <(•)>  |  <(•)>  L ) L //   |
        |   // ∫  L|         |         |7  L //   |
        |   //∫   (_L      o( )o       /_)  L//   |
        |   //   ∫  |        ¯        |    L //   |
        |   //  ∫  ∫ L   -<¯¯°¯¯>-   /   L L //   |
        |   // ∫  ∫   L    ¯---¯     /  L  L //   |
        |   // ∫   c.)|L            /|(.c   L//   |
        |   //   cQ(.)| ¯-__   __-¯ |(.)Qc   //   |
        |   // cQQ(.)/      ¯¯¯     L(.)QQc  //   |
        |   // QQ(.)(.)√           √(.)(.)QQ //   |
        |   // QQQ(m)(.)√√√√√√√√√√√(.)(m)QQQ //   |
        |   // QQQQ(a)(.)(.)(.)(.)(.)(a)QQQQ //   |
        |   // QQQQQ(e)(l)(i)(i)(l)(e)QQQQQQ //   |
        |   //                               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽
        
        
        """
    }
    
    
    var wizard3: String { return """
        
        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 3 •     °·. WIZARD .·°              |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                   __          //   |
        |   //            _--^¯¯¯  ¯¯¯¯-_    //   |
        |   //        _-¯¯               L   //   |
        |   //       ∫                    L  //   |
        |   //      /                 /¯·_·  //   |
        |   //     /                  L      //   |
        |   //     L__–-··¯¯¯¯¯¯¯··–-__L     //   |
        |   //     /        <∆∆>       /     //   |
        |   //    _|__–-··¯¯¯¯¯¯¯··–-__|_    //   |
        |   //--¯¯                       ¯¯--//   |
        |   //   ____–--··¯¯¯¯¯¯¯··–--_____  //   |
        |   // -¯| L|  <(•)> )( <(•)>  |/ |¯-//   |
        |   //__ ( ~|     -¯ || ¯-     |~ ) _//   |
        |   //  ¯¯[ |      C(  )D      | ]¯¯ //   |
        |   //    (_L        )(        /_)   //   |
        |   //      /L    (==—--==)   /L     //   |
        |   //     (  L   { L||/ }   /  )    //   |
        |   //     (   L_{        } /   )    //   |
        |   //    W(  )                 )W   //   |
        |   //  WWW(         )     )    )WWW //   |
        |   // WWWW(             3      )WWW //   |
        |   // WWWW(     )              )WWW //   |
        |   // WWWW)                    )WWW //   |
        |   // WWWWW(  (           (   )WWWW //   |
        |   // WWWWWW(.   )  )        )WWWWW //   |
        |   // WWWWWWWW¯-¯(._ ___)-¯¯WWWWWWW //   |
        |   //               ¯               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽
        
        
        """
    }
    
    
    
    var warrior1: String { return """

        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 1 •     °·. WARRIOR .·°             |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                               //   |
        |   //              _:-·_ _          //   |
        |   //        _.·-⁄¨     Y L._       //   |
        |   //      _/  _.–––√·–––__  L_     //   |
        |   //     | _/             L  /.    //   |
        |   //    | _/               L  |    //   |
        |   //    | |                 | |­­    //   |
        |   //    | |                 | |­­    //   |
        |   //   |L | .-==-’   ’-==-. | /­­|   //   |
        |   //   | L| <(•)> | | <(•)> |/ |   //   |
        |   //   ( ~|   ¯¯   |   ¯¯   |~ )   //   |
        |   //    [ |       | |       | ]    //   |
        |   //    (_|      <___>      |_)    //   |
        |   //      |                 |      //   |
        |   //      |    (==—--==)    |      //   |
        |   //      L                 /      //   |
        |   //       L_      _      _/       //   |
        |   //        |L___(_¡­­_)___/|        //   |
        |   //        |             |        //   |
        |   //    _.–-|             |-–._    //   |
        |   // ||||L¨¯’-  L     ∫   ‘¯¨/|||| //   |
        |   // |||||ddd  -·L   ∫·—  bbb||||| //   |
        |   // ||||||dd'~-.__||__.—~'bb||||| //   |
        |   // |||||||dddddddHbbbbbbb||||||| //   |
        |   // ||||||||hoanidHbinaoh|||||||| //   |
        |   // |||||||||||dddHbbb||||||||||| //   |
        |   //                               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽


        """
    }


    var warrior2: String { return """

        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 2 •     °·. WARRIOR .·°             |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                               //   |
        |   //              __,-·__          //   |
        |   //        _.·-⁄¨  |    L¡_       //   |
        |   //      _/ ,,    /    ,,  L_     //   |
        |   //     | _/  ^√–√·–√T/  L   L    //   |
        |   //    | _/               L   |   //   |
        |   //   |  |          X      |  |­­   //   |
        |   //   |  |           X     |  |­­   //   |
        |   //    | | .-==-’   ’-==-. | |­­    //   |
        |   //    |_| <(•)> | | ≤––≥  |_|    //   |
        |   //   ( ~|   ¯¯  | |    X  |~ )   //   |
        |   //   { 5|       | |     X |Z }   //   |
        |   //    (_|      d___b      |_)    //   |
        |   //   _| |   _-––-ı∫---_   | |_   //   |
        |   //   |  |  <____-°-____>  |   |  //   |
        |   //  _|  L    L I.—.I /    /   |  //   |
        |   //  |    L_   L     /   _/   /   //   |
        |   //  |     |L___L_ _/___/|   |    //   |
        |   //   L    |      V      |   L    //   |
        |   //    L.–-|             |-–._|   //   |
        |   // TTWWL¨¯’-  L     ∫   ‘¯¨/WWTT //   |
        |   // TTWWWWA   -·L   ∫·—   AWWWWTT //   |
        |   // TTWWWWWA'~-.__||__.—~'AWWWWTT //   |
        |   // TTTTWWWWWWWA     AWWWWWWWTTTT //   |
        |   // TTTTTTWWWWWWA   AWWWWWWTTTTTT //   |
        |   // TTTTTTTTWWWWWAVAWWWWWTTTTTTTT //   |
        |   //                               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽


        """
    }

    var warrior3: String { return """
        
        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 3 •     °·. WARRIOR .·°             |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                               //   |
        |   //      _.·-⁄¨YU°-_M_i-·__       //   |
        |   //     /                  :_     //   |
        |   //   _/  _.–––,,––__        L_   //   |
        |   //  |    _/   √ ||   L  /.    |­­  //   |
        |   // |   _/       //     L  |   |­­  //   |
        |   // |   |        √         |   |­­  //   |
        |   // L,, |                   | |­­   //   |
        |   //  | | .-===-’    "-===-.  | |­­  //   |
        |   //  |_|  <(•)>  ) (  <(•)>  |_|  //   |
        |   // (  |    ¯¯   ( )   ¯¯    |~ ) //   |
        |   // ( ¶|         ) (         |¶ ) //   |
        |   //  L |L       <___>       /| /  //   |
        |   //   ~| L                 / |~   //   |
        |   //    L       __—--__       /    //   |
        |   //     L     (__—--__)     /     //   |
        |   //      L_     _---_     _/      //   |
        |   //       |L_           _/|       //   |
        |   //       |  °L___¡­­___/°  |       //   |
        |   //   _.–-|               |-–._   //   |
        |   // OOOOL¨¯’-  L     ∫   ‘¯¨/OOOO //   |
        |   // OOOOOXX   -·L   ∫·—    XOOOOO //   |
        |   // OOOOOOXX'~-.__||__.—~'XXOOOOO //   |
        |   // OOOOOOOXXXXXXX+XXXXXXXXOOOOOO //   |
        |   // OOOOOO+++++++++++++++++OOOOOO //   |
        |   // OOOO+++++OOOOOOOOOOO+++++OOOO //   |
        |   //                               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽


        """
    }

    var dwarf1: String { return """
        
        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 1 •     °·. DWARF .·°               |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                               //   |
        |   //       __––––]¯¯¯[––––__       //   |
        |   //     _/      |   |      L_     //   |
        |   //    /        L   /        L    //   |
        |   //   /L         ¯¯¯         /L   //   |
        |   //  |  L__----__   ___---__/  |  //   |
        |   //  |  .______  ¯¯¯ _______.  |  //   |
        |   //  / /¯      ¯L   /       ¯L L  //   |
        |   // | |         |___|         | | //   |
        |   // | | ««~“““-_ | | _-““““”~ | | //   |
        |   // L |   <(•)>  ( )  <(•)>   | / //   |
        |   //  |L          / L         / |  //   |
        |   //  | |       C(   )D       | |  //   |
        |   //  |_/¯¯-<§§§§>-_-<§§§§>-¯¯L_|  //   |
        |   //  /  (   _L_ ·___· _/_   )  L  //   |
        |   // G| (  /¯   L_/ L_/   ¯L  ) |G //   |
        |   // G/ //¯     /     L     L | LG //   |
        |   // /  v       |     |      v   L //   |
        |   // |  Ω        L   /       Ω   | //   |
        |   // |  V         ===        V   | //   |
        |   // L            |||            √ //   |
        |   // GL√          Ω Ω           /G //   |
        |   // GGL√         V V          √GG //   |
        |   // GGGL                     /GGG //   |
        |   // GGGGG-√__           __√-GGGGG //   |
        |   // GGGGGGGGGGG√--√---GGGGGGGGGGG //   |
        |   //                               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽


        """
    }

    var dwarf2: String { return """
        
        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 2 •     °·. DWARF .·°               |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //                               //   |
        |   //           _––¯¯√––_           //   |
        |   //          L       / /          //   |
        |   //           L     / /           //   |
        |   //            L     /            //   |
        |   //        __–––L   /–––__        //   |
        |   //      _/      L√/      L_      //   |
        |   //     /                   L     //   |
        |   //    /                     L    //   |
        |   //   |L            ᚐᚐᚋᚋᚋᚋᚐᚐᚐ   /|   //   |
        |   //  |  L                   /  |  //   |
        |   //  |_/¯                   ¯L_|  //   |
        |   // (  L _««““«« L|/ »»““»»_  / ) //   |
        |   //  L |  <(•)>  ( )  <(•)>   | / //   |
        |   //  ( ß_  ¯¯¯   | |   ¯¯¯   _ß ) //   |
        |   //   ╰╯  ¯-_  C(¯ ¯)D    _-¯ ╰╯  //   |
        |   //    | _««<““°¯L¯/¯°““>»»_  |   //   |
        |   //    |/         |         ¯L|   //   |
        |   //    /   ««°°«°¯ ¯°»°°»    L    //   |
        |   //__–-L  /    “┉___┉“   L   /–-__//   |
        |   //    L  [    √         ]  /     //   |
        |   //    ⊂ↂ⊃              ⊂ↂ⊃     //   |
        |   //     ( )L        √    /( )     //   |
        |   //      ψ  )           /  ψ      //   |
        |   //____      L√       √      _____//   |
        |   //    ¯¯¯¯––_√ψ_  ψ√__––¯¯¯¯     //   |
        |   //              ¯√               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽
         

        """
    }

    var dwarf3: String { return """
        
        ⌽—————————————————————————————————————————⌽
        |   _____                                 |
        |   • 3 •     °·. DWARF .·°               |
        |   ¯¯¯¯¯                                 |
        |   ///////////////////////////////////   |
        |   //               _               //   |
        |   //      ______-¯¯ ¯¯-______      //   |
        |   //     / _-¯¯   <=>   ¯¯-_ L     //   |
        |   //    /          _          L    //   |
        |   //   /    <>   <¯ ¯>   <>    L   //   |
        |   //  /           ¯V¯           L  //   |
        |   // |   _-¯¯¯¯-__   __-¯¯¯¯-_   | //   |
        |   // |  /         ¯¯¯         L  | //   |
        |   // | | ~xXXXx-_|_|_|_-xXXXx~ | | //   |
        |   // | |   ≤{•}≥  ( )  ≤{•}≥   | | //   |
        |   // | |    ¯¯¯   | |   ¯¯¯    | | //   |
        |   // L L         /   L        / /  //   |
        |   //  |_|   ___C(     )D___   |_|  //   |
        |   //   |_-¯¯     ¯---¯     ¯¯-_|   //   |
        |   //   /        ___/L__        L   //   |
        |   // s/___---¯¯¯¯-___-¯¯¯¯---___LS //   |
        |   // SsS/         / L         LsSs //   |
        |   // sS/         /   L         LsS //   |
        |   // Ss|        /     L         |s //   |
        |   // s/        /(-___-)L        LS //   |
        |   // S|      /¯sS•ↂ•sSs¯L      |s //   |
        |   // sSL   /¯sSs/     LSsS¯L   /sS //   |
        |   // Ss| /¯SsSsS|     |sSsSs¯L |Ss //   |
        |   // ·Ss√sSs·sSsSL   /sSs·sSsS√Ss· //   |
        |   // ···sSs···sSs•ↂ•sSs···sSsS··· //   |
        |   // ···SsS···SsSsS√sSsS···SsSs··· //   |
        |   //                               //   |
        |   ///////////////////////////////////   |
        |                                         |
        |   NAME : \(nameModifiedForCard)|
        |                                         |
        |   Life \(lifepointModifiedForCard)  .·° Heal \(healModifiedForCard) °·.  Power \(powerModifiedForCard)   |
        |                                         |
        ⌽—————————————————————————————————————————⌽


        """
    }

    let dead = """

        ⌽—————————————————————————————————————————⌽
        | ⌽ DEAD -- DEAD -- DEAD -- DEAD --DEAD ⌽ |
        |  –⌽–––––––––––––––––––––––––––––––––⌽–  |
        | ⌽ | º°·.·°ºoº°·.·°ºoº°·.·°ºoº°·.·°º | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩ   ΩΩ Ω ΩΩ   ΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩ ΩΩΩ Ω ΩΩ ΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩ ΩΩΩ   ΩΩ  ΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩ ΩΩΩ Ω ΩΩ ΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩ ΩΩΩ Ω ΩΩ   ΩΩΩΩΩΩ··• | ⌽ |
        | • | •··ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• | • |
        | • | •··ΩΩΩΩΩΩΩΩ         ΩΩΩΩΩΩΩΩ··• | • |
        | · | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• | · |
        | · | •··ΩΩΩΩΩΩΩΩ  ΩΩΩ    ΩΩΩΩΩΩΩΩ··• | · |
        |   | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩ  ΩΩΩΩΩΩΩΩ··• |   |
        |   | •··ΩΩΩΩΩΩΩΩ         ΩΩΩΩΩΩΩΩ··• |   |
        |   | •··ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• |   |
        | D | •··ΩΩΩΩΩΩΩΩΩ       ΩΩΩΩΩΩΩΩΩ··• | D |
        | E | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩ  ΩΩΩΩΩΩΩΩ··• | E |
        | A | •··ΩΩΩΩΩΩΩΩ         ΩΩΩΩΩΩΩΩ··• | A |
        | D | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩ  ΩΩΩΩΩΩΩΩ··• | D |
        |   | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩ  ΩΩΩΩΩΩΩΩ··• |   |
        |   | •··ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• |   |
        |   | •··ΩΩΩΩΩΩΩΩ   ΩΩΩ   ΩΩΩΩΩΩΩΩ··• |   |
        | · | •··ΩΩΩΩΩΩΩΩ    Ω    ΩΩΩΩΩΩΩΩ··• | · |
        | · | •··ΩΩΩΩΩΩΩΩ  Ω   Ω  ΩΩΩΩΩΩΩΩ··• | · |
        | • | •··ΩΩΩΩΩΩΩΩ  ΩΩ ΩΩ  ΩΩΩΩΩΩΩΩ··• | • |
        | • | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩ  ΩΩΩΩΩΩΩΩ··• | • |
        | ⌽ | •··ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩΩ         ΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩΩ     ΩΩΩΩΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩΩ  ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩΩ         ΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | •··ΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ··• | ⌽ |
        | ⌽ | º°·.·°ºoº°·.·°ºoº°·.·°ºoº°·.·°º | ⌽ |
        |  –⌽–––––––––––––––––––––––––––––––––⌽–  |
        | ⌽ DEAD -- DEAD -- DEAD -- DEAD --DEAD ⌽ |
        ⌽—————————————————————————————————————————⌽


        """
    
    
   
        // function who split the lines of each card and reassembles the 3 cards side by side
    func putTheCardsSideBySide(fighter1 card1: String, fighter2 card2: String, fighter3 card3: String) {
        
            // we split the line after the newline
        let arraycard1 = card1.split(separator: "\n")
        let arraycard2 = card2.split(separator: "\n")
        let arraycard3 = card3.split(separator: "\n")
        
            // that reassembles in 3 columns
        for i in 0..<arraycard1.count {
            print("\(arraycard1[i])        \(arraycard2[i])        \(arraycard3[i])")
        }
    }
    
}
