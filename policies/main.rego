    package example

    # Rule to check if all EC2 instances have tags
    deny_untagged_instances {
        resource_change := input.resource_changes[_]
        resource_changes.type == "aws_instance"
        resource_changes.change.after.tags == null
    }
