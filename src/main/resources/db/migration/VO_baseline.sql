spring:
  datasource:
    url: jdbc:mysql://localhost:3306/inventory_db?useSSL=false&serverTimezone=UTC
    username: root
    password: root
    driver-class-name: com.mysql.cj.jdbc.Driver

    hikari:
      pool-name: InventoryPool
      maximum-pool-size: 20
      minimum-idle: 5
      idle-timeout: 300000
      max-lifetime: 1800000
      connection-timeout: 30000
      validation-timeout: 5000
      leak-detection-threshold: 60000


 batch:
     jdbc:
       initialize-schema: always
     job:
       enabled: false

 flyway:
     enabled: true
     locations: classpath:db/migration
     baseline-on-migrate: true