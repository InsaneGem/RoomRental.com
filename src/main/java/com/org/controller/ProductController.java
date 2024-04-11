package com.org.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.ProductDao;
import com.org.dao.SellerDao;
import com.org.dto.Item;
import com.org.dto.Product;
import com.org.dto.Seller;
import com.org.dto.User;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	@Autowired
	SellerDao sellerDao;

	@PostMapping("/addProduct")
	public ModelAndView addProduct(@ModelAttribute Product product, HttpSession session) {
		Object obj = session.getAttribute("sellerId");
		if (obj != null) {
			ModelAndView mav = new ModelAndView("Seller/add_property.jsp");
			int sellerId = (int) session.getAttribute("sellerId");
			Seller sellerById = sellerDao.FetchSellerById(sellerId);
			List<Product> products = sellerById.getProducts();
			if(products == null)
			{
				products = new ArrayList<>();
			}
			products.add(product);
			product.setSeller(sellerById);
			productDao.SaveAndUpdateProduct(product);
			mav.addObject("success", "Product Added SuccessFully");
			return mav;
		}
		ModelAndView mav = new ModelAndView("Seller/seller_login.jsp");
		mav.addObject("addproduct", "Enter Email & Password First !");
		return mav;
	}
	@GetMapping("/userdetailswithproperty")
	public ModelAndView userdetailswithproperty(@RequestParam int productId, HttpSession session) {
		Object obj = session.getAttribute("sellerId");
		if (obj != null) {
			Product product = productDao.FetchProductById(productId);
			Item item = product.getItem();
			if(item!=null)
			{
			User user = item.getUser();
				session.setAttribute("details", user);
				session.setAttribute("product", productId);
				ModelAndView modelAndView = new ModelAndView("Seller/seller_room_details.jsp");
				return modelAndView;
			}
			else
			{
				ModelAndView mav = new ModelAndView("Seller/view_product.jsp");
				mav.addObject("noitem","Not Occupied");
				return mav;
			}
			
		}
		ModelAndView mav = new ModelAndView("Seller/seller_login.jsp");
		mav.addObject("addproduct", "Enter Email & Password First !");
		return mav;
	}

	@GetMapping("/income")
	public ModelAndView seller_ALL_room_details( HttpSession session) {
		Object object = session.getAttribute("sellerId");
		if(object!=null) {
		int sellerId = (int) session.getAttribute("sellerId");
		
		Seller byId = sellerDao.FetchSellerById(sellerId);
		List<Product> list2 = byId.getProducts();
		for(Product p : list2)
		{
			Item item = p.getItem();
			if(item!=null)
			{
			User user = item.getUser();
				session.setAttribute("alldetails", user);
				ModelAndView modelAndView = new ModelAndView("Seller/monthly_income.jsp");
				return modelAndView;
			}
			else
			{
				ModelAndView modelAndView = new ModelAndView("Seller/monthly_income.jsp");
				modelAndView.addObject("notalldetails", "No property Present");
				return modelAndView;
			}
		}
		}
		ModelAndView modelAndView = new ModelAndView("Seller/seller_login.jsp");
		return modelAndView;
		
	}
}
