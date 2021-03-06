USE [AdoroDB]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616003154_ADORO_MVC.Context.AdoroDatabaseContext', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616012946_Columna.Imagen.Actividad', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616015919_Sala.esid', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616023435_inicial', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622231616_202206222016', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623002547_Migacion1', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623002708_Migracion1', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623003355_Migracion2', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623021717_202206222317', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220629020524_se.agrego.contador', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630015555_usuario.agregado', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630015957_usuario.agregado1', N'3.1.25')
SET IDENTITY_INSERT [dbo].[Actividades] ON 

INSERT [dbo].[Actividades] ([Id], [Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (6, N'Actividad1', 0, CAST(N'2022-06-29T00:10:00.0000000' AS DateTime2), CAST(N'2022-06-29T00:10:00.0000000' AS DateTime2), 3, N'..\Images\origami.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.', 0, 0, 6)
INSERT [dbo].[Actividades] ([Id], [Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (7, N'A2', 0, CAST(N'2022-06-29T20:32:00.0000000' AS DateTime2), CAST(N'2022-06-29T20:32:00.0000000' AS DateTime2), 4, N'fotografia.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 0, 0)
INSERT [dbo].[Actividades] ([Id], [Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (8, N'Actividad copada al aire libre', 0, CAST(N'2022-07-10T14:57:00.0000000' AS DateTime2), CAST(N'2022-07-11T14:57:00.0000000' AS DateTime2), 5, N'..\Images\musica.jpg', N'Es una actividad muy interesante en una sala al aire libre y no se suspende por lluvia.', 2, 2, 0)
INSERT [dbo].[Actividades] ([Id], [Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (9, N'zzz', 0, CAST(N'2022-07-10T19:51:00.0000000' AS DateTime2), CAST(N'2022-07-11T19:51:00.0000000' AS DateTime2), 6, NULL, N'zzzz', 0, 0, 0)
INSERT [dbo].[Actividades] ([Id], [Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (10, N'actividad escasa', 0, CAST(N'2022-07-12T14:24:00.0000000' AS DateTime2), CAST(N'2022-07-12T14:24:00.0000000' AS DateTime2), 8, N'..\Images\origami.jpg', N'act poca', 0, 0, 2)
SET IDENTITY_INSERT [dbo].[Actividades] OFF
SET IDENTITY_INSERT [dbo].[Salas] ON 

INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (3, 20, 0, N'Sala1')
INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (4, 10, 0, N'SAla2')
INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (5, 150, 1, N'Sala mas copada')
INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (6, -9, 0, N'zzz')
INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (7, 0, 0, N'Sala1')
INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (8, 2, 0, N'sala negativa')
SET IDENTITY_INSERT [dbo].[Salas] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (1, N'Admin', N'Admin', N'admin', N'Admin2022!', 0)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (2, N'a', N'a', N'a', N'a', 0)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (3, N'b', N'b', N'a', N'b', 0)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (4, N'd', N'd', N'd', N'd', 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (6, N'Francisco', N'Lavarello', N'flavarello', N'Miclave1!', 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (7, N'zz', N'zz', N'zz', N'Zz12345678!', 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (8, N'q', N'q', N'q', N'q', 0)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
