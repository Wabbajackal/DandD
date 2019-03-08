# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Material.destroy_all
Rarity.destroy_all
Spell.destroy_all
Feat.destroy_all

common = Rarity.create(name: 'Common')
uncommon = Rarity.create(name: 'Uncommon')
rare = Rarity.create(name: 'Rare')
very = Rarity.create(name: 'Very Rare')
extremely = Rarity.create(name: 'Extremely Rare')
legendary = Rarity.create(name: 'Legendary')
mythic = Rarity.create(name: 'Mythic')

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'spells.csv'))
csv = CSV.parse(csv_text, col_sep: ";", :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Spell.new
    t.level = row['Level']
    t.name = row['Name']
    t.school = row['School']
    t.casting_time = row['Casting_Time']
    t.range = row['Range']
    t.ritual = row['Ritual']
    t.concentration = row['Concentration']
    t.duration = row['Duration']
    t.components = row['Components']
    t.materials = row['Materials']
    t.description = row['Description']
    t.classes = row['Classes']
    t.source = row['Source']
    t.save
end

puts "There are now #{Spell.count} rows in the spells table"

mat_text = File.read(Rails.root.join('lib', 'seeds', 'materials.csv'))
mat = CSV.parse(mat_text, col_sep: ";", :headers => true, :encoding => 'ISO-8859-1')
mat.each do |row|
    t = Material.new
    t.name = row['Name']

    case row['Rarity']
    when "common"
        t.rarity = common
    when "uncommon"
        t.rarity = uncommon
    when "rare"
        t.rarity = rare
    when "very"
        t.rarity = very
    when "extremely"
        t.rarity = extremely
    when "legendary"
        t.rarity = legendary
    when "mythic"
        t.rarity = mythic
    end

    t.description = row['Physical Description']
    t.mat_type = row['Type']
    t.durability = row['Durability']
    t.threshold = row['Damage Threshold']
    t.natural = row['Natural Properties']
    t.ammunition = row['Ammunition']
    t.weapon = row['Weapon Properties']
    t.armor = row['Armor Properties']
    t.shield = row['Shield Properties']
    t.published = false
    t.save
end

feat_text = File.read(Rails.root.join('lib', 'seeds', 'feats.csv'))
feats = CSV.parse(feat_text, col_sep: ";", :headers => true, :encoding => 'ISO-8859-1')
feats.each do |row|
    t = Feat.new
    t.name = row['Feat']
    t.source = row['Source']
    t.feat_stats = row['Stat']
    t.feat_type = row['Feat Type']
    t.description = row['Description']
    t.save
end

puts "There are now #{Feat.count} rows in the feats table"