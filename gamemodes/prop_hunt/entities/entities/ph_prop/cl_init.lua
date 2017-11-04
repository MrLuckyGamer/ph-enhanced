-- Include needed files
include("shared.lua")

-- Called every frame?
function ENT:Draw(flag)
	self.Entity:DrawModel()
end
