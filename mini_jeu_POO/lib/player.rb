

class Player

	attr_accessor :name, :life_points, :weapon_level

	def initialize(name,life_points)
		@name = name
		@life_points = 10
	end
	
	def show_state ()
		show_state = "#{name} a #{@life_points} points de vie"
	end
		
	def gets_damage(damage)
		@life_points = @life_points - damage
		if @life_points <= 0 
		puts "Le joueur #{name} a été tué !!!"
		end
	end
	
	def attacks
		puts "voici l'état de chaque combattant !!"
		puts "#{player1.name} et #{player2.name} possèdent chacun #{@life_points}" 
		compute_damage = rand(1..6)
		
		puts "le joueur #{player1.name} attaque le joueur #{player2.name}"
		player2.gets_damage(compute_damage)
		puts "il lui inflige #{compute_damage} points de domages"
		
		puts "le joueur #{player2.name} attaque le joueur #{player1.name}"
		player1.gets_damage(compute_damage)
		puts "il lui inflige #{compute_damage} points de domages"
		
		while player1.gets_damage > 0 && player2.gets_damage > 0
			puts"Le combat est chaud"
			if player1.gets_damage == 0 || player2.gets_damage == 0
				break
			end
		end
	end 
	
	def compute_damage
		return rand(1..6)
	end
end


class HumanPlayer

	def initialize(name)
		@name = name
		@life_points = 100
		@weapon_level = 1
	end
	
	def show_state ()
		show_state = "#{name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
	end
	
	def compute_damage
    rand(1..6) * @weapon_level
  end
  
  def search_weapon
  	rand(1..6) == @weapon_level_new 
  	puts "Bravo! tu as trouvé une arme de niveau #{@weapon_level_new}"
  	
  	if @weapon_level_new > @weapon_level 
  	then @weapon_level = @weapon_level_new
  	puts "Youhou ! elle est meilleure que ton arme actuelle:tu la prends"
  	else @weapon_level_new <= @weapon_level
  	puts "M@*#$...elle n'est pas mieux que ton arme actuelle"
  end
  
  def search_health_pack
  	search_health = rand(1..6)
  	if search_health == 1
  	puts "Tu n'as rien trouvé"
  	elsif search_health == (2..5)
  	@life_point += 50 until @life_point == 100 break
  	puts "Bravo, tu as trouvé un pack de +50 points de vie!"
  
  end
end


