resource "aws_ecs_task_definition" "task_definition" {
  family = "worker"
  container_definitions = jsonencode([
    {
      name      = "Nginx"
      image     = "nginx:latest"
      cpu       = 10
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}
