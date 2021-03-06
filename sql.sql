SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Role](
	[F_Id] [varchar](50) NOT NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_Category] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_OrganizeId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类:1-角色2-岗位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_Category'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_EnCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_FullName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_AllowEdit'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_AllowDelete'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Role'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Organize]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Organize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_ShortName] [varchar](50) NULL,
	[F_CategoryId] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_TelePhone] [varchar](20) NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_Fax] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_AreaId] [varchar](50) NULL,
	[F_Address] [varchar](500) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_ORGANIZE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_ParentId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_Layers'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_EnCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_FullName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_ShortName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_CategoryId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_ManagerId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_TelePhone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_MobilePhone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_WeChat'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_Fax'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_Email'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'归属区域' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_AreaId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_Address'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_AllowEdit'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_AllowDelete'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Organize'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberDistribution]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberDistribution](
	[DistriID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[ParaChild] [int] NULL,
	[IsParent] [varchar](10) NULL,
	[IsChild] [varchar](10) NULL,
	[TreeNum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DistriID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_ModuleFormInstance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_ModuleFormInstance](
	[F_Id] [varchar](50) NOT NULL,
	[F_FormId] [varchar](50) NOT NULL,
	[F_ObjectId] [varchar](50) NULL,
	[F_InstanceJson] [varchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_MODULEFORMINSTANCE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单实例主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN', @level2name=N'F_FormId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN', @level2name=N'F_ObjectId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单实例Json' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN', @level2name=N'F_InstanceJson'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块表单实例' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleFormInstance'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ProductIsSave]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ProductIsSave](
	[IsID] [int] IDENTITY(1,1) NOT NULL,
	[ProdID] [int] NULL,
	[isPostFree] [varchar](10) NULL,
	[isHasReceipt] [varchar](10) NULL,
	[isUnderGuaranty] [varchar](10) NULL,
	[isSupportReplace] [varchar](10) NULL,
	[IsDisCount] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IsID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_ModuleForm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_ModuleForm](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_FormJson] [varchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_MODULEFORM] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_ModuleId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_EnCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_FullName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单控件Json' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_FormJson'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块表单' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleForm'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberAddress]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberAddress](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL CONSTRAINT [DF_sp_MemberAddress_MemberID]  DEFAULT ((0)),
	[Countries] [varchar](50) NULL,
	[SF] [varchar](50) NULL,
	[CS] [varchar](50) NULL,
	[QX] [varchar](50) NULL,
	[Adress] [varchar](150) NULL,
	[ZipCode] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[MobileCode] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[TelCode] [varchar](50) NULL,
	[Tel] [varchar](50) NULL,
	[IsMain] [varchar](10) NULL CONSTRAINT [DF_sp_MemberAddress_IsMain]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认  1:默认 0:不是' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberAddress', @level2type=N'COLUMN', @level2name=N'IsMain'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ProductChannel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ProductChannel](
	[ChannerlID] [int] IDENTITY(1,1) NOT NULL,
	[ProdID] [int] NULL,
	[ShopID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChannerlID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_OrderMemberEval]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_OrderMemberEval](
	[EvalID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL DEFAULT ((0)),
	[OrderNo] [varchar](30) NULL,
	[EvalTime] [datetime] NULL DEFAULT (getdate()),
	[EvalNum] [int] NULL DEFAULT ((0)),
	[MemberID] [int] NULL DEFAULT ((0)),
	[MerchantsID] [int] NULL DEFAULT ((0)),
	[Remark] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[EvalID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_ModuleButton]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_ModuleButton](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_Location] [int] NULL,
	[F_JsEvent] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Split] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_MODULEBUTTON] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_ModuleId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_ParentId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_Layers'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_EnCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_FullName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_Icon'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_Location'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_JsEvent'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_UrlAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分开线' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_Split'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公共' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_IsPublic'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_AllowEdit'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_AllowDelete'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块按钮' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ModuleButton'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ShopCart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ShopCart](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[ProductID] [int] NULL,
	[ProductNum] [int] NULL,
	[ActiveTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AgentOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_AgentOrder](
	[AgentID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[MemberID] [int] NULL,
	[MemberName] [varchar](50) NULL,
	[Create_date] [datetime] NULL DEFAULT (getdate()),
	[Operator] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[AgentID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Module]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Module](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Target] [varchar](50) NULL,
	[F_IsMenu] [bit] NULL,
	[F_IsExpand] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_MODULE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_ParentId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_Layers'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_EnCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_FullName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_Icon'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_UrlAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_Target'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_IsMenu'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展开' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_IsExpand'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公共' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_IsPublic'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许编辑' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_AllowEdit'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许删除' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_AllowDelete'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Module'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Log](
	[F_Id] [varchar](50) NOT NULL,
	[F_Date] [datetime] NULL,
	[F_Account] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_IPAddress] [varchar](50) NULL,
	[F_IPAddressName] [varchar](50) NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ModuleName] [varchar](50) NULL,
	[F_Result] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_LOG] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_Date'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_Account'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_NickName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_IPAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP所在城市' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_IPAddressName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块Id' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_ModuleId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统模块' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_ModuleName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_Result'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Log'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_SalesOrder](
	[SalesID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[SalesNo] [varchar](30) NULL,
	[SalesName] [varchar](30) NULL,
	[SalesTime] [datetime] NULL,
	[IsTui] [bit] NULL,
	[IsMoney] [bit] NULL,
	[State] [int] NULL,
	[SalesMemberID] [int] NULL,
	[Remark] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_Store]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_Store](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_S_StoreName] [varchar](100) NULL,
	[E_Time] [datetime] NULL CONSTRAINT [DF__S_Store__E_Time__53C2623D]  DEFAULT (getdate()),
	[E_Area] [varchar](100) NULL,
	[E_IsLock] [char](10) NULL,
	[E_SF] [varchar](20) NULL,
	[E_CS] [varchar](20) NULL,
	[E_YingYeTime] [varchar](100) NULL,
	[E_Img] [varchar](300) NULL,
	[E_Phone] [varchar](100) NULL,
	[E_Content] [text] NULL,
 CONSTRAINT [PK__S_Store__52CE3E04] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全国各地商铺' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商铺名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_S_StoreName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_Time'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_Area'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_SF'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_CS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'营业时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_YingYeTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_Img'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_Phone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Store', @level2type=N'COLUMN', @level2name=N'E_Content'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_OrderMemberEvalDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_OrderMemberEvalDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[EvalID] [int] NULL DEFAULT ((0)),
	[OrderID] [int] NULL DEFAULT ((0)),
	[OrderNo] [varchar](30) NULL,
	[EvalTime] [datetime] NULL DEFAULT (getdate()),
	[EvalNum] [int] NULL DEFAULT ((0)),
	[MemberID] [int] NULL DEFAULT ((0)),
	[MerchantsID] [int] NULL DEFAULT ((0)),
	[ProdID] [int] NULL DEFAULT ((0)),
	[Remark] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesOrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_SalesOrderDetail](
	[SalesID] [int] NOT NULL,
	[Prod] [int] NULL,
	[ProdName] [varchar](80) NULL,
	[Money] [decimal](17, 4) NULL,
	[Num] [int] NULL,
	[SalesMoney] [decimal](17, 4) NULL,
	[Remark] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Items]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Items](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_IsTree] [bit] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_ITEMS] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_ParentId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_EnCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_FullName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'树型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_IsTree'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_Layers'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项主表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Items'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Prodstock]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Prodstock](
	[StockID] [int] IDENTITY(1,1) NOT NULL,
	[ProdID] [int] NULL,
	[SalePrice] [decimal](17, 4) NULL,
	[Num] [int] NULL,
	[SafeNum] [int] NULL,
	[Total] [int] NULL,
	[LastInTime] [datetime] NULL,
	[LastOutTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ProductType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ProductType](
	[TypeID] [varchar](20) NOT NULL,
	[TypeName] [varchar](50) NULL,
	[EngName] [varchar](80) NULL,
	[Level] [int] NULL,
	[ParentID] [varchar](20) NULL,
	[ICO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_FilterIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_FilterIP](
	[F_Id] [varchar](50) NOT NULL,
	[F_Type] [bit] NULL,
	[F_StartIP] [varchar](50) NULL,
	[F_EndIP] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_FILTERIP] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始IP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_StartIP'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束IP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_EndIP'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过滤IP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_FilterIP'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_StockBill]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_StockBill](
	[StockBillID] [bigint] NOT NULL,
	[BillNo] [varchar](30) NULL,
	[merchantsID] [int] NULL,
	[StockFlag] [int] NULL,
	[StockType] [int] NULL,
	[Amount] [decimal](17, 4) NULL,
	[ChangeTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
	[Remark] [varchar](255) NULL,
	[PayType] [int] NULL,
	[StockState] [int] NULL,
	[Optail] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[StockBillID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_DbBackup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_DbBackup](
	[F_Id] [varchar](50) NOT NULL,
	[F_BackupType] [varchar](50) NULL,
	[F_DbName] [varchar](50) NULL,
	[F_FileName] [varchar](50) NULL,
	[F_FileSize] [varchar](50) NULL,
	[F_FilePath] [varchar](500) NULL,
	[F_BackupTime] [datetime] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_DBBACKUP] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备份主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备份类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_BackupType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_DbName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_FileName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_FileSize'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_FilePath'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备份时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_BackupTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库备份' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_DbBackup'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_StockDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_StockDetail](
	[ID] [bigint] NOT NULL,
	[StockBillID] [bigint] NULL,
	[BillNo] [varchar](30) NULL,
	[ProdID] [int] NULL,
	[ProdName] [varchar](80) NULL,
	[Num] [int] NULL,
	[Unit] [varchar](30) NULL,
	[Amount] [decimal](17, 4) NULL,
	[StockFlag] [int] NULL,
	[ChangeTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
	[Price] [decimal](17, 4) NULL,
	[Discount] [decimal](17, 4) NULL,
	[DiscountPrice] [decimal](17, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Area]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Area](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_SimpleSpelling] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_AREA] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_ParentId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_Layers'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_EnCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_FullName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简拼' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_SimpleSpelling'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区域表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_Area'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ImagesList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ImagesList](
	[ImgID] [int] IDENTITY(1,1) NOT NULL,
	[ImgName] [varchar](60) NULL,
	[ImgType] [varchar](50) NULL,
	[ImgSrc] [varchar](300) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Count] [int] NULL,
	[MenberID] [int] NULL,
	[IsDel] [varchar](20) NULL,
	[CreateDate] [datetime] NULL CONSTRAINT [DF_sp_ImagesList_CreateDate]  DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[ImgID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[return_card_Case]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[return_card_Case]
(
 @case varchar(10)
)
returns  varchar(20)
as
begin
 declare @casename varchar(20)
 
 if @case=1
   begin
      set @casename=''正常''
   end
 else 
   begin
     set @casename=''锁定''
   end

 return @casename
 
end' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberCard]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberCard](
	[CardID] [varchar](30) NOT NULL,
	[CardNo] [varchar](30) NULL,
	[MemberID] [int] NULL,
	[IsMain] [int] NULL,
	[balance] [decimal](17, 4) NULL,
	[Case] [varchar](30) NULL,
	[Create_date] [datetime] NULL CONSTRAINT [DF__sp_Member__Creat__60C757A0]  DEFAULT (getdate()),
	[Active_date] [datetime] NULL,
	[Last_date] [datetime] NULL,
	[Level] [varchar](30) NULL,
	[Reward] [int] NULL,
	[Last_use_date] [datetime] NULL,
	[Freeze] [decimal](17, 4) NULL,
	[Byshop] [int] NULL,
	[Credit] [decimal](17, 4) NULL,
	[Type] [varchar](30) NULL,
 CONSTRAINT [PK__sp_MemberCard__5FD33367] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_KeyWordList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_KeyWordList](
	[KeyID] [int] IDENTITY(1,1) NOT NULL,
	[KeyName] [varchar](50) NULL,
	[MainID] [int] NULL,
	[Maintable] [varchar](50) NULL,
	[IsDel] [varchar](10) NULL,
	[IsLock] [varchar](10) NULL,
	[OrderNum] [int] NULL,
	[WeightNum] [int] NULL,
	[CreateDate] [datetime] NULL CONSTRAINT [DF_sp_KeyWordList_CreateDate]  DEFAULT (getdate()),
	[MainImages] [varchar](300) NULL,
	[MainDescript] [varchar](1000) NULL,
	[MainTime] [datetime] NULL,
	[MainUrls] [varchar](300) NULL,
	[MainTitle] [varchar](100) NULL,
	[MainKeyWord] [varchar](300) NULL,
	[ClickNum] [int] NULL CONSTRAINT [DF_sp_KeyWordList_ClickNum]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ProdCollect]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ProdCollect](
	[CollID] [int] IDENTITY(1,1) NOT NULL,
	[ProdID] [int] NULL,
	[CollType] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[MenberID] [int] NULL,
	[Money] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CollID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PricStrategy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_PricStrategy](
	[PricID] [int] IDENTITY(1,1) NOT NULL,
	[StrateID] [varchar](20) NULL,
	[PreferID] [varchar](20) NULL,
	[OrderType] [varchar](20) NULL,
	[PayType] [varchar](20) NULL,
	[MemberID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[MerchantID] [int] NULL,
	[IsLock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PricID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ProdLooked]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ProdLooked](
	[LookID] [int] IDENTITY(1,1) NOT NULL,
	[ProdID] [int] NULL,
	[LookType] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[MenberID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LookID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PricStrategyDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_PricStrategyDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[PricID] [int] NULL,
	[StrateMoney] [decimal](17, 2) NULL,
	[PayMoney] [decimal](17, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[BrandName] [varchar](50) NULL,
	[BrandType] [varchar](50) NULL,
	[BrandImg] [varchar](300) NULL,
	[BrandCode] [varchar](50) NULL,
	[CreateDate] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Grid_Order]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[sp_Grid_Order]
(
@page int=1,
@pagesize int=15,
@orderno varchar(50)='''',
@memberid varchar(10)='''',
@merchantid  varchar(10)='''',
@sdate varchar(20)='''',
@edate varchar(20)='''',
@state varchar(20)=''''
)
as
begin
 
declare @pageIndex int
declare @pagesizeIndex int
set @pageIndex=(@page-1)*@pagesize
set @pagesizeIndex=@page*@pagesize
 
declare @sql varchar(3000)

if @sdate=''''
 begin
  set @sql='' O.OrderTime>=''''''+convert(varchar(30),dateadd(month,-6,getdate()),120)+''''''  ''  
 end
else 
 begin
  set @sql='' O.OrderTime>=''''''+@sdate+''''''  ''  
 end

if @edate=''''
 begin
  set @sql=@sql+'' and O.OrderTime<=''''''+convert(varchar(30),dateadd(day,1,getdate()),120)+''''''  ''  
 end
else 
 begin
  set @sql=@sql+'' and O.OrderTime<=''''''+@edate+''''''  ''  
 end

if @memberid!='''' and @memberid!=''0''
 begin
  set @sql=@sql+'' and O.MemberID=''+@memberid+'' ''
 end

if @merchantid!='''' and @merchantid!=''0''
 begin
  set @sql=@sql+'' and O.MerchantID=''+@merchantid+'' ''
 end

if @state!=''''
 begin
  set @sql=@sql+'' and O.State=''''''+@state+''''''  ''
 end


if @orderno!=''''
 begin
  set @sql=@sql+'' and O.OrderNo like ''''%''+@orderno+''%''''  ''
 end



exec(''
 select *
 into #Into_tab
 from (
		select row_number()over(order by OrderID desc)row,
		O.OrderID
		,O.OrderNo
		,O.OrderJiao
		,O.OrderTime
		,O.Money
		,O.Point
		,O.PointMoney
		,O.State
        ,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=O.State) as Statename
		,O.MemberID
		,M.MenberName
		,O.Preferential
		,O.Discount
		,O.PayType
        ,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=O.PayType) as PayTypename
		,O.PayTime
		,O.Distribution
		,O.IsInvoice
		,O.InvoiceType
		,O.InvoiceNo
		,O.LogisticNo
		,O.LogisticType
		,O.LogisticName
		,O.Logistic
		,O.MessAge
		,O.Adress
		,O.ZipCode
		,O.UserName
		,O.Mobile
		,O.Tel
		,O.Remark
		,O.MerchantID
		,S.MerchantName
		from sp_OrderTrade as O left join sp_Member as M on O.MemberID=M.MemberID 
             left join sp_Merchants as S on S.MerchantID=O.MerchantID
             
		where ''+@sql+''
 )tt
 where row>=''+@pageIndex+'' and row<''+@pagesizeIndex+''

 select * from #Into_tab
 
 select isnull(max(row),0) as count from #Into_tab

'')

end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_Video]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_Video](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_VideoTitle] [varchar](100) NULL,
	[E_Indate] [datetime] NULL CONSTRAINT [DF__E_Video__Indate__20C1E124]  DEFAULT (getdate()),
	[E_IsLock] [char](10) NULL CONSTRAINT [DF__E_Video__IsLock__21B6055D]  DEFAULT ('1'),
	[E_ClickNum] [int] NULL,
	[E_KeyWord] [varchar](300) NULL,
	[E_VideoType] [varchar](50) NULL,
	[E_VideoImg] [varchar](300) NULL,
	[E_VideoPath] [varchar](300) NULL,
	[E_Contents] [text] NULL,
 CONSTRAINT [PK__E_Video__1FCDBCEB] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_VideoTitle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示 1：显示 0：不显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击次数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_ClickNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_KeyWord'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_VideoType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_VideoImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频路径' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_VideoPath'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Video', @level2type=N'COLUMN', @level2name=N'E_Contents'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Member]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[MenberName] [varchar](50) NULL,
	[PassWord] [varchar](50) NULL,
	[MD5Pass] [varchar](50) NULL,
	[Card] [varchar](30) NULL,
	[CreateTime] [datetime] NULL CONSTRAINT [DF__sp_Member__Creat__5DEAEAF5]  DEFAULT (getdate()),
	[LastTime] [datetime] NULL CONSTRAINT [DF_sp_Member_LastTime]  DEFAULT (getdate()),
	[ActiveIP] [varchar](50) NULL,
	[LastIP] [varchar](50) NULL,
	[MenberType] [varchar](50) NULL,
	[IsLock] [varchar](10) NULL CONSTRAINT [DF_sp_Member_IsLock]  DEFAULT ((1)),
	[State] [varchar](10) NULL CONSTRAINT [DF_sp_Member_State]  DEFAULT ((0)),
	[ParamTitle1] [varchar](50) NULL,
	[ParamText1] [varchar](50) NULL,
	[ParamTitle2] [varchar](50) NULL,
	[ParamText2] [varchar](50) NULL,
	[ParamTitle3] [varchar](50) NULL,
	[ParamText3] [varchar](50) NULL,
	[Money] [decimal](18, 2) NULL CONSTRAINT [DF_sp_Member_Money]  DEFAULT ((0)),
	[Integral] [int] NULL CONSTRAINT [DF_sp_Member_Integral]  DEFAULT ((0)),
	[Level] [varchar](50) NULL,
	[IsFen] [varchar](10) NULL,
	[WeiCard] [varchar](50) NULL,
	[WAppID] [varchar](50) NULL,
	[WAppSecret] [varchar](50) NULL,
	[WeiOpenID] [varchar](50) NULL,
	[access_token] [varchar](100) NULL,
	[expires_token] [varchar](20) NULL,
	[IsDel] [varchar](50) NULL CONSTRAINT [DF_sp_Member_IsDel]  DEFAULT ('false'),
	[IsEnable] [int] NULL CONSTRAINT [DF_sp_Member_IsEnable]  DEFAULT ((0)),
 CONSTRAINT [PK__sp_Member__5CF6C6BC] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用会员卡 1：启用 0：未启用' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Member', @level2type=N'COLUMN', @level2name=N'IsEnable'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberMoneyRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberMoneyRecord](
	[MoneyID] [int] IDENTITY(1,1) NOT NULL,
	[MenberID] [int] NULL,
	[ChangeNum] [int] NULL,
	[ChangeType] [varchar](20) NULL,
	[TradingType] [varchar](20) NULL,
	[TradingNO] [varchar](20) NULL,
	[CreateTime] [datetime] NULL DEFAULT (getdate()),
	[Remark] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MoneyID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_Product](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Title] [varchar](100) NULL,
	[E_MondelType] [varchar](50) NULL,
	[E_Price] [varchar](20) NULL,
	[E_Type] [varchar](50) NULL,
	[E_ProImg] [varchar](300) NULL,
	[E_ContentText] [text] NULL,
	[E_UpdateTime] [datetime] NULL CONSTRAINT [DF__S_Product__E_Updat__25077354]  DEFAULT (getdate()),
	[E_IsHot] [varchar](10) NULL,
	[E_IsLock] [varchar](10) NULL,
 CONSTRAINT [PK__S_Product__2042BE37] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品表 ID自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_MondelType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_Price'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品主图' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_ProImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品详情' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_ContentText'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_UpdateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_IsHot'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Product', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[G_Figure]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[G_Figure](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Name] [varchar](50) NULL,
	[E_Sex] [char](1) NULL,
	[E_FigureImg] [varchar](300) NULL,
	[E_Company] [varchar](100) NULL,
	[E_Countries] [varchar](20) NULL,
	[E_Private] [varchar](20) NULL,
	[E_City] [varchar](20) NULL,
	[E_Address] [varchar](100) NULL,
	[E_Birthday] [varchar](50) NULL,
	[E_FigureType] [varchar](20) NULL,
	[E_CreateDate] [datetime] NULL DEFAULT (getdate()),
	[E_IsLock] [char](1) NULL DEFAULT ((1)),
	[E_IsHot] [char](1) NULL,
	[E_Text] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Sex'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_FigureImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司单位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Company'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国家' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Countries'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Private'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_City'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Address'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Birthday'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人物行业类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_FigureType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_CreateDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示 1:显示 0:不显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门  1:是 0:不是' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_IsHot'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure', @level2type=N'COLUMN', @level2name=N'E_Text'

GO
EXEC sys.sp_addextendedproperty @name=N'个人-个人信息', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_Figure'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wb_WebUrl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wb_WebUrl](
	[WebID] [int] IDENTITY(1,1) NOT NULL,
	[WebName] [varchar](50) NULL,
	[WebImage] [varchar](300) NULL,
	[WebImgList] [text] NULL,
	[Urls] [varchar](300) NULL,
	[Document] [varchar](300) NULL,
	[DownUrl] [varchar](300) NULL,
	[CollNum] [int] NULL,
	[WebText] [text] NULL,
	[Argee] [varchar](50) NULL,
	[Langage] [varchar](50) NULL,
	[OperSysTem] [varchar](50) NULL,
	[SysTime] [datetime] NULL,
	[MenberID] [int] NULL,
	[Countrie] [varchar](50) NULL,
	[WebType] [varchar](50) NULL,
	[ClickNum] [int] NULL,
	[E_IsLock] [char](10) NULL,
	[E_Tuo] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[WebID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_OrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNO] [int] NULL,
	[ProductID] [int] NULL,
	[ProductName] [varchar](80) NULL,
	[ProdModel] [varchar](50) NULL,
	[ProductImg] [varchar](300) NULL,
	[ProductNum] [int] NULL,
	[State] [varchar](50) NULL,
	[Money] [decimal](18, 2) NULL,
	[Market] [decimal](18, 2) NULL,
	[Point] [int] NULL,
	[Preferential] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[Attribute] [varchar](500) NULL,
	[MerchantID] [int] NULL CONSTRAINT [DF_sp_OrderDetail_MerchantID]  DEFAULT ((0)),
 CONSTRAINT [PK__sp_OrderDetail__11158940] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_LinkTexts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_LinkTexts](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Title] [varchar](50) NULL,
	[E_Keyword] [varchar](255) NULL,
	[E_Url] [varchar](255) NULL,
	[E_IsLock] [char](10) NULL,
	[E_Order] [int] NULL,
	[E_CreateTime] [datetime] NULL CONSTRAINT [DF__S_LinkTex__E_Cre__628FA481]  DEFAULT (getdate()),
	[E_Type] [varchar](50) NULL,
 CONSTRAINT [PK__S_LinkTexts__619B8048] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词 ID 自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_Keyword'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_Url'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_Order'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_CreateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkTexts', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[G_FigureProd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[G_FigureProd](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_FigureID] [int] NULL,
	[E_ProdName] [varchar](50) NULL,
	[E_ProdImg] [varchar](300) NULL,
	[E_FigureProType] [varchar](20) NULL,
	[E_ProdType] [varchar](20) NULL,
	[E_CreateDate] [datetime] NULL DEFAULT (getdate()),
	[E_IsLock] [char](1) NULL DEFAULT ((1)),
	[E_IsHot] [char](1) NULL,
	[E_ProdPath] [varchar](300) NULL,
	[E_Text] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人信息ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_FigureID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作品名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_ProdName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_ProdImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作品/文章/类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_FigureProType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品类型    产品   文章  书籍   作品' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_ProdType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_CreateDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示  1：显示 0：不显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门  1：是 0：不是' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_IsHot'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品路径' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_ProdPath'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd', @level2type=N'COLUMN', @level2name=N'E_Text'

GO
EXEC sys.sp_addextendedproperty @name=N'个人-个人文章/产品/作品', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'G_FigureProd'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_LinkImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_LinkImages](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Title] [varchar](50) NULL,
	[E_Alt] [varchar](255) NULL,
	[E_Image] [varchar](255) NULL,
	[E_Url] [varchar](255) NULL,
	[E_IsLock] [char](10) NULL,
	[E_Order] [int] NULL,
	[E_CreateTime] [datetime] NULL CONSTRAINT [DF__Linkimage__E_Cre__489AC854]  DEFAULT (getdate()),
	[E_Type] [varchar](50) NULL,
	[E_ColumnType] [varchar](50) NULL,
	[E_ColumnID] [int] NULL,
 CONSTRAINT [PK__S_LinkImages__47A6A41B] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片广告ID  自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Akt标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_Alt'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_Image'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_Url'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示 ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_Order'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_CreateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_LinkImages', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberPointRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberPointRecord](
	[PointID] [int] IDENTITY(1,1) NOT NULL,
	[ProdID] [int] NULL CONSTRAINT [DF_sp_MemberPointRecord_ProdID]  DEFAULT ((0)),
	[MenberID] [int] NULL CONSTRAINT [DF_sp_MemberPointRecord_MenberID]  DEFAULT ((0)),
	[ChangeNum] [int] NULL CONSTRAINT [DF_sp_MemberPointRecord_ChangeNum]  DEFAULT ((0)),
	[ChangeType] [varchar](20) NULL CONSTRAINT [DF_sp_MemberPointRecord_ChangeType]  DEFAULT (''),
	[TradingType] [varchar](20) NULL CONSTRAINT [DF_sp_MemberPointRecord_TradingType]  DEFAULT (''),
	[TradingNO] [varchar](20) NULL,
	[CreateTime] [datetime] NULL CONSTRAINT [DF_sp_MemberPointRecord_CreateTime]  DEFAULT (getdate()),
	[Remark] [text] NULL,
 CONSTRAINT [PK__sp_MemberPointRe__0697FACD] PRIMARY KEY CLUSTERED 
(
	[PointID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_ItemsDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_ItemsDetail](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemId] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NOT NULL CONSTRAINT [DF_Sys_ItemsDetail_F_ParentId]  DEFAULT ((0)),
	[F_ItemCode] [varchar](50) NULL CONSTRAINT [DF_Sys_ItemsDetail_F_ItemCode]  DEFAULT (''),
	[F_ItemName] [varchar](50) NULL CONSTRAINT [DF_Sys_ItemsDetail_F_ItemName]  DEFAULT (''),
	[F_SimpleSpelling] [varchar](500) NULL CONSTRAINT [DF_Sys_ItemsDetail_F_SimpleSpelling]  DEFAULT (''),
	[F_IsDefault] [bit] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_IsDefault]  DEFAULT ((0)),
	[F_Layers] [int] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_Layers]  DEFAULT ((0)),
	[F_SortCode] [int] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_SortCode]  DEFAULT ((0)),
	[F_DeleteMark] [bit] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_DeleteMark]  DEFAULT ((0)),
	[F_EnabledMark] [bit] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_EnabledMark]  DEFAULT ((0)),
	[F_Description] [varchar](500) NULL CONSTRAINT [DF_Sys_ItemsDetail_F_Description]  DEFAULT (''),
	[F_CreatorTime] [datetime] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_CreatorTime]  DEFAULT (((2000)-(1))-(1)),
	[F_CreatorUserId] [varchar](50) NULL CONSTRAINT [DF_Sys_ItemsDetail_F_CreatorUserId]  DEFAULT (''),
	[F_LastModifyTime] [datetime] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_LastModifyTime]  DEFAULT (((2000)-(1))-(1)),
	[F_LastModifyUserId] [varchar](50) NULL CONSTRAINT [DF_Sys_ItemsDetail_F_LastModifyUserId]  DEFAULT (''),
	[F_DeleteTime] [datetime] NULL CONSTRAINT [DF_Sys_ItemsDetail_F_DeleteTime]  DEFAULT (((2000)-(1))-(1)),
	[F_DeleteUserId] [varchar](50) NULL CONSTRAINT [DF_Sys_ItemsDetail_F_DeleteUserId]  DEFAULT (''),
 CONSTRAINT [PK_SYS_ITEMDETAIL] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'明细主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_ItemId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_ParentId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_ItemCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_ItemName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简拼' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_SimpleSpelling'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_IsDefault'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层次' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_Layers'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项明细表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_ItemsDetail'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ShopCartMoney]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ShopCartMoney](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProdMoney] [float] NULL,
	[CartMoney] [float] NULL,
	[ActivityID] [int] NULL,
	[MemberID] [int] NOT NULL CONSTRAINT [DF_sp_ShopCartMoney_MemberID]  DEFAULT ((0)),
 CONSTRAINT [PK__sp_ShopCartMoney__0D44F85C] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_Jobs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_Jobs](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_JobName] [varchar](100) NULL,
	[E_XueLi] [varchar](50) NULL,
	[E_Year] [varchar](50) NULL,
	[E_Num] [varchar](50) NULL,
	[E_Money] [varchar](50) NULL,
	[E_Address] [varchar](100) NULL,
	[E_IsLock] [char](10) NULL CONSTRAINT [DF__S_Jobs__E_IsLock__68487DD7]  DEFAULT ((1)),
	[E_Content] [text] NULL,
 CONSTRAINT [PK__S_Jobs__6754599E] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JY_School]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JY_School](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_SchoolName] [varchar](100) NULL,
	[E_Schoolimg] [varchar](300) NULL,
	[E_ChassNum] [int] NULL,
	[E_TeacherNum] [int] NULL,
	[E_Address] [varchar](100) NULL,
	[E_Fax] [varchar](50) NULL,
	[E_Email] [varchar](50) NULL,
	[E_LinkPhone] [varchar](100) NULL,
	[E_ZYHY] [varchar](100) NULL,
	[E_ClickNum] [int] NULL,
	[E_LX] [text] NULL,
	[E_XZ] [varchar](50) NULL,
	[E_IsLook] [char](1) NULL,
	[E_IsTou] [char](1) NULL,
	[E_Content] [text] NULL,
 CONSTRAINT [PK__JY_School__245D67DE] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_SchoolName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版面图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_Schoolimg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_ChassNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课老师人数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_TeacherNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_Address'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_Fax'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_Email'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_LinkPhone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主营行业' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_ZYHY'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人气' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_ClickNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路线' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_LX'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校长' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_XZ'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_IsLook'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_IsTou'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校介绍' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School', @level2type=N'COLUMN', @level2name=N'E_Content'

GO
EXEC sys.sp_addextendedproperty @name=N'教育-学校', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_School'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberTrans]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberTrans](
	[Seq] [bigint] NOT NULL,
	[MemberID] [int] NOT NULL CONSTRAINT [DF_sp_MemberTrans_MemberID]  DEFAULT ((0)),
	[Trand_Title] [varchar](100) NULL,
	[Type] [int] NULL CONSTRAINT [DF_sp_MemberTrans_Type]  DEFAULT ((0)),
	[Shop] [int] NULL CONSTRAINT [DF_sp_MemberTrans_Shop]  DEFAULT ((0)),
	[Term] [int] NULL CONSTRAINT [DF_sp_MemberTrans_Term]  DEFAULT ((0)),
	[Operator] [varchar](20) NULL,
	[Create_date] [datetime] NULL CONSTRAINT [DF_sp_MemberTrans_Create_date]  DEFAULT (getdate()),
	[Amt_dues] [decimal](17, 4) NULL CONSTRAINT [DF_sp_MemberTrans_Amt_dues]  DEFAULT ((0)),
	[Amt] [decimal](17, 4) NULL CONSTRAINT [DF_sp_MemberTrans_Amt]  DEFAULT ((0)),
	[Balance] [decimal](17, 4) NULL CONSTRAINT [DF_sp_MemberTrans_Balance]  DEFAULT ((0)),
	[Balance_before] [decimal](17, 4) NULL CONSTRAINT [DF_sp_MemberTrans_Balance_before]  DEFAULT ((0)),
	[Invoice] [varchar](50) NULL,
	[Safe] [varchar](30) NULL,
	[GroupID] [int] NULL CONSTRAINT [DF_sp_MemberTrans_GroupID]  DEFAULT ((0)),
	[Trade_date] [datetime] NULL,
	[Bill] [bigint] NULL CONSTRAINT [DF_sp_MemberTrans_Bill]  DEFAULT ((0)),
	[Card] [varchar](30) NULL,
	[Account] [int] NULL CONSTRAINT [DF_sp_MemberTrans_Account]  DEFAULT ((-1)),
	[Remark] [varchar](255) NULL,
 CONSTRAINT [PK_sp_MemberTrans] PRIMARY KEY CLUSTERED 
(
	[Seq] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务端流水号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Seq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'MemberID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Trand_Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易店铺' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Shop'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易终端' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人员' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Operator'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Create_date'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应该发生金额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Amt_dues'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际发生金额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Amt'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易后金额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易前余额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Balance_before'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相关单据号(各种订单单据)' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Invoice'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Safe'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司/部门ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'GroupID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际交易时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Trade_date'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易单据号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Bill'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡号(以后待定用)' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Card'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡账户类型(以后待定用)：主账户 补贴账户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Account'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans', @level2type=N'COLUMN', @level2name=N'Remark'

GO
EXEC sys.sp_addextendedproperty @name=N'交易记录', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberTrans'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_DownLoad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_DownLoad](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_DownName] [varchar](100) NULL CONSTRAINT [DF_S_DownLoad_E_DownName]  DEFAULT (''),
	[E_DownType] [varchar](50) NULL CONSTRAINT [DF_S_DownLoad_E_DownType]  DEFAULT (''),
	[E_CreateTime] [datetime] NULL CONSTRAINT [DF__S_DownLoa__E_Cre__52593CB8]  DEFAULT (getdate()),
	[E_DownImg] [varchar](300) NULL CONSTRAINT [DF_S_DownLoad_E_DownImg]  DEFAULT (''),
	[E_DownPath] [varchar](300) NULL CONSTRAINT [DF_S_DownLoad_E_DownPath]  DEFAULT (''),
	[E_IsLook] [char](10) NULL CONSTRAINT [DF__S_DownLoa__E_IsL__534D60F1]  DEFAULT ((1)),
	[E_IsHot] [char](10) NULL CONSTRAINT [DF__S_DownLoa__E_IsH__5441852A]  DEFAULT ((0)),
	[E_Content] [text] NULL CONSTRAINT [DF_S_DownLoad_E_Content]  DEFAULT (''),
 CONSTRAINT [PK__S_DownLoad__5165187F] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Grid_Member_Card]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[sp_Grid_Member_Card]
(
  @name varchar(30)='''',-- 会员卡号 姓名 电话 会员名称
  @Case varchar(10)='''',-- 卡状态
  @Type varchar(10)='''',-- 卡主从类型
  @SDate varchar(10)='''',-- 卡到期开始时间
  @EDate varchar(10)='''',-- 卡到期结束时间
  @page int=1,
  @pagesize int=15
)
as
-- 会员卡搜索
--
begin

 declare @sql varchar(1000)
 if @Case!=''''
 begin
   set @sql='' and [Case]=''+@Case
 end
 
 if @name!=''''
 begin
  set @sql=@sql+'' and (CardNo like ''''%''+@name+''%'''' or Tel like ''''%''+@name+''%'''' or MenberName like ''''%''+@name+''%'''' or UserName  like ''''%''+@name+''%'''') ''
 end 

 if @Type!=''''
 begin
  set @sql=@sql+'' and Type=''+@Type
 end

 if @SDate=''''
 begin
   set @SDate=dateadd(year,-1,getdate())
 end

 if @EDate=''''
 begin
   set @EDate=''2100-12-31''
 end
 
 declare @PageIndex int
 declare @PageSizes int
 
 set @PageIndex=(@page-1)*@pagesize
 set @PageSizes=@page*@pagesize

exec('' 

 select *
 into #Into_tab
 from ( 
   select row_number()over(order by MemberID desc)row,* 
   from view_Grid_MemberCard
   where Last_date between ''''''+@SDate+'''''' and ''''''+@EDate+''''''  ''+@sql+'' 
 )tt
 where row>=''+@PageIndex+'' and row<''+@PageSizes+''

 select * from #Into_tab
 
 select max(row) as count from #Into_tab


'')  


end


 ' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JG_Agency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JG_Agency](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_CompanyName] [varchar](80) NULL,
	[E_FR] [varchar](50) NULL,
	[E_CardID] [varchar](50) NULL,
	[E_CardImg] [varchar](300) NULL,
	[E_CompanyAddress] [varchar](100) NULL,
	[E_JBCompany] [varchar](100) NULL,
	[E_WebUrl] [varchar](200) NULL,
	[E_DWType] [varchar](20) NULL,
	[E_ZSDW] [varchar](100) NULL,
	[E_FRZS] [varchar](50) NULL,
	[E_JGDM] [varchar](50) NULL,
	[E_SSQY] [varchar](100) NULL,
	[E_SSHY] [varchar](50) NULL,
	[E_LinkPhone] [varchar](100) NULL,
	[E_Fax] [varchar](100) NULL,
	[E_IsLook] [char](1) NULL,
	[E_IsTou] [char](1) NULL,
	[E_Money] [float] NULL,
	[E_Email] [varchar](100) NULL,
	[E_CLRQ] [varchar](50) NULL,
	[E_Num] [varchar](50) NULL,
	[E_CodeDM] [varchar](50) NULL,
	[E_FZZZ] [varchar](300) NULL,
	[E_GSZS] [varchar](300) NULL,
	[E_AboutUS] [text] NULL,
 CONSTRAINT [PK__JG_Agency__208CD6FA] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_CompanyName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_FR'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人身份证号码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_CardID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人身份证图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_CardImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位现在地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_CompanyAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'举办单位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_JBCompany'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司网址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_WebUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位性质' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_DWType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'直属单位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_ZSDW'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人证书' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_FRZS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_JGDM'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属区域' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_SSQY'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属行业' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_SSHY'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_LinkPhone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_Fax'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_IsLook'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_IsTou'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册资金' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_Money'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_Email'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成立日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_CLRQ'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司规模' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_Num'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_CodeDM'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务职责' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_FZZZ'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司证书' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_GSZS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司介绍' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency', @level2type=N'COLUMN', @level2name=N'E_AboutUS'

GO
EXEC sys.sp_addextendedproperty @name=N'机构-机构公司', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_Agency'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_OrderTrade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_OrderTrade](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](50) NULL,
	[OrderJiao] [varchar](50) NULL,
	[Money] [decimal](18, 2) NULL CONSTRAINT [DF_sp_OrderTrade_Money]  DEFAULT ((0)),
	[Point] [int] NULL CONSTRAINT [DF_sp_OrderTrade_Point]  DEFAULT ((0)),
	[PointMoney] [decimal](18, 2) NULL CONSTRAINT [DF_sp_OrderTrade_PointMoney]  DEFAULT ((0)),
	[State] [varchar](50) NULL,
	[MemberID] [int] NULL,
	[OrderTime] [datetime] NULL,
	[Preferential] [decimal](18, 2) NULL CONSTRAINT [DF_sp_OrderTrade_Preferential]  DEFAULT ((0)),
	[Discount] [decimal](18, 2) NULL CONSTRAINT [DF_sp_OrderTrade_Discount]  DEFAULT ((0)),
	[PayType] [varchar](50) NULL,
	[PayTime] [datetime] NULL,
	[Distribution] [varchar](300) NULL,
	[IsInvoice] [varchar](10) NULL,
	[InvoiceType] [varchar](50) NULL,
	[InvoiceNo] [varchar](50) NULL,
	[LogisticNo] [varchar](50) NULL,
	[LogisticType] [varchar](50) NULL,
	[LogisticName] [varchar](100) NULL,
	[Logistic] [decimal](18, 2) NULL CONSTRAINT [DF_sp_OrderTrade_Logistic]  DEFAULT ((0)),
	[MessAge] [varchar](300) NULL,
	[Adress] [varchar](300) NULL,
	[ZipCode] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Tel] [varchar](50) NULL,
	[Remark] [varchar](300) NULL,
	[IsDel] [char](10) NULL CONSTRAINT [DF_sp_OrderTrade_IsDel]  DEFAULT ((0)),
	[MerchantID] [int] NULL CONSTRAINT [DF_sp_OrderTrade_MerchantID]  DEFAULT ((0)),
 CONSTRAINT [PK__sp_OrderTrade__0F2D40CE] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_ContactInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_ContactInfo](
	[E_CompanyMiaoID] [int] IDENTITY(1,1) NOT NULL,
	[E_CompanyMiaoName] [varchar](50) NULL CONSTRAINT [DF_S_ContactInfo_E_CompanyMiaoName]  DEFAULT (''),
	[E_EngTitle] [varchar](100) NULL CONSTRAINT [DF_S_ContactInfo_E_EngTitle]  DEFAULT (''),
	[E_CompanyTypeID] [varchar](50) NULL CONSTRAINT [DF_S_ContactInfo_E_CompanyTypeID]  DEFAULT (''),
	[E_TxtContent] [text] NULL CONSTRAINT [DF_S_ContactInfo_E_TxtContent]  DEFAULT (''),
	[E_Content_images] [text] NULL CONSTRAINT [DF_S_ContactInfo_E_Content_images]  DEFAULT (''),
	[E_commendatory] [char](10) NULL CONSTRAINT [DF__ContactIn__E_com__7D78A4E7]  DEFAULT ('0'),
	[E_hidden] [char](10) NULL CONSTRAINT [DF__ContactIn__E_hid__7E6CC920]  DEFAULT ('0'),
	[E_count] [char](10) NULL CONSTRAINT [DF__ContactIn__E_cou__7F60ED59]  DEFAULT ('0'),
	[E_time] [datetime] NULL CONSTRAINT [DF__ContactIn__E_tim__00551192]  DEFAULT (getdate()),
	[E_update] [datetime] NULL CONSTRAINT [DF__ContactIn__E_upd__014935CB]  DEFAULT (getdate()),
	[E_KeyWord] [varchar](100) NULL CONSTRAINT [DF_S_ContactInfo_E_KeyWord]  DEFAULT (''),
	[E_Description] [varchar](100) NULL CONSTRAINT [DF_S_ContactInfo_E_Description]  DEFAULT (''),
	[E_lng] [varchar](20) NULL CONSTRAINT [DF__ContactIn__E_lng__023D5A04]  DEFAULT ('0'),
 CONSTRAINT [PK__ContactInfo__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[E_CompanyMiaoID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容表自增ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_CompanyMiaoID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_CompanyMiaoName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_CompanyTypeID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章内容' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_TxtContent'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片集' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_Content_images'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_commendatory'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隐藏' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_hidden'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_count'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_time'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_update'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_KeyWord'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_ContactInfo', @level2type=N'COLUMN', @level2name=N'E_lng'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberBack]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberBack](
	[BackID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NULL,
	[Name] [varchar](30) NULL,
	[BackNo] [varchar](50) NULL,
	[BackType] [varchar](10) NULL,
	[BackArea] [varchar](50) NULL,
	[BackTime] [datetime] NULL CONSTRAINT [DF__sp_Member__BackT__43F60EC8]  DEFAULT (getdate()),
	[BackName] [varchar](50) NULL,
	[BackCode] [varchar](20) NULL,
	[Attribute] [text] NULL,
	[MemMerType] [int] NULL CONSTRAINT [DF_sp_MemberBack_MemMerType]  DEFAULT ((1)),
 CONSTRAINT [PK__sp_MemberBack__4301EA8F] PRIMARY KEY CLUSTERED 
(
	[BackID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行卡ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'BackID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'MemberID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'Name'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'BackNo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'BackType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开户行地点' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'BackArea'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'BackTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'BackName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行卡编码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'BackCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'Attribute'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用类型  1：会员   2：商户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack', @level2type=N'COLUMN', @level2name=N'MemMerType'

GO
EXEC sys.sp_addextendedproperty @name=N'会员关联银行卡', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_MemberBack'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](64) NULL,
	[linkname] [varchar](20) NULL,
	[Linkphone] [varchar](50) NULL,
	[spellcode] [varchar](64) NULL,
	[address] [varchar](128) NULL,
	[remark] [text] NULL,
	[tel] [varchar](20) NULL,
	[weburl] [varchar](128) NULL,
	[fax] [varchar](20) NULL,
	[billinfo] [varchar](200) NULL,
	[create_date] [datetime] NULL DEFAULT (getdate()),
	[ParentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'name'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'linkname'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'Linkphone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拼音码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'spellcode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'address'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'remark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'tel'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'weburl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'fax'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开票资料' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'billinfo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'create_date'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'公司/部门', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Group'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JY_Students]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JY_Students](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_StudentName] [varchar](100) NULL,
	[E_Sex] [char](1) NULL DEFAULT ((1)),
	[E_StudentImg] [varchar](300) NULL,
	[E_SchoolID] [int] NULL,
	[E_Company] [varchar](100) NULL,
	[E_Money] [varchar](50) NULL,
	[E_Discipline] [varchar](50) NULL,
	[E_Class] [varchar](50) NULL,
	[E_IsLook] [char](1) NULL DEFAULT ((1)),
	[E_IsHot] [char](1) NULL DEFAULT ((0)),
	[E_Content] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员姓名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_StudentName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_Sex'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_StudentImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_SchoolID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作单位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_Company'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪资' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_Money'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学科' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_Discipline'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students', @level2type=N'COLUMN', @level2name=N'E_Class'

GO
EXEC sys.sp_addextendedproperty @name=N'教育-学员', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Students'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Tradelogdetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Tradelogdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Seq] [bigint] NULL,
	[Create_date] [datetime] NULL DEFAULT (getdate()),
	[Prod] [int] NULL,
	[Name] [varchar](80) NULL,
	[Price] [decimal](17, 4) NULL,
	[Num] [int] NULL,
	[State] [int] NULL,
	[Major] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水id' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'Seq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'Create_date'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品id' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'Prod'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'Name'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'售出价格' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'Price'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'Num'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他平台id' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail', @level2type=N'COLUMN', @level2name=N'Major'

GO
EXEC sys.sp_addextendedproperty @name=N'交易日志明细', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelogdetail'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Tradelog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Tradelog](
	[Seq] [bigint] NOT NULL,
	[Title] [varchar](50) NULL,
	[Create_date] [datetime] NULL,
	[Shop] [int] NULL,
	[Term] [int] NULL,
	[Billtype] [int] NULL,
	[Type] [int] NULL,
	[State] [int] NULL,
	[Amt_dues] [decimal](17, 4) NULL,
	[Amt] [decimal](17, 4) NULL,
	[Times] [int] NULL,
	[MemberID] [int] NULL,
	[Card] [varchar](30) NULL,
	[CardNo] [varchar](30) NULL,
	[Balance] [decimal](17, 4) NULL,
	[Sell_date] [datetime] NULL,
	[Operator] [varchar](30) NULL,
	[Group] [int] NULL,
	[Remark] [varchar](500) NULL,
	[Major] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水id' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Seq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Title'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Create_date'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'餐厅' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Shop'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算台' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Term'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易日志类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Billtype'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预计金额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Amt_dues'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际金额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Amt'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间段' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Times'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'MemberID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Card'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'CardNo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡余额' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Balance'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Sell_date'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人员' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Operator'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司/部门' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Group'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Remark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他平台id' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog', @level2type=N'COLUMN', @level2name=N'Major'

GO
EXEC sys.sp_addextendedproperty @name=N'交易日志', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_Tradelog'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JY_ClassCourse]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JY_ClassCourse](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_CourseName] [varchar](100) NULL,
	[E_Address] [varchar](300) NULL,
	[E_CourseImg] [varchar](300) NULL,
	[E_TimeNum] [varchar](50) NULL,
	[E_SchoolID] [int] NULL,
	[E_Teacher] [varchar](50) NULL,
	[E_StartTime] [varchar](50) NULL,
	[E_ShiMoney] [float] NULL,
	[E_XianMoney] [float] NULL,
	[E_ClickNum] [int] NULL,
	[E_Professional] [varchar](20) NULL,
	[E_Subjects] [varchar](20) NULL,
	[E_CourseList] [text] NULL,
	[E_IsLook] [char](1) NULL CONSTRAINT [DF__JY_ClassC__E_IsL__2DE6D218]  DEFAULT ((1)),
	[E_IsHot] [char](1) NULL CONSTRAINT [DF__JY_ClassC__E_IsH__2EDAF651]  DEFAULT ((0)),
	[E_Content] [text] NULL,
 CONSTRAINT [PK__JY_ClassCourse__2CF2ADDF] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_CourseName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地点' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_Address'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_CourseImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课课时' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_TimeNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课顾问' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_Teacher'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开课时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_StartTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场报价' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_ShiMoney'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买价格' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_XianMoney'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人气' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_ClickNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_Professional'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_Subjects'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程明细' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_CourseList'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_IsLook'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse', @level2type=N'COLUMN', @level2name=N'E_Content'

GO
EXEC sys.sp_addextendedproperty @name=N'教育-课程', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_ClassCourse'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MerchantDepart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MerchantDepart](
	[DepartID] [int] IDENTITY(1,1) NOT NULL,
	[Departname] [varchar](50) NULL,
	[MerchantID] [int] NULL DEFAULT ((0)),
	[ParentID] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[DepartID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CashBox]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_CashBox](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[State] [int] NULL CONSTRAINT [DF_sp_CashBox_State]  DEFAULT ((0)),
	[Remark] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_CashBox', @level2type=N'COLUMN', @level2name=N'id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_CashBox', @level2type=N'COLUMN', @level2name=N'Name'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_CashBox', @level2type=N'COLUMN', @level2name=N'State'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_CashBox', @level2type=N'COLUMN', @level2name=N'Remark'

GO
EXEC sys.sp_addextendedproperty @name=N'自定义充值支付方式', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sp_CashBox'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_TaoChat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_TaoChat](
	[TaoID] [int] IDENTITY(1,1) NOT NULL,
	[TaoName] [varchar](60) NULL,
	[OneType] [varchar](50) NULL,
	[TwoType] [varchar](50) NULL,
	[Urls] [varchar](500) NULL,
	[WeiChat] [varchar](500) NULL,
	[TaoTime] [datetime] NULL,
	[TaoImg] [varchar](300) NULL,
	[TaoList] [text] NULL,
	[CollNum] [int] NULL,
	[ClickNum] [int] NULL,
	[ShopNum] [int] NULL,
	[TaoMoney] [decimal](18, 2) NULL,
	[TaoAttrite] [text] NULL,
	[TaoText] [text] NULL,
	[Ratio] [decimal](18, 2) NULL,
	[Commission] [decimal](18, 2) NULL,
 CONSTRAINT [PK__sp_TaoChat__2704CA5F] PRIMARY KEY CLUSTERED 
(
	[TaoID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Cms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Cms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mob] [varchar](20) NULL,
	[content] [varchar](200) NULL,
	[username] [varchar](20) NULL,
	[create_date] [datetime] NULL DEFAULT (getdate()),
	[send_date] [datetime] NULL,
	[send_succ] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MerchantEmploy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MerchantEmploy](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[MerchantID] [int] NULL DEFAULT ((0)),
	[Name] [varchar](50) NULL,
	[Sex] [int] NULL DEFAULT ((2)),
	[Birthday] [datetime] NULL DEFAULT ('2000-01-01'),
	[BirthType] [int] NULL DEFAULT ((1)),
	[Record] [varchar](20) NULL,
	[School] [varchar](100) NULL,
	[CardNO] [varchar](20) NULL,
	[CardImg] [varchar](300) NULL,
	[Modbile] [varchar](50) NULL,
	[Tel] [varchar](50) NULL,
	[QQ] [varchar](50) NULL,
	[WeiChart] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Remark] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_Cmsqueue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_Cmsqueue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mob] [varchar](20) NULL,
	[content] [varchar](200) NULL,
	[username] [varchar](20) NULL,
	[create_date] [datetime] NULL DEFAULT (getdate()),
	[send_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_Activity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_Activity](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Titles] [varchar](20) NULL CONSTRAINT [DF_S_Activity_E_Titles]  DEFAULT (''),
	[E_Time] [datetime] NULL CONSTRAINT [DF__S_Activity__E_Time__50E5F592]  DEFAULT (getdate()),
	[E_Href] [varchar](300) NULL CONSTRAINT [DF_S_Activity_E_Href]  DEFAULT (''),
	[E_img] [varchar](300) NULL CONSTRAINT [DF_S_Activity_E_img]  DEFAULT (''),
	[E_IsLock] [varchar](10) NULL CONSTRAINT [DF_S_Activity_E_IsLock]  DEFAULT ((1)),
	[E_Type] [varchar](50) NULL CONSTRAINT [DF_S_Activity_E_Type]  DEFAULT (''),
	[E_Address] [varchar](100) NULL CONSTRAINT [DF_S_Activity_E_Address]  DEFAULT (''),
	[E_ActicityDate] [varchar](100) NULL CONSTRAINT [DF_S_Activity_E_ActicityDate]  DEFAULT (''),
	[E_LinkPhone] [varchar](100) NULL CONSTRAINT [DF_S_Activity_E_LinkPhone]  DEFAULT (''),
	[E_LinkName] [varchar](50) NULL CONSTRAINT [DF_S_Activity_E_LinkName]  DEFAULT (''),
	[E_Email] [varchar](100) NULL CONSTRAINT [DF_S_Activity_E_Email]  DEFAULT (''),
	[E_Content] [text] NULL CONSTRAINT [DF_S_Activity_E_Content]  DEFAULT (''),
 CONSTRAINT [PK__S_Activity__4FF1D159] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动  ID自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Activity', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Activity', @level2type=N'COLUMN', @level2name=N'E_Titles'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Activity', @level2type=N'COLUMN', @level2name=N'E_Time'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Activity', @level2type=N'COLUMN', @level2name=N'E_Href'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Activity', @level2type=N'COLUMN', @level2name=N'E_img'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Activity', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Activity', @level2type=N'COLUMN', @level2name=N'E_Content'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MerchantAccess]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MerchantAccess](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [varchar](50) NULL CONSTRAINT [DF_sp_MerchantAccess_AccountName]  DEFAULT (''),
	[PassWord] [varchar](50) NULL CONSTRAINT [DF_sp_MerchantAccess_PassWord]  DEFAULT (''),
	[MD5Pass] [varchar](50) NULL CONSTRAINT [DF_sp_MerchantAccess_MD5Pass]  DEFAULT (''),
	[MerchantID] [int] NULL DEFAULT ((0)),
	[MerchantName] [varchar](100) NULL CONSTRAINT [DF_sp_MerchantAccess_MerchantName]  DEFAULT (''),
	[IsMain] [int] NULL DEFAULT ((0)),
	[DepartID] [int] NULL DEFAULT ((0)),
	[IsLock] [int] NULL DEFAULT ((1)),
	[LockTime] [datetime] NULL DEFAULT ('2000-01-01'),
	[CreateTime] [datetime] NULL DEFAULT (getdate()),
	[LastTime] [datetime] NULL DEFAULT (getdate()),
	[LastIP] [varchar](50) NULL CONSTRAINT [DF_sp_MerchantAccess_LastIP]  DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_QuickMessAge]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_QuickMessAge](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Time] [datetime] NULL CONSTRAINT [DF__QuickMess__E_Tim__00CA12DE]  DEFAULT (getdate()),
	[E_IP] [varchar](50) NULL,
	[E_Type] [varchar](20) NULL,
	[E_IsChu] [varchar](1) NULL CONSTRAINT [DF_S_QuickMessAge_E_IsChu]  DEFAULT ((0)),
	[E_UserName] [varchar](50) NULL,
	[E_Phone] [varchar](100) NULL,
	[E_Email] [varchar](100) NULL,
	[E_IsLock] [varchar](1) NULL CONSTRAINT [DF_S_QuickMessAge_E_IsLock]  DEFAULT ((1)),
	[E_QuickID] [int] NULL,
	[E_QuickType] [varchar](50) NULL,
	[E_HuiTime] [datetime] NULL,
	[E_HuiText] [text] NULL,
	[E_Content] [text] NULL,
 CONSTRAINT [PK__S_QuickMessAge__7FD5EEA5] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快捷咨询  自增ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_QuickMessAge', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_QuickMessAge', @level2type=N'COLUMN', @level2name=N'E_Time'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_QuickMessAge', @level2type=N'COLUMN', @level2name=N'E_IP'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'咨询类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_QuickMessAge', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'咨询内容' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_QuickMessAge', @level2type=N'COLUMN', @level2name=N'E_Content'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_WebEditInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_WebEditInfo](
	[E_WebID] [int] IDENTITY(1,1) NOT NULL,
	[E_WebName] [varchar](50) NULL,
	[E_Logo] [varchar](255) NULL,
	[E_WebUrl] [varchar](255) NULL,
	[E_CompanyName] [varchar](50) NULL,
	[E_Oubian] [varchar](50) NULL,
	[E_LinkPhone] [varchar](50) NULL,
	[E_Fax] [varchar](50) NULL,
	[E_QQ] [varchar](50) NULL,
	[E_Wangwang] [varchar](50) NULL,
	[E_Email] [varchar](50) NULL,
	[E_KeyWord] [text] NULL,
	[E_Description] [text] NULL,
	[E_ICP] [varchar](100) NULL,
	[E_ButtomContent] [text] NULL,
	[E_WeiXin] [varchar](255) NULL,
	[E_MapImg] [varchar](255) NULL,
	[E_WeiConImg] [varchar](255) NULL,
	[E_ContentUS] [varchar](255) NULL,
	[E_MoneyTCount] [decimal](10, 2) NULL CONSTRAINT [DF_S_WebEditInfo_E_MoneyTCount]  DEFAULT ((1)),
	[E_IsAudit] [int] NULL,
 CONSTRAINT [PK__S_WebEditInfo__37A5467C] PRIMARY KEY CLUSTERED 
(
	[E_WebID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站配置  ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_WebID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_WebName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_Logo'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_WebUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_CompanyName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编号码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_Oubian'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_LinkPhone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_Fax'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_QQ'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'旺旺' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_Wangwang'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_Email'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_KeyWord'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ICP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_ICP'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'底部内容代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_ButtomContent'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_WeiXin'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_MapImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_WeiConImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_ContentUS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1元=积分' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_MoneyTCount'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户注册是否审核' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebEditInfo', @level2type=N'COLUMN', @level2name=N'E_IsAudit'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_NewsInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_NewsInfo](
	[E_NewsID] [int] IDENTITY(1,1) NOT NULL,
	[E_NewsTitle] [varchar](100) NULL,
	[E_IsLock] [varchar](20) NULL,
	[E_Hot] [varchar](20) NULL,
	[E_Tuo] [varchar](20) NULL,
	[E_KeyWord] [varchar](100) NULL,
	[E_Description] [varchar](400) NULL,
	[E_NewsTypeID] [varchar](50) NULL,
	[E_Laiyuan] [varchar](255) NULL,
	[E_ImageUrl] [varchar](355) NULL CONSTRAINT [DF_S_NewsInfo_E_ImageUrl]  DEFAULT (''),
	[E_Starttime] [datetime] NULL CONSTRAINT [DF_S_NewsInfo_E_Starttime]  DEFAULT (getdate()),
	[E_Write] [varchar](100) NULL,
	[E_TxtContent] [text] NULL,
	[E_count] [int] NULL CONSTRAINT [DF_S_NewsInfo_E_count]  DEFAULT ('0'),
	[E_lng] [varchar](20) NULL CONSTRAINT [DF_S_NewsInfo_E_lng]  DEFAULT ('0'),
 CONSTRAINT [PK_S_NewsInfo] PRIMARY KEY CLUSTERED 
(
	[E_NewsID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻ID 自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_NewsID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_NewsTitle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示 1:显示  0:隐藏  2:待审核' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_KeyWord'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资讯类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_NewsTypeID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_Laiyuan'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_ImageUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资讯时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_Starttime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_Write'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新闻内容' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_TxtContent'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_count'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_NewsInfo', @level2type=N'COLUMN', @level2name=N'E_lng'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JY_Teacher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JY_Teacher](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_TearcherName] [varchar](100) NULL,
	[E_Sex] [char](10) NULL CONSTRAINT [DF__JY_Teache__E_Sex__44FF419A]  DEFAULT ((1)),
	[E_TeacherImg] [varchar](300) NULL,
	[E_Job] [varchar](100) NULL,
	[E_SchoolID] [int] NULL,
	[E_Wook] [varchar](50) NULL,
	[E_IsLook] [char](10) NULL CONSTRAINT [DF__JY_Teache__E_IsL__45F365D3]  DEFAULT ((1)),
	[E_IsHot] [char](10) NULL CONSTRAINT [DF__JY_Teache__E_IsH__46E78A0C]  DEFAULT ((0)),
	[E_Content] [text] NULL,
 CONSTRAINT [PK__JY_Teacher__440B1D61] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'教育-教师', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JY_Teacher'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_BanerInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_BanerInfo](
	[E_QieID] [int] IDENTITY(1,1) NOT NULL,
	[E_ImageUrl] [varchar](255) NULL CONSTRAINT [DF_S_BanerInfo_E_ImageUrl]  DEFAULT (''),
	[E_Keyword] [varchar](255) NULL CONSTRAINT [DF_S_BanerInfo_E_Keyword]  DEFAULT (''),
	[E_ImageName] [varchar](100) NULL CONSTRAINT [DF_S_BanerInfo_E_ImageName]  DEFAULT (''),
	[E_HrefUrl] [varchar](255) NULL CONSTRAINT [DF_S_BanerInfo_E_HrefUrl]  DEFAULT ('#'),
	[E_Order] [int] NULL CONSTRAINT [DF_BanerInfo_E_Order]  DEFAULT ((0)),
	[E_Type] [varchar](50) NULL CONSTRAINT [DF_S_BanerInfo_E_Type]  DEFAULT (''),
	[E_ClickNum] [int] NULL CONSTRAINT [DF_BanerInfo_E_ClickNum]  DEFAULT ((0)),
	[E_IsLock] [varchar](10) NULL CONSTRAINT [DF_BanerInfo_E_IsLock]  DEFAULT ((1)),
 CONSTRAINT [PK__BanerInfo__503BEA1C] PRIMARY KEY CLUSTERED 
(
	[E_QieID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Banner  焦点图  ID  自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_BanerInfo', @level2type=N'COLUMN', @level2name=N'E_QieID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_BanerInfo', @level2type=N'COLUMN', @level2name=N'E_ImageUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_BanerInfo', @level2type=N'COLUMN', @level2name=N'E_Keyword'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片Alt' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_BanerInfo', @level2type=N'COLUMN', @level2name=N'E_ImageName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_BanerInfo', @level2type=N'COLUMN', @level2name=N'E_HrefUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_BanerInfo', @level2type=N'COLUMN', @level2name=N'E_Order'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Banner类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_BanerInfo', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Merchants]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Merchants](
	[MerchantID] [int] IDENTITY(1,1) NOT NULL,
	[MerchantName] [varchar](100) NULL,
	[MerType] [varchar](50) NULL,
	[MerName] [varchar](50) NULL,
	[LinkName] [varchar](50) NULL,
	[Phone] [varchar](80) NULL,
	[Modbile] [varchar](80) NULL,
	[ZhuAddress] [varchar](300) NULL,
	[UserAddress] [varchar](300) NULL,
	[Email] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[CardImg] [varchar](300) NULL,
	[ComCard] [varchar](300) NULL,
	[AboutText] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[MerchantID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberUser](
	[MemberID] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[CardID] [varchar](50) NULL,
	[UserImg] [varchar](300) NULL,
	[CardImg] [varchar](300) NULL,
	[CardBarkImg] [varchar](300) NULL,
	[BirthdayType] [varchar](20) NULL,
	[Birthday] [varchar](20) NULL,
	[Sex] [varchar](10) NULL CONSTRAINT [DF_sp_MemberUser_Sex]  DEFAULT ((1)),
	[SF] [varchar](50) NULL,
	[CS] [varchar](50) NULL,
	[QX] [varchar](50) NULL,
	[Adress] [varchar](80) NULL,
	[Tel] [varchar](50) NULL,
	[ZipCode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberCoupons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberCoupons](
	[MemCouID] [int] IDENTITY(1,1) NOT NULL,
	[CouPonsName] [varchar](50) NULL,
	[ZheKou] [decimal](17, 4) NULL DEFAULT ((0)),
	[MinMoney] [decimal](17, 2) NULL DEFAULT ((0)),
	[MenberID] [int] NULL DEFAULT ((0)),
	[MerchantID] [int] NULL DEFAULT ((0)),
	[CreateDate] [datetime] NULL DEFAULT (getdate()),
	[StartTime] [datetime] NULL DEFAULT (getdate()),
	[EndTime] [datetime] NULL DEFAULT (getdate()),
	[Type] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[MemCouID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberLevel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberLevel](
	[LevelID] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [varchar](30) NULL,
	[IsLock] [int] NULL DEFAULT ((1)),
	[LevelNum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_MemberDisCount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_MemberDisCount](
	[DisCountID] [int] IDENTITY(1,1) NOT NULL,
	[LevelID] [int] NULL,
	[DisCountNum] [decimal](17, 4) NULL DEFAULT ((100)),
PRIMARY KEY CLUSTERED 
(
	[DisCountID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_WebLanInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_WebLanInfo](
	[E_wangID] [int] IDENTITY(1,1) NOT NULL,
	[E_wangName] [varchar](50) NOT NULL,
	[E_EngTitle] [varchar](150) NULL,
	[E_yuanwangName] [varchar](50) NULL,
	[E_wangUrl] [varchar](150) NULL,
	[E_TypeID] [varchar](50) NULL,
	[OrederNum] [int] NULL CONSTRAINT [DF_S_WebLanInfo_OrederNum]  DEFAULT ((0)),
	[E_Islock] [char](10) NULL CONSTRAINT [DF_S_WebLanInfo_E_Islock]  DEFAULT ((1)),
	[E_ParemType] [varchar](50) NOT NULL CONSTRAINT [DF_S_WebLanInfo_E_ParemType]  DEFAULT ((0)),
	[E_JNum] [int] NULL CONSTRAINT [DF_S_WebLanInfo_E_JNum]  DEFAULT ((0)),
 CONSTRAINT [PK__S_WebLanInfo__57DD0BE4] PRIMARY KEY CLUSTERED 
(
	[E_wangID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站栏目 UD  自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'E_wangID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'E_wangName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原栏目标题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'E_yuanwangName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'E_wangUrl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'E_TypeID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'OrederNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'E_Islock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebLanInfo', @level2type=N'COLUMN', @level2name=N'E_ParemType'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_IPBanned]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_IPBanned](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_IP] [varchar](100) NULL,
	[E_Expires] [datetime] NULL DEFAULT (getdate()),
	[E_CreateTime] [datetime] NULL DEFAULT (getdate()),
	[E_Remark] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ip黑名单ID  自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_IPBanned', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_IPBanned', @level2type=N'COLUMN', @level2name=N'E_IP'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_IPBanned', @level2type=N'COLUMN', @level2name=N'E_Expires'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_IPBanned', @level2type=N'COLUMN', @level2name=N'E_CreateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_IPBanned', @level2type=N'COLUMN', @level2name=N'E_Remark'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ProdTypeAttri]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ProdTypeAttri](
	[AttriID] [int] IDENTITY(1,1) NOT NULL,
	[TypeID] [varchar](20) NULL,
	[ProdID] [varchar](20) NULL,
	[CodeName] [varchar](20) NULL,
	[IsLock] [varchar](10) NULL DEFAULT ('true'),
	[ProdImg] [varchar](300) NULL,
	[ProdMoney] [decimal](17, 4) NULL,
	[OrderNum] [int] NULL,
	[ProdCode] [varchar](20) NULL,
	[CostMoney] [decimal](17, 4) NULL DEFAULT ((0)),
	[Weight] [decimal](17, 4) NULL DEFAULT ((0)),
	[Market] [decimal](17, 4) NULL DEFAULT ((0)),
	[Invebtory] [int] NULL DEFAULT ((0)),
	[BarCode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AttriID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Coupons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Coupons](
	[CouponsID] [int] IDENTITY(1,1) NOT NULL,
	[CouPonsName] [varchar](50) NULL,
	[MerchantID] [int] NULL DEFAULT ((0)),
	[ZheKou] [decimal](17, 4) NULL DEFAULT ((0)),
	[MinMoney] [decimal](17, 2) NULL DEFAULT ((0)),
	[CreateDate] [datetime] NULL DEFAULT (getdate()),
	[StartTime] [datetime] NULL DEFAULT (getdate()),
	[EndTime] [datetime] NULL DEFAULT (getdate()),
	[Type] [int] NULL DEFAULT ((0)),
	[CouPonNum] [int] NULL DEFAULT ((0)),
	[prods] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[CouponsID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_Success]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_Success](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_SuccessTitle] [varchar](100) NULL,
	[E_Type] [varchar](50) NULL,
	[E_Indate] [datetime] NULL CONSTRAINT [DF__S_Success__E_Ind__1DE57479]  DEFAULT (getdate()),
	[E_IsLock] [char](10) NULL CONSTRAINT [DF__S_Success__E_IsL__1ED998B2]  DEFAULT ((1)),
	[E_IsTou] [char](10) NULL CONSTRAINT [DF__S_Success__E_IsT__1FCDBCEB]  DEFAULT ((0)),
	[E_SuccImg] [varchar](300) NULL,
	[E_Content] [text] NULL,
 CONSTRAINT [PK__S_Success__1CF15040] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案例名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Success', @level2type=N'COLUMN', @level2name=N'E_SuccessTitle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Success', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示 1：显示 0：不显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Success', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐  1：推荐 0：不推荐' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Success', @level2type=N'COLUMN', @level2name=N'E_IsTou'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Success', @level2type=N'COLUMN', @level2name=N'E_SuccImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Success', @level2type=N'COLUMN', @level2name=N'E_Content'

GO
EXEC sys.sp_addextendedproperty @name=N'成功案例', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_Success'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_Product](
	[ProdID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProdName] [varchar](80) NULL,
	[ProdNO] [varchar](50) NULL,
	[merchantsID] [int] NULL DEFAULT ((0)),
	[Wcategory] [varchar](50) NULL,
	[One] [varchar](20) NULL CONSTRAINT [DF_sp_Product_One]  DEFAULT (''),
	[Two] [varchar](20) NULL CONSTRAINT [DF_sp_Product_Two]  DEFAULT (''),
	[Three] [varchar](20) NULL CONSTRAINT [DF_sp_Product_Three]  DEFAULT (''),
	[ProdType] [varchar](20) NULL,
	[MainImg] [varchar](300) NULL,
	[ImgList] [text] NULL,
	[Video] [varchar](500) NULL,
	[SellPoint] [varchar](500) NULL,
	[Market] [float] NULL DEFAULT ((0)),
	[Money] [float] NULL DEFAULT ((0)),
	[DaiMoney] [float] NULL DEFAULT ((0)),
	[Brand] [int] NULL DEFAULT ((0)),
	[Pattern] [varchar](50) NULL,
	[StartType] [varchar](50) NULL,
	[ClickNum] [int] NULL DEFAULT ((0)),
	[BuyNum] [int] NULL DEFAULT ((0)),
	[CollNum] [int] NULL DEFAULT ((0)),
	[PinNum] [int] NULL DEFAULT ((0)),
	[PointNum] [int] NULL DEFAULT ((0)),
	[InventoryType] [varchar](50) NULL,
	[Inventory] [int] NULL,
	[Unit] [varchar](20) NULL,
	[Weight] [float] NULL DEFAULT ((0)),
	[StartTime] [varchar](20) NULL,
	[EndTime] [varchar](20) NULL,
	[Address] [varchar](300) NULL,
	[SAddress] [varchar](300) NULL,
	[IsTou] [varchar](10) NULL DEFAULT ('false'),
	[IsHot] [varchar](10) NULL DEFAULT ('false'),
	[IsLock] [varchar](10) NULL DEFAULT ('true'),
	[IsDel] [varchar](10) NULL DEFAULT ('false'),
	[IsJia] [varchar](10) NULL DEFAULT ('false'),
	[IsGui] [varchar](10) NULL DEFAULT ('false'),
	[OrderNum] [int] NULL DEFAULT ((0)),
	[CreateTime] [datetime] NULL DEFAULT (getdate()),
	[MemberID] [int] NULL,
	[ProdText] [text] NULL,
	[MobileText] [text] NULL,
	[ProPerties] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProdID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_WebPage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_WebPage](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_WebTitle] [varchar](100) NULL,
	[E_Indate] [datetime] NULL CONSTRAINT [DF__S_WebPage__Indat__014935CB]  DEFAULT (getdate()),
	[E_IsLock] [char](10) NULL CONSTRAINT [DF__S_WebPage__IsLoc__023D5A04]  DEFAULT ('1'),
	[E_WebType] [varchar](50) NULL,
	[E_WebImg] [varchar](300) NULL,
	[E_KeyWord] [varchar](300) NULL,
	[E_Description] [varchar](300) NULL,
	[E_Contents] [text] NULL,
 CONSTRAINT [PK__S_WebPage__00551192] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_WebTitle'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示 1:显示 0:不显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_WebType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_WebImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_KeyWord'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网页描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage', @level2type=N'COLUMN', @level2name=N'E_Contents'

GO
EXEC sys.sp_addextendedproperty @name=N'自定义网页', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebPage'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_WebKeInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_WebKeInfo](
	[E_KeID] [int] IDENTITY(1,1) NOT NULL,
	[E_KeName] [varchar](50) NOT NULL,
	[E_TypeID] [varchar](50) NOT NULL,
	[E_KeNum] [varchar](50) NULL,
	[E_IsLock] [char](10) NULL,
	[E_UID] [varchar](20) NULL CONSTRAINT [DF_S_WebKeInfo_E_UID]  DEFAULT ((0)),
 CONSTRAINT [PK__S_WebKeInfo__55F4C372] PRIMARY KEY CLUSTERED 
(
	[E_KeID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站客服 ID  自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebKeInfo', @level2type=N'COLUMN', @level2name=N'E_KeID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客服名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebKeInfo', @level2type=N'COLUMN', @level2name=N'E_KeName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客服类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebKeInfo', @level2type=N'COLUMN', @level2name=N'E_TypeID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebKeInfo', @level2type=N'COLUMN', @level2name=N'E_KeNum'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebKeInfo', @level2type=N'COLUMN', @level2name=N'E_IsLock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员用户ID  0:管理员' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_WebKeInfo', @level2type=N'COLUMN', @level2name=N'E_UID'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ProdCoupons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_ProdCoupons](
	[ProdcouID] [int] IDENTITY(1,1) NOT NULL,
	[CouponsID] [int] NULL DEFAULT ((0)),
	[ProdID] [int] NULL DEFAULT ((0)),
	[MerchantID] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ProdcouID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_AdvList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_AdvList](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_AdvName] [varchar](50) NULL,
	[E_Price] [int] NULL CONSTRAINT [DF__S_AdvList__E_Pri__7E37BEF6]  DEFAULT ((0)),
	[E_SDate] [datetime] NULL CONSTRAINT [DF__S_AdvList__E_SDa__7F2BE32F]  DEFAULT (getdate()),
	[E_EDate] [datetime] NULL CONSTRAINT [DF__S_AdvList__E_EDa__00200768]  DEFAULT (getdate()),
	[E_Width] [int] NULL CONSTRAINT [DF__S_AdvList__E_Wid__01142BA1]  DEFAULT ((0)),
	[E_Height] [int] NULL CONSTRAINT [DF__S_AdvList__E_Hei__02084FDA]  DEFAULT ((0)),
	[E_Lock] [char](10) NULL CONSTRAINT [DF__S_AdvList__E_Loc__02FC7413]  DEFAULT ((1)),
	[E_Type] [varchar](50) NULL CONSTRAINT [DF_S_AdvList_E_Type]  DEFAULT (''),
	[E_CreateTime] [datetime] NULL CONSTRAINT [DF__S_AdvList__E_Cre__03F0984C]  DEFAULT (getdate()),
	[E_Source] [text] NULL CONSTRAINT [DF_S_AdvList_E_Source]  DEFAULT (''),
 CONSTRAINT [PK__S_AdvList__7D439ABD] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告列表  ID  自增' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_AdvName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_Price'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_SDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_EDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宽度' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_Width'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高度' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_Height'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_Lock'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告类型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_Type'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_CreateTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'S_AdvList', @level2type=N'COLUMN', @level2name=N'E_Source'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_IntegralShop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sp_IntegralShop](
	[IntegralID] [int] IDENTITY(1,1) NOT NULL,
	[ProdID] [int] NULL DEFAULT ((0)),
	[Prod] [varchar](100) NULL,
	[CreateDate] [datetime] NULL DEFAULT (getdate()),
	[PlateID] [int] NULL DEFAULT ((0)),
	[MerchantID] [int] NULL DEFAULT ((0)),
	[StatrTime] [datetime] NULL DEFAULT (getdate()),
	[EndTime] [datetime] NULL DEFAULT (getdate()),
	[MaxNum] [int] NULL DEFAULT ((0)),
	[IntegralNum] [int] NULL DEFAULT ((0)),
	[IntegMoney] [decimal](17, 2) NULL DEFAULT ((0)),
	[IsLock] [int] NULL DEFAULT ((0)),
	[One] [varchar](20) NULL,
	[Two] [varchar](20) NULL,
	[Three] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IntegralID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_UserLogOn]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_UserLogOn](
	[F_Id] [varchar](50) NOT NULL,
	[F_UserId] [varchar](50) NULL,
	[F_UserPassword] [varchar](50) NULL,
	[F_UserSecretkey] [varchar](50) NULL,
	[F_AllowStartTime] [datetime] NULL,
	[F_AllowEndTime] [datetime] NULL,
	[F_LockStartDate] [datetime] NULL,
	[F_LockEndDate] [datetime] NULL,
	[F_FirstVisitTime] [datetime] NULL,
	[F_PreviousVisitTime] [datetime] NULL,
	[F_LastVisitTime] [datetime] NULL,
	[F_ChangePasswordDate] [datetime] NULL,
	[F_MultiUserLogin] [bit] NULL,
	[F_LogOnCount] [int] NULL,
	[F_UserOnLine] [bit] NULL,
	[F_Question] [varchar](50) NULL,
	[F_AnswerQuestion] [varchar](500) NULL,
	[F_CheckIPAddress] [bit] NULL,
	[F_Language] [varchar](50) NULL,
	[F_Theme] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_USERLOGON] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户登录主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_UserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_UserPassword'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户秘钥' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_UserSecretkey'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许登录时间开始' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_AllowStartTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许登录时间结束' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_AllowEndTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'暂停用户开始日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_LockStartDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'暂停用户结束日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_LockEndDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一次访问时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_FirstVisitTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上一次访问时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_PreviousVisitTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后访问时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_LastVisitTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改密码日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_ChangePasswordDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许同时有多用户登录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_MultiUserLogin'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录次数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_LogOnCount'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线状态' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_UserOnLine'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码提示问题' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_Question'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码提示答案' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_AnswerQuestion'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否访问限制' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_CheckIPAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统语言' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_Language'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统样式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn', @level2type=N'COLUMN', @level2name=N'F_Theme'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户登录信息表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_UserLogOn'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_User](
	[F_Id] [varchar](50) NOT NULL,
	[F_Account] [varchar](50) NULL,
	[F_RealName] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_HeadIcon] [varchar](50) NULL,
	[F_Gender] [bit] NULL,
	[F_Birthday] [datetime] NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_SecurityLevel] [int] NULL,
	[F_Signature] [varchar](500) NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_DepartmentId] [varchar](500) NULL,
	[F_RoleId] [varchar](500) NULL,
	[F_DutyId] [varchar](500) NULL,
	[F_IsAdministrator] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
 CONSTRAINT [PK_SYS_USER] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_Account'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_RealName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呢称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_NickName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_HeadIcon'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_Gender'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_Birthday'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_MobilePhone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_Email'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_WeChat'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主管主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_ManagerId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全级别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_SecurityLevel'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个性签名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_Signature'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_OrganizeId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_DepartmentId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_RoleId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_DutyId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_IsAdministrator'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_DeleteMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效标志' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_EnabledMark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_Description'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_LastModifyTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_LastModifyUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_DeleteTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User', @level2type=N'COLUMN', @level2name=N'F_DeleteUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_User'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sys_RoleAuthorize]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sys_RoleAuthorize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemType] [int] NULL,
	[F_ItemId] [varchar](50) NULL,
	[F_ObjectType] [int] NULL,
	[F_ObjectId] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
 CONSTRAINT [PK_SYS_ROLEAUTHORIZE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色授权主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_Id'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目类型1-模块2-按钮3-列表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_ItemType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_ItemId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象分类1-角色2-部门-3用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_ObjectType'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对象主键' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_ObjectId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_SortCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_CreatorTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN', @level2name=N'F_CreatorUserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色授权表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Sys_RoleAuthorize'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[S_IndexImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[S_IndexImages](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Title] [varchar](100) NULL CONSTRAINT [DF_S_IndexImages_E_Title]  DEFAULT (''),
	[E_IsLock] [varchar](10) NULL CONSTRAINT [DF_S_IndexImages_E_IsLock]  DEFAULT ((1)),
	[E_Time] [datetime] NULL CONSTRAINT [DF__S_IndexIm__E_Tim__6EF57B66]  DEFAULT (getdate()),
	[E_Img] [varchar](300) NULL CONSTRAINT [DF_S_IndexImages_E_Img]  DEFAULT (''),
	[E_Href] [varchar](400) NULL CONSTRAINT [DF_S_IndexImages_E_Href]  DEFAULT ('#'),
	[E_Type] [varchar](50) NULL CONSTRAINT [DF_S_IndexImages_E_Type]  DEFAULT (''),
	[E_Order] [int] NULL CONSTRAINT [DF_S_IndexImages_E_Order]  DEFAULT ((0)),
 CONSTRAINT [PK__S_IndexImages__6E01572D] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JG_ExpertTeam]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JG_ExpertTeam](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Name] [varchar](50) NULL,
	[E_Sex] [char](1) NULL CONSTRAINT [DF__JG_Expert__E_Sex__1EA48E88]  DEFAULT ((1)),
	[E_IsLook] [char](1) NULL,
	[E_IsTou] [char](1) NULL,
	[E_CardImg] [varchar](300) NULL,
	[E_Address] [varchar](100) NULL,
	[E_HY] [varchar](20) NULL,
	[E_Company] [varchar](100) NULL,
	[E_Job] [varchar](100) NULL,
	[E_LinkPhone] [varchar](50) NULL,
	[E_EMail] [varchar](50) NULL,
	[E_CJ] [text] NULL,
	[E_Texts] [text] NULL,
 CONSTRAINT [PK__JG_ExpertTeam__1DB06A4F] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_Name'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_Sex'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_IsLook'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_IsTou'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_CardImg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_Address'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属行业' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_HY'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构单位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_Company'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_Job'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_LinkPhone'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_EMail'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要成就' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_CJ'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细介绍' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam', @level2type=N'COLUMN', @level2name=N'E_Texts'

GO
EXEC sys.sp_addextendedproperty @name=N'机构-专家团队', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'JG_ExpertTeam'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Info_member]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE proc [dbo].[sp_Info_member]
(
  @MemberID int
)
as
begin
	--基本信息
	select * 
	from sp_Member
	where MemberID=@MemberID

	--积分变动
	select 
	PointID
	,MenberID
	,ChangeNum
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.ChangeType) as ChangeType
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.TradingType) as TradingType
	,TradingNO
	,CreateTime
	,Remark
	from sp_MemberPointRecord as A
	where MenberID=@MemberID

    --收货地址
	select 
	AddressID
	,MemberID
	,Countries
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.SF) as SF
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.CS) as CS
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.QX) as QX
	,Adress
	,ZipCode
	,UserName
	,MobileCode
	,Mobile
	,TelCode
	,Tel
	,(case when IsMain=''true'' then ''默认'' else '''' end) IsMain
    from sp_MemberAddress as A
    where MemberID=@MemberID

    --订单信息
	select 
	OrderID
	,OrderNo
	,OrderJiao
	,OrderTime
	,[Money]
	,(case when State=''1'' then ''未付款'' when State=''2'' then ''待发货'' when State=''3'' then ''已发货''  when State=''4'' then ''退款'' when State=''5'' then ''完成'' else '''' end ) as State
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.PayType) as PayType
	,PayTime
	,UserName
	,Mobile
	,(select sum(ProductNum) from sp_OrderDetail where OrderNO=A.OrderID) as ProdNum
	from sp_OrderTrade as A
	where MemberID=@MemberID

   select 1 as success


	--产品收藏
	select 
	A.CollID
	,A.ProdID
	,B.ProdName
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.CollType) as CollType
	,A.CreateTime
	,A.MenberID
	from sp_ProdCollect as A left join sp_Product as B
		 on A.ProdID=B.ProdID
	where MenberID=@MemberID


	--产品浏览
	select 
	A.LookID
	,A.ProdID
	,B.ProdName
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.LookType) as CollType
	,A.CreateTime
	,A.MenberID
	from sp_ProdLooked as A left join sp_Product as B
		 on A.ProdID=B.ProdID
	where MenberID=@MemberID


   --优惠券
   select 1 as  success


   --订单评价
	select 
	A.EvalID
	,C.OrderNo
	,A.OrderID
	,A.EvalTime
	,A.MenberID
	,A.ProductID
	,B.ProdName
	,A.EvalNum
	,(select F_ItemName from Sys_ItemsDetail where F_Id=A.IsGood) as IsGood
	,A.ZanNum
	,A.ShopMenberID
	,A.MenberIP
	,A.EvalText
	,A.ShopEvalText
	,A.ShopEvalTime
	,A.ShopUserName
	from sp_OrderEvaluation as A left join sp_Product as B
		 on A.ProductID=B.ProdID
		 left join (select * from sp_OrderTrade  where  OrderID in(select OrderID from sp_OrderEvaluation where MenberID=@MemberID )) as C
		 on A.OrderID=C.OrderID
	where MenberID=@MemberID


  --会员卡
  select
    CardID,
	CardNo,
	MemberID,
	IsMain,
	balance,
	dbo.return_card_Case([Case]) as [Case],
	Create_date,
	Active_date,
	Last_date,
	(select F_ItemName from Sys_ItemsDetail where F_Id=A.[Level])  as [Level],
	Reward,
	Last_use_date,
	Freeze,
	Byshop,
	Credit,
	(select F_ItemName from Sys_ItemsDetail where F_Id=A.[Type]) as [Type] 
  from sp_MemberCard as A
  where MemberID=@MemberID







end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_Grid_Member]'))
EXEC dbo.sp_executesql @statement = N'CREATE view [dbo].[view_Grid_Member]
as
select 
M.MemberID
,M.MenberName
,isnull(M.Card,'''') as Card
,M.CreateTime
,M.LastTime
,M.ActiveIP
,M.LastIP
,isnull(M.MenberType,'''') as MenberType
,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=M.MenberType) as MenberTypeName
,M.IsLock
,(case when M.IsLock=''1'' then ''是'' else ''否'' end) as IsLockName
,isnull(M.State,'''') as State
,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=M.State) as StateName
,M.Money
,M.Integral
,isnull(M.Level,'''') as Level
,isnull(L.LevelName,'''') as LevelName
,isnull(M.WeiCard,'''') as WeiCard
,(select count(1) from sp_MemberCard where MemberID=M.MemberID) as CardCount
,U.Email
,U.UserName
,U.CardID
,U.BirthdayType
,U.Birthday
,(case when U.Sex=''1'' then ''男'' when U.Sex=''0'' then ''女'' else ''未知'' end) as Sex
,U.SF
,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=U.SF) as SFName
,U.CS
,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=U.CS) as CSName
,U.QX
,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=U.CS) as QXName
,U.Adress
,U.Tel
,U.ZipCode 
from sp_Member as M left join sp_MemberUser as U on M.MemberID=U.MemberID
     left join sp_MemberLevel as L on M.Level=L.LevelID
     










' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_Grid_MemberCard]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[view_Grid_MemberCard]
as

select 
C.CardID
,C.CardNo
,C.MemberID
,M.MenberName
,U.Email
,U.UserName
,U.CardID as Carm
,U.BirthdayType
,U.Birthday
,U.Sex
,U.Tel
,U.ZipCode
,C.IsMain
,C.balance
,C.[Case]
,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=C.[Case]) as CaseName
,C.Create_date
,C.Active_date
,C.Last_date
,C.Level
,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=C.Level) as LevelName
,C.Reward
,C.Last_use_date
,C.Freeze
,C.Byshop
,C.Credit
,C.Type
from sp_MemberCard as C left join sp_Member as M on C.MemberID=M.MemberID
     left join sp_MemberUser as U on U.MemberID=C.MemberID




' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Grid_Member_Coll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE proc [dbo].[sp_Grid_Member_Coll]
(
 @MemberID int,
 @Product varchar(50)='''',
 @ProType varchar(20)='''',
 @IsDown varchar(10)='''',
 @IsLook varchar(10)='''',
 @SDate varchar(20)='''',
 @EDate varchar(20)='''',
 @CollType varchar(20)='''',
 @page int=1,
 @pagesize int=15
)
as
-- 会员收藏 2016-12-04
-- sp_Grid_Member_Coll 3
begin
 if @SDate=''''
  begin
    set @SDate=dateadd(month,-6,getdate())
  end

if @EDate=''''
  begin
    set @EDate=getdate()
  end
 
 if @IsLook=''''
  begin
    set @IsLook=''false''
  end

 select ProdID,[Money]
 into #ProColl
 from sp_ProdCollect
 where MenberID=@MemberID and CreateTime between @SDate and @EDate and CollType like ''%''+@CollType+''%''
 
 select p.ProdID,ProdName,merchantsID,MainImg,One,Two,Wcategory,p.[Money],Market
 ,IsDel,IsJia,(case when p.[Money]<c.[Money] then 1 else 0 end) as isjiang
 into #Into_prod
 from sp_Product as p join #ProColl as c on p.ProdID=c.ProdID
 where (IsDel=@IsLook or IsJia=@IsLook)
       and Two like ''%''+(case when @ProType='''' then '''' else @ProType end)+''%'' 
       and ProdName like ''%''+@Product+''%''
 
 
 select *
 from (
		select row_number()over(order by ProdID desc)row,*
		from #Into_prod t
 )tt
 where row>=(@page-1)*@pagesize and row<@page*@pagesize

  
 select Two as id,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=p.Two) as name,count(1) as num
 from #Into_prod as p  
 group by  Two
 
 
 select (select count(1) from #Into_prod) as counts,(select count(1) from #Into_prod where isjiang=1) as jiangnum,(select count(1) from #Into_prod where IsDel=''true'' or IsJia=''false'') as looknum
  
 select count(1) as counts from #Into_prod 


end








































' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Save_Regitermember]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


 

CREATE proc [dbo].[sp_Save_Regitermember]
(
   @MenberName varchar(50),
   @BasePass varchar(50),
   @Md5Pass varchar(50),
   @Email  varchar(50),
   @Tel  varchar(50)
)
as
begin
 if(select count(1) from sp_Member where MenberName=@MenberName)>0
   begin
    select ''-1'' as code,''用户已经存在'' as mess
    return
   end  
 
 if(select count(1) from sp_MemberUser where Email=@Email)>0
   begin
    select ''-1'' as code,''该邮箱已经存在'' as mess
    return
   end  

 if(select count(1) from sp_MemberUser where Tel=@Tel)>0
   begin
    select ''-1'' as code,''该手机号码已经存在'' as mess
    return
   end  
 
 insert into sp_Member
 (MenberName,PassWord,MD5Pass)
 select @MenberName,@BasePass,@Md5Pass
 
 declare @MemberID int
 set @MemberID=(select top 1 MemberID from sp_Member where MenberName=@MenberName )

 insert into sp_MemberUser
 (MemberID,Email,Tel)
 select @MemberID,@Email,@Tel

 select ''1'' as code,''注册成功'' as mess

end

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Grid_MemberBack]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc [dbo].[sp_Grid_MemberBack]
( 
    @Name varchar(50)='''', 
    @BackNo varchar(50)='''',
    @BackType varchar(10)='''',
    @BackArea varchar(50)='''',
    @MemMerType varchar(10)='''',
    @page int=1,
    @pagesize int=15
)
as
-- 会员关联银行卡
begin


 select *
 into #Into_tab
 from (
    select row_number()over(order by A.BackID desc)row
    ,A.BackID
    ,A.MemberID
    ,M.MenberName
    ,A.Name
	,A.BackNo
	,A.BackType
	,(select top 1 F_ItemName from Sys_ItemsDetail where F_Id=A.BackType) as BackTypeName 
	,A.BackArea
	,A.BackTime
	,A.BackName
	,A.BackCode
	,A.Attribute
    ,A.MemMerType
    from sp_MemberBack as A left join sp_Member as M on A.MemberID=M.MemberID
    where (M.MenberName like ''%''+@Name+''%'' or A.[Name] like ''%''+@Name+''%'' )
           and isnull(A.BackNo,'''') like ''%''+@BackNo+''%''
           and isnull(A.BackType,'''') like ''%''+@BackType+''%''
		   and isnull(A.BackArea,'''') like ''%''+@BackArea+''%''
		   and cast(A.MemMerType as varchar(10)) like ''%''+@MemMerType+''%''
 )tt
 where row>=(@page-1)*@pagesize and row<@page*@pagesize   

 select * from #Into_tab
 
 select isnull(max(row),0) as count from #Into_tab


     
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Grid_MemberAddress]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[sp_Grid_MemberAddress]
(
@name varchar(30)='''',
@islock varchar(10)='''',
@page int=1,
@pagesize int=15 
)
as
begin
  
 select *
 into #Into_tab
 from (
    select row_number()over(order by A.AccountID desc)row
    ,A.AccountID
    ,A.AccountName 
    ,A.MerchantID
	,A.MerchantName
	,A.IsMain
	,A.DepartID 
	,A.IsLock
	,A.LockTime
	,A.CreateTime
	,A.LastTime
	,A.LastIP
    ,M.MerType
    ,M.MerName
	,M.LinkName
	,M.Phone
	,M.Modbile
	,M.ZhuAddress
	,M.UserAddress
	,M.Email
	,M.Fax
	,M.CardImg
	,M.ComCard 
    from sp_MerchantAccess as A left join sp_Merchants as M on A.MerchantID=M.MerchantID
    where (A.AccountName like ''%''+@name+''%'' or A.MerchantName like ''%''+@name+''%'' )
           and isnull(A.IsLock,'''') like ''%''+@islock+''%'' 
 )tt
 where row>=(@page-1)*@pagesize and row<@page*@pagesize   

 select * from #Into_tab
 
 select isnull(max(row),0) as count from #Into_tab 


end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Grid_member]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N' 
CREATE proc [dbo].[sp_Grid_member]
(
  @MenberName varchar(30)='''', -- 用户名  电子邮箱  手机号码
  @Card varchar(30)='''', -- 会员卡号[主卡]
  @Level varchar(30)='''', -- 会员等级
  @WeiCard varchar(30)='''', -- 会员微信号
  @State varchar(30)='''', -- 状态
  @page int=1,
  @pagesize int=15
)
as
-- 2016-12-10 
-- 会员列表
begin

 

 select *
 from (
		select row_number()over(order by MemberID desc)row,*
		from view_Grid_Member
		where
			   State like ''%''+@State+''%''
			   and  Level like ''%''+@Level+''%''
			   and (MenberName like ''%''+@MenberName+''%'' or Email like ''%''+@MenberName+''%'' or UserName like ''%''+@MenberName+''%'')
			   and Card like ''%''+@Card+''%''
			   and WeiCard like ''%''+@WeiCard+''%''
 )tt
 where row>=(@page-1)*@pagesize and row<@page*@pagesize
 





end' 
END
