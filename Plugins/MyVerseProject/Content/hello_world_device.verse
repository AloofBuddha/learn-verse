using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }

hello_world_device := class(creative_device):

    # Runs when the device is started in a running game
    OnBegin<override>()<suspends> : void =

        PotionDamageAmount : float = 20.0
        PotionHealAmount : float = 10.0
        var  PlayerHealth : float = 100.0

        PlayerStatusText : string = "Player health now "
        var EffectOnPlayerText: string = "damaged "

        set PlayerHealth = PlayerHealth - PotionDamageAmount
        Print("The Player was {EffectOnPlayerText + ToString(PotionDamageAmount)}")
        Print("{PlayerStatusText + ToString(PlayerHealth)}")

        set PlayerHealth = PlayerHealth + PotionHealAmount
        set EffectOnPlayerText = "healed "
        Print("The Player was {EffectOnPlayerText + ToString(PotionHealAmount)}")
        Print("{PlayerStatusText + ToString(PlayerHealth)}")