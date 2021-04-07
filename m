Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E87B5357227
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 18:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242851AbhDGQa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 12:30:28 -0400
Received: from mail.hoefle.co ([213.200.254.119]:51188 "EHLO hoefle.co"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233184AbhDGQa1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Apr 2021 12:30:27 -0400
X-Greylist: delayed 573 seconds by postgrey-1.27 at vger.kernel.org; Wed, 07 Apr 2021 12:30:27 EDT
Received: from [192.168.222.165] (unknown [213.200.254.119])
        by hoefle.co (Postfix) with ESMTPSA id 37BD39088C;
        Wed,  7 Apr 2021 18:20:42 +0200 (CEST)
Subject: Re: Documentation to the Xilinx PSGTR Phy device-tree not clear
From:   Marco Hoefle <marco@hoefle.co>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     devicetree@vger.kernel.org
References: <b54c4397-72a2-4b6e-e6a4-8c4dc6ef2814@hoefle.co>
 <YGxq4QN7dN+flaDa@pendragon.ideasonboard.com>
 <7890af82-0aa9-298f-fef6-b1e0e4f0fea4@hoefle.co>
Message-ID: <2538e59b-0e94-0162-77ac-63c8eb818cb1@hoefle.co>
Date:   Wed, 7 Apr 2021 18:20:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <7890af82-0aa9-298f-fef6-b1e0e4f0fea4@hoefle.co>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

was the mainline PSGTR driver tested on Hardware? The reason why I am 
asking is that no example can be found on any of the Xilinx boards:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/xilinx

By the way, the test I am doing is for the successor of the

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/xilinx/avnet-ultra96-rev1.dts

so the Ultra96 v2.

The aim would be to get USB3 and Display Port as well as the free LIMA 
driver to work using mainline sources only.

Once it works I am happy to write a patch for the mainline dts examples.


I am right now stuck at the reference clock node:

#include <dt-bindings/clock/xlnx-zynqmp-clk.h>
/ {
     usb0_refclk: usb0_clk {
         compatible = "fixed-clock";
         #clock-cells = <0>;
         clock-frequency = <26000000>;
     };
     usb1_refclk: usb1_clk {
         compatible = "fixed-clock";
         #clock-cells = <0>;
         clock-frequency = <26000000>;
     };
     dp_refclk: video_clk {
         compatible = "fixed-clock";
         #clock-cells = <0>;
         clock-frequency = <27000000>;
     };
};


&amba {
     /delete-node/zynqmp_phy@fd400000;
     psgtr: phy@fd400000 {
         compatible = "xlnx,zynqmp-psgtr-v1.1";
         status = "okay";
         reg = <0x0 0xfd400000 0x0 0x40000>,
               <0x0 0xfd3d0000 0x0 0x1000>;
         reg-names = "serdes", "siou";
         clocks = <&usb0_refclk 0>, <&usb1_refclk 0>, <&dp_refclk 0>;
         clock-names = "ref1", "ref2", "ref3";
         #phy-cells = <4>;
     };
};



&usb0 {
     status = "okay";
};


&dwc3_0 {
     status = "okay";
     dr_mode = "peripheral";
     phy-names = "usb3-phy";
/*    phys = <&lane2 4 0 0 26000000>; */ /* This is how it works on the 
Xilinx 5.4 Kernel */
     phys = <&psgtr 2 PHY_TYPE_USB3 0 0>; /* arg0 -> lane number, arg1 
-> PHY type (PHY_TYPE_USB3), arg2 -> Phy instance, arg3 -> refclock 
number */
     maximum-speed = "super-speed";
};





This results in (added some kprintfs):

[    1.973314] xilinx-psgtr fd400000.phy: Here: 780, args->args[0] = 2
[    1.979584] xilinx-psgtr fd400000.phy: Here: 780, args->args[1] = 4
[    1.985853] xilinx-psgtr fd400000.phy: Here: 780, args->args[2] = 0
[    1.992121] xilinx-psgtr fd400000.phy: Here: 780, args->args[3] = 0
[    1.998382] xilinx-psgtr fd400000.phy: HERE:784, lane number 2
[    2.004208] xilinx-psgtr fd400000.phy: HERE: 792, phy_type 4
[    2.009859] xilinx-psgtr fd400000.phy: HERE: 802, ref clock number 0
[    2.016203] xilinx-psgtr fd400000.phy: Invalid reference clock number 0
[    2.022864] Unable to handle kernel NULL pointer dereference at 
virtual address 0000000000000004
[    2.031646] Mem abort info:
[    2.034423]   ESR = 0x96000005
[    2.037467]   EC = 0x25: DABT (current EL), IL = 32 bits
[    2.042771]   SET = 0, FnV = 0
[    2.045816]   EA = 0, S1PTW = 0
[    2.048949] Data abort info:
[    2.051823]   ISV = 0, ISS = 0x00000005
[    2.055650]   CM = 0, WnR = 0
[    2.058606] [0000000000000004] user address but active_mm is swapper
[    2.064952] Internal error: Oops: 96000005 [#1] SMP
[    2.069812] Modules linked in:
[    2.072864] CPU: 1 PID: 30 Comm: kworker/1:1 Not tainted 
5.10.26-xilinx-v2020.1-dirty #19
[    2.081026] Hardware name: Avnet-Silica Ultra96 Rev2 Marco 2021-03-30 
(DT)
[    2.087899] Workqueue: events deferred_probe_work_func
[    2.093025] pstate: 60000005 (nZCv daif -PAN -UAO -TCO BTYPE=--)
[    2.099026] pc : xpsgtr_phy_init+0x288/0x6d0
[    2.103283] lr : xpsgtr_phy_init+0x24/0x6d0
[    2.107448] sp : ffffffc010f7b6b0
[    2.110746] x29: ffffffc010f7b6b0 x28: ffffff8001586f00
[    2.116049] x27: 0000000000000001 x26: ffffff8001697010
[    2.121353] x25: 0000000000000000 x24: 0000000000000000
[    2.126656] x23: ffffffc011300200 x22: ffffff8001c1e280
[    2.131960] x21: ffffff8001c1e298 x20: ffffff8001c1e280
[    2.137263] x19: ffffff8001c1e2f8 x18: 0000000000000000
[    2.142567] x17: 0000000000000000 x16: 0000000000000000
[    2.147871] x15: ffffff8001713530 x14: ffffffffffffffff
[    2.153174] x13: ffffff80023eea1c x12: 0000000000000038
[    2.158477] x11: 0101010101010101 x10: 0000000000002094
[    2.163781] x9 : ff312d78676f2d2f x8 : 7f7f7f7f7f7f7f7f
[    2.169084] x7 : 2f2f2f2f3363652c x6 : 0000000000000080
[    2.174388] x5 : ffffff8001c1e280 x4 : 0000000000000000
[    2.179691] x3 : 0000000000000000 x2 : 0000000000010008
[    2.184995] x1 : ffffffc011190008 x0 : ffffff8001c1e280
[    2.190299] Call trace:
[    2.192731]  xpsgtr_phy_init+0x288/0x6d0
[    2.196645]  phy_init+0x6c/0xc8

Any Idea what I am doing wrong?

Thanks

Marco



On 06.04.21 19:24, Marco Hoefle wrote:
> Hello Laurent,
>
> thanks for your quick reply.
>
> On 06.04.21 16:06, Laurent Pinchart wrote:
>> Hi Marco,
>>
>> On Tue, Apr 06, 2021 at 03:54:06PM +0200, Marco Hoefle wrote:
>>> Hi,
>>>
>>> we try to port the mainline Kernel to a Xilinx board.
>>>
>>> The default peripherals do work. The blocking point now is the zynqmp
>>> psgtr driver.
>>>
>>> The mainline documentation can be found here:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml 
>>>
>>>
>>> It is lacking a complete example on how to wire up a peripheral phy 
>>> with
>>> the PS GTR driver.
>>>
>>>
>>> The one in the Xilinx tree for Kernel 5.4 contains an example which is
>>> missing in the mainline documentation in my opinion:
>>>
>>> https://github.com/Xilinx/linux-xlnx/blob/4ecd768dea75a0cc0bea91069a570981aa700744/Documentation/devicetree/bindings/phy/phy-zynqmp.txt 
>>>
>>>
>>>
>>> It seems the PHY handle mechanism has changed and the "old" Xilinx way
>>> doesn't work anymore.
>>>
>>> This was the previous way to "marry" the PS GTR driver with the USB 3
>>> driver:
>>>
>>>          serdes: zynqmp_phy@fd400000 {
>>>               compatible = "xlnx,zynqmp-psgtr-v1.1";
>>>               status = "disabled";
>>>               reg = <0x0 0xfd400000 0x0 0x40000>,
>>>                     <0x0 0xfd3d0000 0x0 0x1000>;
>>>               reg-names = "serdes", "siou";
>>>               nvmem-cells = <&soc_revision>;
>>>               nvmem-cell-names = "soc_revision";
>>>               resets = <&zynqmp_reset ZYNQMP_RESET_SATA>, 
>>> <&zynqmp_reset ZYNQMP_RESET_USB0_CORERESET>,
>>>                    <&zynqmp_reset ZYNQMP_RESET_USB1_CORERESET>, 
>>> <&zynqmp_reset ZYNQMP_RESET_USB0_HIBERRESET>,
>>>                    <&zynqmp_reset ZYNQMP_RESET_USB1_HIBERRESET>, 
>>> <&zynqmp_reset ZYNQMP_RESET_USB0_APB>,
>>>                    <&zynqmp_reset ZYNQMP_RESET_USB1_APB>, 
>>> <&zynqmp_reset ZYNQMP_RESET_DP>,
>>>                    <&zynqmp_reset ZYNQMP_RESET_GEM0>, <&zynqmp_reset 
>>> ZYNQMP_RESET_GEM1>,
>>>                    <&zynqmp_reset ZYNQMP_RESET_GEM2>, <&zynqmp_reset 
>>> ZYNQMP_RESET_GEM3>;
>>>               reset-names = "sata_rst", "usb0_crst", "usb1_crst",
>>>                         "usb0_hibrst", "usb1_hibrst", "usb0_apbrst",
>>>                         "usb1_apbrst", "dp_rst", "gem0_rst",
>>>                         "gem1_rst", "gem2_rst", "gem3_rst";
>>>               lane0: lane0 {
>>>                   #phy-cells = <4>;
>>>               };
>>>               lane1: lane1 {
>>>                   #phy-cells = <4>;
>>>               };
>>>               lane2: lane2 {
>>>                   #phy-cells = <4>;
>>>               };
>>>               lane3: lane3 {
>>>                   #phy-cells = <4>;
>>>               };
>> The nvmem and reset properties, as well as the lane sub-nodes, are not
>> needed with the mainline driver.
> Ok, thanks for the hints.
>>>           };
>>>
>>>
>>> &dwc3_0 {
>>>       status = "okay";
>>>       dr_mode = "peripheral";
>>>       phy-names = "usb3-phy";
>>>       phys = <&lane2 4 0 0 26000000>;
>>>       maximum-speed = "super-speed";
>>> };
>> A PHY consumer example is indeed missing, but doesn't this belong to the
>> consumer DT bindings instead ?
>>
> I agree. However, I think the Xilinx driver needs to be handled 
> differently. I looked for example at the Rockchip device tree using 
> the same USB 3.0 driver (dwc3-of-simple) as Xilinx:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3399.dtsi 
>
>
> I believe that some device tree nodes need to be added when using the 
> PSGTR driver and the DWC3 driver.
>
> Looking at 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/phy/xilinx/phy-zynqmp.c#n756 
> :
>
> Lane number, PHY type and Reference Clock needs to be supplied somehow.
>
> Previously this was done that way:
>
> phys = <&lane2 4 0 0 26000000>;
>
> Now this are not numbers anymore but references I believe.
>
>
> BR
>
> Marco
>
>
-- 
______________________

Marco Höfle
Kappelen 11
CH-⁠5706 Boniswil
Tel.: +41 78 790 93 62

