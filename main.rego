    package example

    # Rule to check if all EC2 instances have tags
    deny_untagged_instances {
        input.resource_type == "aws_instance" &&
        input.tags == null
    }
