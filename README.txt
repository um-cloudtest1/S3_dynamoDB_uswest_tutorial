https://www.salto.io/blog/tutorial-getting-started-with-terraform
The objective is to create an EC2 instance with the backend state saved in a DynamoDB database stored in an S3 bucket.
Kevin suggested an alternative as https://github.com/miquella/vaulted but this method is more cloud-oriented.   
The folder ../S3_dynamoDB_eucentral_tutorial contians a version for this tutorial with minimal changes.
See the README.txt file in the above-specified folder for the changes.
Note that there is a separate subfolder "state" that creates the S3 bucket.  This must be done before the aws-instance (EC2) is created.
For this version, I changed the region to us-west-1.
Changes made in this folder.
1.  Created a "required providers" block in terraform block of main.tf with version constraint.
2.  Changed all instances of "tfstate" in all files to "umcs".
3.  Changed the resource block in main.tf to specify a t2.micro instance with an ami for the us-west-1 region.
    Changed the name of the aws-instance resource from "this" to "app-server" in main.tf.

Changed lines are appended with "# changed".

https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all  # lists DynamoDB 25 GB as a free tier service
