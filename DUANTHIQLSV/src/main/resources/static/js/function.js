function confirmDelete() {
            return confirm("Bạn có chắc chắn muốn xóa không?");
        }

function changeSearchInput() {
            var searchType = document.getElementById("searchType").value;
            var searchValueDiv = document.getElementById("searchValueDiv");
            if (searchType === "gioiTinh") {
                searchValueDiv.innerHTML = '<select name="searchValue" class="form-control">' +
                                           '<option value="Nam">Nam</option>' +
                                           '<option value="Nữ">Nữ</option>' +
                                           '</select>';
            } else {
                searchValueDiv.innerHTML = '<input type="text" name="searchValue" class="form-control" placeholder="Nhập giá trị tìm kiếm">';
            }
        }        