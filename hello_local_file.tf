resource "local_file" "content_file" {
    content = "add content here to appear in content_file.txt"
    filename = "${path.module}/content_file.txt"
}

