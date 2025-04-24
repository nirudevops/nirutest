    package example

    # Rule to check if all EC2 instances have tags
    deny_untagged_instances[reason] if {
        resource_changes := input.resource_changes[_]
        resource_changes.type == "aws_instance"
        resource_changes.change.after.tags == null
        reason := "Instance tag is not provided"
    }
