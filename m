Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4EA7355610
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 16:07:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232453AbhDFOHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 10:07:18 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:38944 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232880AbhDFOHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 10:07:18 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4D24F8E5;
        Tue,  6 Apr 2021 16:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1617718029;
        bh=/3GE3lzhJCBT8cc4IKQOvSkmh9aURunrxqH3q0Dl3k8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YeranOMmXb7iLi2XJ6/Sb6mq8fiT4ais2pwSXEFcdrMCO3/h8Pe9h/TxyicZQoR6n
         5XSgr9ipiziWEFJjO0NytQ5rUoPxRgT++fyNaT3H26i4tEZHAl8AGMc3oanWK0OHL5
         /v0XFL78Xq4+xdp2uYI9suxAeMaR40Vz4kzThVeY=
Date:   Tue, 6 Apr 2021 17:06:25 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marco Hoefle <marco@hoefle.co>
Cc:     devicetree@vger.kernel.org
Subject: Re: Documentation to the Xilinx PSGTR Phy device-tree not clear
Message-ID: <YGxq4QN7dN+flaDa@pendragon.ideasonboard.com>
References: <b54c4397-72a2-4b6e-e6a4-8c4dc6ef2814@hoefle.co>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b54c4397-72a2-4b6e-e6a4-8c4dc6ef2814@hoefle.co>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marco,

On Tue, Apr 06, 2021 at 03:54:06PM +0200, Marco Hoefle wrote:
> Hi,
> 
> we try to port the mainline Kernel to a Xilinx board.
> 
> The default peripherals do work. The blocking point now is the zynqmp 
> psgtr driver.
> 
> The mainline documentation can be found here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> 
> It is lacking a complete example on how to wire up a peripheral phy with 
> the PS GTR driver.
> 
> 
> The one in the Xilinx tree for Kernel 5.4 contains an example which is 
> missing in the mainline documentation in my opinion:
> 
> https://github.com/Xilinx/linux-xlnx/blob/4ecd768dea75a0cc0bea91069a570981aa700744/Documentation/devicetree/bindings/phy/phy-zynqmp.txt
> 
> 
> It seems the PHY handle mechanism has changed and the "old" Xilinx way 
> doesn't work anymore.
> 
> This was the previous way to "marry" the PS GTR driver with the USB 3 
> driver:
> 
>         serdes: zynqmp_phy@fd400000 {
>              compatible = "xlnx,zynqmp-psgtr-v1.1";
>              status = "disabled";
>              reg = <0x0 0xfd400000 0x0 0x40000>,
>                    <0x0 0xfd3d0000 0x0 0x1000>;
>              reg-names = "serdes", "siou";
>              nvmem-cells = <&soc_revision>;
>              nvmem-cell-names = "soc_revision";
>              resets = <&zynqmp_reset ZYNQMP_RESET_SATA>, <&zynqmp_reset ZYNQMP_RESET_USB0_CORERESET>,
>                   <&zynqmp_reset ZYNQMP_RESET_USB1_CORERESET>, <&zynqmp_reset ZYNQMP_RESET_USB0_HIBERRESET>,
>                   <&zynqmp_reset ZYNQMP_RESET_USB1_HIBERRESET>, <&zynqmp_reset ZYNQMP_RESET_USB0_APB>,
>                   <&zynqmp_reset ZYNQMP_RESET_USB1_APB>, <&zynqmp_reset ZYNQMP_RESET_DP>,
>                   <&zynqmp_reset ZYNQMP_RESET_GEM0>, <&zynqmp_reset ZYNQMP_RESET_GEM1>,
>                   <&zynqmp_reset ZYNQMP_RESET_GEM2>, <&zynqmp_reset ZYNQMP_RESET_GEM3>;
>              reset-names = "sata_rst", "usb0_crst", "usb1_crst",
>                        "usb0_hibrst", "usb1_hibrst", "usb0_apbrst",
>                        "usb1_apbrst", "dp_rst", "gem0_rst",
>                        "gem1_rst", "gem2_rst", "gem3_rst";
>              lane0: lane0 {
>                  #phy-cells = <4>;
>              };
>              lane1: lane1 {
>                  #phy-cells = <4>;
>              };
>              lane2: lane2 {
>                  #phy-cells = <4>;
>              };
>              lane3: lane3 {
>                  #phy-cells = <4>;
>              };

The nvmem and reset properties, as well as the lane sub-nodes, are not
needed with the mainline driver.

>          };
> 
> 
> &dwc3_0 {
>      status = "okay";
>      dr_mode = "peripheral";
>      phy-names = "usb3-phy";
>      phys = <&lane2 4 0 0 26000000>;
>      maximum-speed = "super-speed";
> };

A PHY consumer example is indeed missing, but doesn't this belong to the
consumer DT bindings instead ?

-- 
Regards,

Laurent Pinchart
