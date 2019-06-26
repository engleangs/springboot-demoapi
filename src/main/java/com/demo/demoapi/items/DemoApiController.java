package com.demo.demoapi.items;

import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController()
@RequestMapping("/api/v10/demo")
public class DemoApiController {
    @RequestMapping(method = RequestMethod.GET)
    public List<Item> getItems()
    {
     List<Item>items = new ArrayList<>();
     items.add( new Item("Computer", 10));
     items.add( new Item("Mobile Phone", 5));
     items.add( new Item("Tablet", 7));
     return items;
    }

}
