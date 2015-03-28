simulateDataScript <- function(size){
        device_data <- c('moto-x', 'iphone-6', 'galaxy s5', 'galaxy note4',
                         'oneplus','s5 active','htc m8', 'lg flex2', 'lumia'
                         , 'xperia z3', 'nexus 6', 'vid infinium',
                         'mm canvas', 'lenovo a', 'blackberry cl')
        city_data <- c('varanasi', 'hyderabad', 'bangalore', 'delhi', 
                       'kathmandu', 'kolkata', 'mumbai', 'chennai', 'lucknow', 
                       'ahmedabad', 'bhopal', 'jaipur', 'chandigarh', 'patna')
        state_data <- c('Uttar Pradesh', 'Madhya Pradesh', 'Karnataka', 
                   'Andhra Pradesh', 'West Bengal', 'Maharashtra', 'Gujrat', 
                   'Tamil Nadu', 'Rajasthan', 'Bihar')
        revenue_data <- c(100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600,
                          650, 700,750, 800, 850, 900)
        source_data <- c('facebook', 'amazon', 'flipkart', 'snapdeal', 'google')
        print(size)
        device <- sample(device_data, size, replace = TRUE)
        quantity <- sample(1:10, size, replace = TRUE)
        city <- sample(city_data, size, replace = TRUE)
        state <- sample(state_data, size, replace = TRUE)
        revenue <- sample(revenue_data, size, replace = TRUE)
        source <- sample(source_data, size, replace = TRUE)
        timestamp <- c()
        for(i in 1:size){
                timestamp <- c(timestamp, format(Sys.time(), "%Y-%m-%d %H:%M:%S"))
        }
        simulated_data <- data.frame(device, quantity, timestamp, city, state, revenue, 
                                     source)
        write.table(simulated_data, file = "workspace/bigdata_exp/cassandra/simulated_data.tsv", quote = FALSE, sep = '\t', append = FALSE)
        rm(simulated_data)
}