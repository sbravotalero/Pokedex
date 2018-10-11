# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

def shared_pods
# ObjectMapper
pod 'ObjectMapper'
pod 'AlamofireObjectMapper', '~> 5.0'
end

target 'Pokedex' do
  use_frameworks!
  shared_pods
  # Pods for Pokedex
  target 'PokedexTests' do
    inherit! :search_paths
  end

  target 'PokedexUITests' do
    inherit! :search_paths
  end
end
