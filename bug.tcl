proc read_file {filename} {
  set fp [open $filename r]
  if {$fp == -1} {
    return -1
  }
  set contents [read $fp]
  close $fp
  return $contents
}

set file_contents [read_file "my_file.txt"]
if {$file_contents == -1} {
  puts "Error opening file"
} else {
  puts $file_contents
}

#In this example,the error handling is incomplete. If the file does not exist,the open command returns -1,but there is no explicit check for that error case.