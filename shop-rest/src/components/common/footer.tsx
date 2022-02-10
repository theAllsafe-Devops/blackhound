import Search from "@components/common/search";
import { useUI } from "@contexts/ui.context";
import { BannerType } from "@settings/site-pages.settings";
import Image from "next/image";
import { Waypoint } from "react-waypoint";
import cn from "classnames";
import { useTranslation } from "next-i18next";
import Logo from "@components/ui/logo";
import { ROUTES } from "@utils/routes";
type BannerProps = {
  banner: BannerType;
  className?: string;
};
const Banner: React.FC<BannerProps> = ({ banner, className }) => {
  const { t } = useTranslation("banner");
  const { showHeaderSearch, hideHeaderSearch } = useUI();
  const onWaypointPositionChange = ({
    currentPosition,
  }: Waypoint.CallbackArgs) => {
    if (!currentPosition || currentPosition === "above") {
      showHeaderSearch();
    }
  };
  return (
    <div class="w-full flex flex-col px-5 md:px-10 lg:px-[50px] xl:px-16 bg-white lg:border-b-8 border-gray-800">
      <div class="grid grid-cols-[repeat(auto-fill,minmax(260px,1fr))] md:grid-cols-3 xl:grid-cols-[repeat(auto-fill,minmax(220px,1fr))] 2xl:grid-cols-5 gap-6 xl:gap-8 w-full pt-16">
        <div class="flex flex-col">
          <div class="h-24 mb-[2px] flex items-start">
              <a class="inline-flex" href="/">
                <span class="overflow-hidden relative w-32 md:w-40 h-32">
                  <Logo className="mx-auto lg:mx-0" />
                </span>
              </a>
            </div>
          </div>
        <div class="flex flex-col">
          <h3 class="text-heading font-semibold mt-3 mb-4 lg:mb-7">Explore</h3>
          <ul class="space-y-3">
            <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/">FAQ</a></li>
            <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/">Contact</a></li>
          </ul>
        </div>
        <div class="flex flex-col">
          <h3 class="text-heading font-semibold mt-3 mb-4 lg:mb-7">Customer Service</h3>
          <ul class="space-y-3">
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/help">FAQ &amp; Helps</a></li>
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/">Returns</a></li>
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/">text-accessibility"</a></li>
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/contact">Contact Us</a></li>
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/">Store Pickup</a></li>
          </ul></div><div class="flex flex-col">
          <h3 class="text-heading font-semibold mt-3 mb-4 lg:mb-7">Our information</h3>
          <ul class="space-y-3">
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/privacy">Privacy policy update</a></li>
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/terms">Terms &amp; conditions</a></li>
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/">Return Policy</a></li>
          <li><a class="text-sm text-heading transition-colors hover:text-orange-500" href="/">Sitemap</a></li>
          </ul>
          </div>
          <div class="flex flex-col">
            <h3 class="text-heading font-semibold mt-3 mb-4 lg:mb-7">Company Info</h3>
            <address class="text-sm text-heading mb-7 not-italic">115, Lucknow, UP
            </address>
            <span class="text-sm text-heading mb-1">Blackhound@Blackhound.com</span>
            <span class="text-sm text-heading">+91 9917649167</span>
          </div>
              </div>
              <div class="pb-12 pt-8 mt-8 lg:mt-0 flex w-full flex-col lg:flex-row items-center lg:justify-between border-t border-gray-200 lg:border-t-0">
              <span class="text-sm text-heading order-2 lg:order-1">©Copyright 2022 
                <a class="text-heading font-bold transition-colors hover:text-accent" href="">Blackhound Shoes.</a>
                All rights reserved
              </span>
              <div class="flex items-center space-s-5 order-1 lg:order-2 mb-5 lg:mb-0">
              </div>
          </div>
        </div>
  );
};

export default Banner;
