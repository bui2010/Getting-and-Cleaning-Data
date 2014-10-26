features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=F)[,2]
extract.column <- grepl("mean\\(|std\\(",features)

train <- read.table("UCI HAR Dataset/train/X_train.txt")[,extract.column]
test <- read.table("UCI HAR Dataset/test/X_test.txt")[,extract.column]
data <- rbind(train,test)
colnames(data) <- c(features[extract.column])

train.labels <- read.table("UCI HAR Dataset/train/y_train.txt", col.names="Label")
test.labels <- read.table("UCI HAR Dataset/test/y_test.txt", col.names="Label")
labels <- rbind(train.labels,test.labels)

activity <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("Label","Activity"))
label.activity <- merge(labels,activity,"Label",sort=F)
data.merged <- cbind(label.activity$Activity,data)
colnames(data.merged)[1] <- "Activity"

train.subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names="Subject")
test.subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names="Subject")
data.subject <- cbind(rbind(train.subject,test.subject),data.merged)

library(data.table)
averages <- data.table(data.subject)[,lapply(.SD,mean),by="Subject,Activity"]

write.table(averages, file="averages.txt", row.names=FALSE)