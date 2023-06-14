local attach_to_buffer = function(output_bufnr,command)
    vim.api.nvim_create_autocmd("BufWritePost",{
        group = vim.api.nvim_create_augroup("Aman's group",{clear=true}),
        pattern = "*.go",
        callback = function()
            local append_data = function(_,data)
                if data then 
                    vim.api.nvim_buf_set_lines(output_bufnr,-1,-1,false,data)
                end 
            end 

            vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "output of: main.go"})
            vim.fn.jobstart({command},{
                stdout_buffered = true, -- gives the output one line at a time 
                on_stdout = append_data,
                on_stderr = append_data,
            })
        end,
    })
end 

attach_to_buffer(34,{"go", "run", "main.go"} )
