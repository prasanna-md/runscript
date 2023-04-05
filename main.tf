terraform {
  required_providers {
    google = {
        source  = "registry.terraform.io/hashicorp/google"
        version = "4.54.0"
    }
  }
}

provider "google" {
        project     = "engineteam-1680241624433"
        region      = "us-central-1"
        credentials = file("/workspace/terraform/auth.json")
}

resource "google_compute_instance" "terraformvm" {
  name         = "terraformvm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  #tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  // Local SSD disk
#   scratch_disk {
#     interface = "SCSI"
#   }

  network_interface {
    network = "default"
  }

#   metadata = {
#     foo = "bar"
#   }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "cleanupserviceaccount@prasannamd.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

resource "google_compute_instance" "instance-2" {
  name         = "instance-2"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  #tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  // Local SSD disk
#   scratch_disk {
#     interface = "SCSI"
#   }

  network_interface {
    network = "default"
  }

#   metadata = {
#     foo = "bar"
#   }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "cleanupserviceaccount@prasannamd.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

resource "google_compute_instance" "instance-3" {
  name         = "instance-3"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  #tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  // Local SSD disk
#   scratch_disk {
#     interface = "SCSI"
#   }

  network_interface {
    network = "default"
  }

#   metadata = {
#     foo = "bar"
#   }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "cleanupserviceaccount@prasannamd.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

