Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 757DF356407
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 08:35:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345203AbhDGGfx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 02:35:53 -0400
Received: from mail.azure.hoefle.co ([51.145.193.23]:60860 "EHLO
        mail.azure.hoefle.co" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232976AbhDGGfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 02:35:52 -0400
Received: from hoefle.co (119.254.200.213.static.wline.lns.sme.cust.swisscom.ch [213.200.254.119])
        by mail.azure.hoefle.co (Postfix) with ESMTPSA id 63CAD13D2F0
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 08:35:42 +0200 (CEST)
Received: from [192.168.222.165] (unknown [213.200.254.119])
        by hoefle.co (Postfix) with ESMTPSA id 1776240B83
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 08:35:42 +0200 (CEST)
Subject: Documentation belonging to the Xilinx PSGTR Phy device-tree not clear
References: <b54c4397-72a2-4b6e-e6a4-8c4dc6ef2814@hoefle.co>
To:     devicetree@vger.kernel.org
From:   Marco Hoefle <marco@hoefle.co>
X-Forwarded-Message-Id: <b54c4397-72a2-4b6e-e6a4-8c4dc6ef2814@hoefle.co>
Message-ID: <1e5ec988-d85f-5369-c57d-6ce94fe69313@hoefle.co>
Date:   Wed, 7 Apr 2021 08:35:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <b54c4397-72a2-4b6e-e6a4-8c4dc6ef2814@hoefle.co>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

@Laurent: it looked like I was not subscribed properly to the list, sorry.

We try to port the mainline Kernel to a Xilinx board.

The default peripherals do work. The blocking point now is the zynqmp 
psgtr driver.

The mainline documentation can be found here:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml

It is lacking a complete example on how to wire up a peripheral phy with 
the PS GTR driver.


The one in the Xilinx tree for Kernel 5.4 contains an example which is 
missing in the mainline documentation in my opinion:

https://github.com/Xilinx/linux-xlnx/blob/4ecd768dea75a0cc0bea91069a570981aa700744/Documentation/devicetree/bindings/phy/phy-zynqmp.txt


It seems the PHY handle mechanism has changed and the "old" Xilinx way 
doesn't work anymore.

This was the previous way to "marry" the PS GTR driver with the USB 3 
driver:

        serdes: zynqmp_phy@fd400000 {
             compatible = "xlnx,zynqmp-psgtr-v1.1";
             status = "disabled";
             reg = <0x0 0xfd400000 0x0 0x40000>,
                   <0x0 0xfd3d0000 0x0 0x1000>;
             reg-names = "serdes", "siou";
             nvmem-cells = <&soc_revision>;
             nvmem-cell-names = "soc_revision";
             resets = <&zynqmp_reset ZYNQMP_RESET_SATA>, <&zynqmp_reset 
ZYNQMP_RESET_USB0_CORERESET>,
                  <&zynqmp_reset ZYNQMP_RESET_USB1_CORERESET>, 
<&zynqmp_reset ZYNQMP_RESET_USB0_HIBERRESET>,
                  <&zynqmp_reset ZYNQMP_RESET_USB1_HIBERRESET>, 
<&zynqmp_reset ZYNQMP_RESET_USB0_APB>,
                  <&zynqmp_reset ZYNQMP_RESET_USB1_APB>, <&zynqmp_reset 
ZYNQMP_RESET_DP>,
                  <&zynqmp_reset ZYNQMP_RESET_GEM0>, <&zynqmp_reset 
ZYNQMP_RESET_GEM1>,
                  <&zynqmp_reset ZYNQMP_RESET_GEM2>, <&zynqmp_reset 
ZYNQMP_RESET_GEM3>;
             reset-names = "sata_rst", "usb0_crst", "usb1_crst",
                       "usb0_hibrst", "usb1_hibrst", "usb0_apbrst",
                       "usb1_apbrst", "dp_rst", "gem0_rst",
                       "gem1_rst", "gem2_rst", "gem3_rst";
             lane0: lane0 {
                 #phy-cells = <4>;
             };
             lane1: lane1 {
                 #phy-cells = <4>;
             };
             lane2: lane2 {
                 #phy-cells = <4>;
             };
             lane3: lane3 {
                 #phy-cells = <4>;
             };
         };


&dwc3_0 {
     status = "okay";
     dr_mode = "peripheral";
     phy-names = "usb3-phy";
     phys = <&lane2 4 0 0 26000000>;
     maximum-speed = "super-speed";
};


Regards,

Marco



