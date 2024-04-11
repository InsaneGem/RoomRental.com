package com.org.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.ItemDao;
import com.org.dao.ProductDao;
import com.org.dao.UserDao;
import com.org.daoImplementation.ProductDaoImplementation;
import com.org.dto.Item;
import com.org.dto.Product;
import com.org.dto.Seller;
import com.org.dto.User;

@Controller
public class ItemController {
	@Autowired
	ProductDao productDao;

	@Autowired 
	UserDao userDao;

	@Autowired
	ItemDao itemDao;

	@GetMapping("/reserved")
	public ModelAndView addtoCart(@RequestParam int productId, HttpSession session) {
		Object object = session.getAttribute("userId");
		if (object != null) {
			Product product = productDao.FetchProductById(productId);
			Item item = new Item();
			item.setName(product.getName()); 
			item.setPrice(product.getPrice()); 
			item.setAddress(product.getAddress()) ;
			item.setDescription(product.getDescription());
			item.setAvailability(product.getAvailability());
			item.setCctv(product.getCctv());
			item.setNumberofrooms(product.getNumberofrooms());
			item.setWatercost(product.getWatercost());
			item.setTypeofroom(product.getTypeofroom());
			item.setId(productId);
			item.setProduct(product);

			int userId = (int) session.getAttribute("userId"); 
			User user = userDao.FetchUserByID(userId); 
			List<Item> items = user.getItems();
			if(items == null)
			{
				items = new ArrayList<>();
			}
			items.add(item);

			user.setItems(items); 
			item.setUser(user);
			
			itemDao.SaveAndUpdateItems(item);
			ModelAndView mav = new ModelAndView("User/user_reserved_room.jsp");
			mav.addObject("reserved", productId);
			session.setAttribute("reserved", productId);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("User/user_login.jsp");
			mav.addObject("add_item_fail", "Enter Email & Password First !");
			return mav;
		}
	}

	@GetMapping("/room_payment")
	public ModelAndView roomPayment(@RequestParam int itemId,HttpSession session) {
		Object obj = session.getAttribute("userId");
		if(obj!=null)
		{
		int id = (int) session.getAttribute("reserved");
		Product productById = new ProductDaoImplementation().FetchProductById(id);
		Item itemsById = itemDao.FetchItemsById(itemId);
		productById.setItem(itemsById);
		productDao.SaveAndUpdateProduct(productById);
		ModelAndView mav = new ModelAndView("User/user_home.jsp");
		return mav;
		}
		ModelAndView mav = new ModelAndView("User/user_login.jsp");
		mav.addObject("error", "Enter Email and Password First!");
		return mav;
	}
	@GetMapping("/sellerviewProduct")
	public ModelAndView sellerviewproduct(HttpSession session) {
		Object object = session.getAttribute("sellerId");
		if (object != null) {
			ModelAndView mav = new ModelAndView("Seller/view_product.jsp");
			return mav;
		}
		ModelAndView mav = new ModelAndView("Seller/seller_login.jsp");
		mav.addObject("sellerviewproduct", "Enter Email and Password First!");
		return mav;
	}

	@GetMapping("/viewroom")
	public ModelAndView viewDetails(@RequestParam int productId, HttpSession session) {
		Product product = productDao.FetchProductById(productId);
		session.setAttribute("viewroom", product);
		ModelAndView modelAndView = new ModelAndView("User/room_details.jsp");
		return modelAndView;
	}
	

}
