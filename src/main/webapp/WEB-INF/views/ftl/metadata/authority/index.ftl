<h2 class="text-center heading">user列表</h2>
<div id="jsGrid"></div>
<script>

    $("#jsGrid").jsGrid({
        width: "100%",

        inserting: true,
        editing: true,
        sorting: true,
        paging: true,
        filtering: true,
        autoload: true,

        controller: {
            loadData: function (filter) {
                return $.ajax({
                    type: "GET",
                    url: "${request.contextPath}/metadata/soaparam/detail.json",
                    data: filter
                });
            },

            insertItem: function (item) {
                return $.ajax({
                    type: "POST",
                    url: "${request.contextPath}/metadata/soaparam/insert",
                    data: item

                });
            },

            updateItem: function (item) {
                return $.ajax({
                    type: "PUT",
                    url: "${request.contextPath}/metadata/soaparam/update?id="+item.id+"&name="+item.name+"&url="+item.url+
                        "&request="+item.request+"&response="+item.response,
                    data: convertItem(item)
                });
            },


            deleteItem: function (item) {
                return $.ajax({
                    type: "DELETE",
                    url: "${request.contextPath}/metadata/soaparam/delete?id="+item.id,
                    data: convertItem(item)
                });
            },
        },

        pageSize: 15,
        pageButtonCount: 5,

        deleteConfirm: function (item) {
            return "The client \"" + item.engName + "\" will be removed. Are you sure?";
        },
        rowClick: function (args) {

        },
        onItemInserting: function (args) {
            // cancel insertion of the item with empty 'name' field
            if (args.item.name === "") {
                args.cancel = true;
                alert("Specify the name of the item!");
            }
        },

//        onItemInserted: function (args) {
//            location.reload();
//            //this.controller.loadData();
//        },

        fields: [
            {name: "id", type: "number", width: 50, visible: false},
            {name: "name", type: "text", width: 50,align:"center"},
            {name: "url", type: "text", width: 200,align:"center"},
            {name: "request", type: "text", width: 200,
                itemTemplate:function(value,item){
                    //return $("<div></div>").JSONView(value,{collapsed:true,nl2br:true});
                    return FirstLoadColl(CustomProcess($("<div></div>"),value));
                }
            },
            {name: "response", type: "text", width: 50,align:"center"},
            {type: "control",align:"center"}
        ]
    });

    function convertItem(item) {
        item.isEnabled = Number(item.isEnabled);
        if (item.dataChange_LastTime) {
            delete item.dataChange_LastTime;
        }
        item.strategySchema="";
        return item;
    }

</script>