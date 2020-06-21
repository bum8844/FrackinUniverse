require '/scripts/power.lua'
require "/scripts/effectUtil.lua"

function update(dt)
  if power.consume(config.getParameter('isn_requiredPower')) then
    animator.setAnimationState("switchState", "on")
    effectUtil.effectAllInRange("regenerationAtmosRegen",500)
  else
	animator.setAnimationState("switchState", "off")
  end
end