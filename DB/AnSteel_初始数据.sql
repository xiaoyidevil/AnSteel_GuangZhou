--初始数据

USE [AnSteel]
GO
SET IDENTITY_INSERT [dbo].[Dict] ON 
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (1, N'MenuAssort', N'系统管理', N'system', N'功能模块', 1, 1, CAST(N'2021-11-16T10:42:46.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (2, N'EntryGate', N'南门', N'1', N'入厂大门', 1, 1, CAST(N'2021-11-16T10:42:46.810' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (3, N'EntryGate', N'东门', N'2', N'入厂大门', 1, 1, CAST(N'2021-11-16T10:42:46.817' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (4, N'EntryGate', N'光亮大门', N'3', N'入厂大门', 1, 1, CAST(N'2021-11-16T10:42:46.827' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (5, N'EntryType', N'货运入厂（需过磅）', N'0', N'入厂类型', 1, 1, CAST(N'2021-11-16T10:42:46.847' AS DateTime), 4, CAST(N'2022-03-09T17:16:53.307' AS DateTime))
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (6, N'EntryType', N'访客', N'1', N'入厂类型', 1, 1, CAST(N'2021-11-16T10:42:46.857' AS DateTime), 4, CAST(N'2022-03-09T17:16:58.650' AS DateTime))
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (7, N'MenuAssort', N'人脸识别', N'facerecognition', N'功能模块', 1, 1, CAST(N'2021-11-16T10:42:46.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (8, N'WeighbridgeLocation', N'本部', N'0', N'地磅位置', 1, 1, CAST(N'2021-11-16T10:42:46.890' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (9, N'WeighbridgeLocation', N'光亮部', N'1', N'地磅位置', 1, 1, CAST(N'2021-11-16T10:42:46.900' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (10, N'WeighEquipmentType', N'视频监控设备', N'0', N'地磅设备类型', 1, 1, CAST(N'2021-11-16T10:42:46.910' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (11, N'WeighEquipmentType', N'PLC', N'1', N'地磅设备类型', 1, 1, CAST(N'2021-11-16T10:42:46.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (12, N'WeighEquipmentType', N'辐射仪', N'2', N'地磅设备类型', 1, 1, CAST(N'2021-11-16T10:42:46.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (13, N'MenuAssort', N'车牌识别', N'carnorecognition', N'功能模块', 1, 1, CAST(N'2021-11-16T10:42:46.933' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (14, N'LaneType', N'访客车道', N'1', N'车道类型', 1, 1, CAST(N'2021-11-16T10:42:46.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (15, N'LaneType', N'收运车道', N'2', N'车道类型', 1, 1, CAST(N'2021-11-16T10:42:46.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (16, N'LaneType', N'混合车道', N'3', N'车道类型', 1, 1, CAST(N'2021-11-16T10:42:46.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (17, N'LaneDirection', N'只进', N'1', N'车道方向', 1, 1, CAST(N'2021-11-16T10:42:46.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (18, N'LaneDirection', N'只出', N'2', N'车道方向', 1, 1, CAST(N'2021-11-16T10:42:46.977' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (19, N'LaneDirection', N'可进可出', N'3', N'车道方向', 1, 1, CAST(N'2021-11-16T10:42:46.983' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (20, N'LaneEquipmentType', N'车牌识别设备', N'1', N'车道设备类型', 1, 1, CAST(N'2021-11-16T10:42:46.993' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (21, N'LaneEquipmentType', N'人脸识别设备', N'2', N'车道设备类型', 1, 1, CAST(N'2021-11-16T10:42:47.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (22, N'LaneEquipmentType', N'视频监控设备', N'3', N'车道设备类型', 1, 1, CAST(N'2021-11-16T10:42:47.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (23, N'LaneEquipmentType', N'门禁PLC', N'4', N'车道设备类型', 1, 1, CAST(N'2021-11-16T10:42:47.017' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (24, N'MenuAssort', N'参数配置', N'parametersetting', N'功能模块', 1, 1, CAST(N'2021-11-16T10:42:47.027' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (25, N'MenuAssort', N'无人值守称重', N'unattendedweighing', N'功能模块', 1, 1, CAST(N'2021-11-16T10:42:47.053' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (26, N'WechatUserType', N'内部', N'0', N'人员类型', 1, 1, CAST(N'2021-11-16T10:42:47.063' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (27, N'WechatUserType', N'外部', N'1', N'人员类型', 1, 1, CAST(N'2021-11-16T10:42:47.070' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (28, N'SerialPort', N'COM1', N'COM1', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (29, N'SerialPort', N'COM2', N'COM2', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.913' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (30, N'SerialPort', N'COM3', N'COM3', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (31, N'SerialPort', N'COM4', N'COM4', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (32, N'SerialPort', N'COM5', N'COM5', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.937' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (33, N'SerialPort', N'COM6', N'COM6', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.947' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (34, N'SerialPort', N'COM7', N'COM7', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.953' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (35, N'SerialPort', N'COM8', N'COM8', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.963' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (36, N'SerialPort', N'COM9', N'COM9', N'串口', 1, 1, CAST(N'2021-11-21T11:43:39.970' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (37, N'BaudRate', N'300', N'3001', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:39.980' AS DateTime), 4, CAST(N'2022-06-15T10:11:19.447' AS DateTime))
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (38, N'BaudRate', N'600', N'600', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:39.987' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (39, N'BaudRate', N'1200', N'1200', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:39.997' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (40, N'BaudRate', N'2400', N'2400', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:40.003' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (41, N'BaudRate', N'4800', N'4800', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:40.013' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (42, N'BaudRate', N'9600', N'9600', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:40.020' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (43, N'BaudRate', N'14400', N'14400', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:40.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (44, N'BaudRate', N'19200', N'19200', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:40.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (45, N'BaudRate', N'38400', N'38200', N'波特率', 1, 1, CAST(N'2021-11-21T11:43:40.047' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (46, N'DataBit', N'7', N'7', N'数据位', 1, 1, CAST(N'2021-11-21T11:43:40.053' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (47, N'DataBit', N'8', N'8', N'数据位', 1, 1, CAST(N'2021-11-21T11:43:40.063' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (48, N'Checks', N'None', N'0', N'校验', 1, 1, CAST(N'2021-11-21T11:43:40.070' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (49, N'Checks', N'Old', N'1', N'校验', 1, 1, CAST(N'2021-11-21T11:43:40.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (50, N'Checks', N'Even', N'2', N'校验', 1, 1, CAST(N'2021-11-21T11:43:40.087' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (52, N'EntryType', N'送货、施工、维修及其他', N'2', N'入厂类型', 1, 1, CAST(N'2022-03-16T17:21:14.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (53, N'EntryGate', N'西门', N'4', N'入厂大门', 1, 1, CAST(N'2022-03-16T17:21:14.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (54, N'EntryGate', N'东门及光亮', N'5', N'入厂大门', 1, 1, CAST(N'2022-03-16T17:21:14.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (55, N'EntryGate', N'南门及光亮', N'6', N'入厂大门', 1, 1, CAST(N'2022-03-16T17:21:14.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Dict] ([Id], [DictType], [DictText], [DictValue], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (56, N'MenuAssort', N'考勤查询统计', N'dockingAttendance', N'功能模块', 1, 4, CAST(N'2022-05-07T12:25:12.073' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Dict] OFF
GO
SET IDENTITY_INSERT [dbo].[Functions] ON 
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (1, N'用户管理', N'/pages/system/systemuser', N'系统管理', N'system', 1, 1, NULL, 11001, 1, CAST(N'2021-11-16T10:42:47.090' AS DateTime), 4, CAST(N'2022-06-14T11:26:30.073' AS DateTime), 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (2, N'角色管理', N'/pages/system/role', N'系统管理', N'system', 1, 1, NULL, 11003, 1, CAST(N'2021-11-16T10:42:47.097' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (3, N'功能管理', N'/pages/system/function', N'系统管理', N'system', 1, 1, NULL, 11007, 1, CAST(N'2021-11-16T10:42:47.103' AS DateTime), 4, CAST(N'2022-06-14T10:17:38.253' AS DateTime), 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (4, N'日志管理', N'/pages/system/log', N'系统管理', N'system', 1, 1, NULL, 11009, 1, CAST(N'2021-11-16T10:42:47.113' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (5, N'修改密码', N'/pages/system/updatepassword', N'系统管理', N'system', 1, 1, NULL, 11011, 1, CAST(N'2021-11-16T10:42:47.140' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (6, N'数据字典', N'/pages/system/dict', N'系统管理', N'system', 1, 1, N'', 7008, 1, CAST(N'2021-11-16T10:42:47.150' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (7, N'小程序权限', N'/pages/system/wechatpermissions', N'系统管理', N'system', 1, 1, N'', 11012, 1, CAST(N'2021-11-16T10:42:47.160' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (8, N'设备管理', N'/pages/facerecognitionmanagement/faceequipment', N'人脸识别', N'facerecognition', 1, 1, N'', 20001, 1, CAST(N'2021-11-16T10:42:47.167' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (9, N'微信用户管理', N'/pages/facerecognitionmanagement/wechatuser', N'人脸识别', N'facerecognition', 1, 1, N'', 20002, 1, CAST(N'2021-11-16T10:42:47.177' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (10, N'记录查询', N'/pages/facerecognitionmanagement/accesscontrolrecord', N'人脸识别', N'facerecognition', 1, 1, N'', 20004, 1, CAST(N'2021-11-16T10:42:47.183' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (11, N'车道管理', N'/pages/carnorecognitionmanagement/lanemanagement', N'车牌识别', N'carnorecognition', 1, 1, N'', 30001, 1, CAST(N'2021-11-16T10:42:47.190' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (12, N'人脸库管理', N'/pages/facerecognitionmanagement/facelibrary', N'人脸识别', N'facerecognition', 1, 1, N'', 20003, 1, CAST(N'2021-11-16T10:42:47.200' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (13, N'地磅管理', N'/pages/unattendedweighingmanagement/weighbridgemanagement', N'无人值守称重', N'unattendedweighing', 1, 1, N'', 40001, 1, CAST(N'2021-11-16T10:42:47.210' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (14, N'过磅设置', N'/pages/parametersettingmanagement/weighingsetting', N'参数配置', N'parametersetting', 1, 1, N'', 50002, 1, CAST(N'2021-11-16T10:42:47.217' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (15, N'入厂时段设置', N'/pages/parametersettingmanagement/admittancesetting', N'参数配置', N'parametersetting', 1, 1, N'', 50003, 1, CAST(N'2021-11-16T10:42:47.227' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (16, N'打印机', N'/pages/unattendedweighingmanagement/printermanagement', N'无人值守称重', N'unattendedweighing', 1, 1, N'', 40002, 1, CAST(N'2021-11-16T10:42:47.257' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (17, N'企业号权限', N'/pages/systemmanger/enterprisewechat', N'系统管理', N'system', 1, 1, N'', 11013, 1, CAST(N'2021-11-16T10:42:47.263' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (18, N'报表查询', N'/pages/unattendedweighingmanagement/reportquery', N'无人值守称重', N'unattendedweighing', 1, 1, N'', 40003, 1, CAST(N'2021-11-16T10:42:47.270' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (19, N'黑名单设置', N'/pages/carnorecognitionmanagement/laneblacklist', N'车牌识别', N'carnorecognition', 1, 1, N'', 30002, 1, CAST(N'2021-11-16T10:42:47.280' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (20, N'白名单设置', N'/pages/carnorecognitionmanagement/lanewhitelist', N'车牌识别', N'carnorecognition', 1, 1, N'', 30003, 1, CAST(N'2021-11-16T10:42:47.290' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (21, N'过磅资料修改', N'/pages/unattendedweighingmanagement/weighingdatamodification', N'无人值守称重', N'unattendedweighing', 1, 1, N'', 40004, 1, CAST(N'2021-11-16T10:42:47.297' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (22, N'司磅中心', N'/pages/unattendedweighingmanagement/squadcenter', N'无人值守称重', N'unattendedweighing', 1, 1, N'', 40005, 1, CAST(N'2021-11-16T10:42:47.307' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (23, N'参数设置', N'/pages/parametersettingmanagement/parametersetting', N'参数配置', N'parametersetting', 1, 1, N'', 50004, 1, CAST(N'2021-11-16T10:42:47.313' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (24, N'Web账号设置', N'/pages/parametersettingmanagement/webaccountconfig', N'参数配置', N'parametersetting', 1, 1, N'', 50005, 1, CAST(N'2021-11-16T10:42:47.320' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (25, N'记录查询', N'/pages/carnorecognitionmanagement/lanerecord', N'车牌识别', N'carnorecognition', 1, 1, N'', 30004, 1, CAST(N'2021-11-16T10:42:47.330' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (26, N'公司设置', N'/pages/parametersettingmanagement/companysetting', N'参数配置', N'parametersetting', 1, 1, N'', 50001, 1, CAST(N'2021-11-16T10:42:47.340' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (27, N'入厂申请查询', N'/pages/carnorecognitionmanagement/entryapplication', N'车牌识别', N'carnorecognition', 1, 1, N'', 30005, 1, CAST(N'2022-01-06T13:42:23.993' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (28, N'人员白名单', N'/pages/facerecognitionmanagement/userwhitelist', N'人脸识别', N'facerecognition', 1, 1, N'', 20005, 1, CAST(N'2022-03-16T15:27:36.140' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (29, N'过辐射物料管理', N'/pages/unattendedweighingmanagement/radiationproduct', N'无人值守称重', N'unattendedweighing', 1, 1, N'', 40006, 1, CAST(N'2022-03-16T15:27:36.157' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (30, N'考勤记录', N'/pages/dockingattendance/attendancerecord', N'考勤查询统计', N'attendancerecord', 1, 1, N'', 60001, 4, CAST(N'2022-04-29T10:28:46.320' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Functions] ([Id], [FunctionName], [FunctionPath], [ModuleName], [ModulePath], [Status], [ShowInMenu], [Remark], [Sequence], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [Enabled]) VALUES (31, N'操作日志', N'/pages/system/operationlog', N'系统管理', N'system', 1, 1, N'', 11014, 4, CAST(N'2022-06-14T14:42:00.603' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Functions] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Enabled], [Remark], [Status], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime]) VALUES (1, N'系统管理员', 1, N'系统管理员', 1, 1, CAST(N'2021-11-16T10:42:47.360' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemUsers] ON 
GO
INSERT [dbo].[SystemUsers] ([Id], [LoginName], [UserName], [Telephone], [Password], [RoleId], [LastIp], [LastLoginTime], [Enabled], [ErrorCount], [Remark], [AuthenticationToken], [UserInformationExpriedInSeconds], [CreatedUserId], [CreatedTime], [LastModifiedUserId], [LastModifiedTime], [WeixinOpenOpenId], [WeixinOpenUnionId], [WeixinWorkOpenId], [WeixinWorkUnionId], [IdCardNumber]) VALUES (1, N'sys', N'管理员', N'13905849985', N'02D8A14FA1ADD6C5', 1, N'192.168.110.241', CAST(N'2022-05-07T12:23:58.970' AS DateTime), 1, 0, NULL, N'9r956LzFqRaodRhToRaYoFNqdIK8TsSnAVg+rYZ7D4I=', 300000, 1, CAST(N'2021-11-16T10:42:47.350' AS DateTime), NULL, CAST(N'2022-05-07T12:23:58.970' AS DateTime), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SystemUsers] OFF
GO
