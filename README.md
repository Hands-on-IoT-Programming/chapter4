# chapter4
Code samples for Chapter 4 Data processing with NodeRED: Docker version

This repository is part of the book [Learn IoT Programming Using NodeRED](https://www.amazon.com/dp/B09RQRRMQG).

This is the Docker implementation that builds on top of the host version that you can find in the `master` branch.
Refer to that branch in case you want to follow the exact example that is covered in the book.

## How to run the app with Docker
Build the Docker image:
>`docker build -t learn_nodered_chapter4 .`

Run the app for testing:
>`docker run --rm -p 1880:1880 learn_nodered_chapter4`

Run the app in production:
>`docker run --restart always -p 1880:1880 --name nodered4 learn_nodered_chapter4 `