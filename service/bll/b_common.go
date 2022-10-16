package bll

import (
	"insight-admin/service/menu_service"
	"insight-admin/service/role_service"
	"insight-admin/service/user_service"
)

type Common struct {
	UserAPI *user_service.User `inject:""`
	RoleAPI *Role_service.Role `inject:""`
	MenuAPI *menu_service.Menu `inject:""`
}
