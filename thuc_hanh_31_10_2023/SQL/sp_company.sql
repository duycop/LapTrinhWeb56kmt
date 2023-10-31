USE [ThucHanh]
GO
/****** Object:  StoredProcedure [dbo].[SP_Company]    Script Date: 31/10/2023 10:47:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author     :	do duy cop
-- Create date: 31.10.2023
-- Description:	xu ly cong ty
-- =============================================
ALTER PROCEDURE [dbo].[SP_Company]
	@action		nvarchar(50) = 'list_company',
	@id			int = null,
	@name		nvarchar(255) = null,
	@address	nvarchar(255) = null,
	@lat		float=null,
	@lng		float=null,
	@phone		varchar(50)=null,
	@zalo		varchar(100)=null
AS
BEGIN
	declare @json nvarchar(max)='';	

	if(@action='edit_company')
	begin
		update [Company] 
		set [name]=@name, [address]=@address,[lat]=@lat,[lng]=@lng,[phone]=@phone,zalo=@zalo 
		where [id]=@id;		

		set @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã sửa thành công!"}')
		select @json as json;
	end	
	else if(@action='add_company')
	begin
		INSERT INTO [Company]([name],[address],[lat],[lng],[phone])
		VALUES (@name,@address,@lat,@lng,@phone);

		set @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã thêm thành công công ty "}');
		select @json as json;
	end	
	else
	if(@action='delete_company')
	begin
		update company set del_at=getdate() where id=@id;
		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa thành công công ty"}')
		select @json as json;
	end
	if(@action='list_company')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","address":"%s","lat":%s,"lng":%s,"phone":"%s","zalo":"%s"},',
						[id],[name],isnull(replace([address],'"','\"'),''),str([lat],10,10),str([lng],10,10),[phone],[zalo])
		from [Company]
		where del_at is null
		order by [id];

		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"không có dữ liệu","data":[]}' as json;
		else
		  begin
			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"ok","data":['+left(@json,len(@json)-1)+']}' as json;
		  end
	end
END

