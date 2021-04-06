Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9779A355A38
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 19:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233509AbhDFRY2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 13:24:28 -0400
Received: from mail.azure.hoefle.co ([51.145.193.23]:44004 "EHLO
        mail.azure.hoefle.co" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232593AbhDFRY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 13:24:28 -0400
Received: from hoefle.co (119.254.200.213.static.wline.lns.sme.cust.swisscom.ch [213.200.254.119])
        by mail.azure.hoefle.co (Postfix) with ESMTPSA id 7CAAC13D2F0;
        Tue,  6 Apr 2021 19:24:19 +0200 (CEST)
Received: from [192.168.222.165] (unknown [213.200.254.119])
        by hoefle.co (Postfix) with ESMTPSA id 29463403AD;
        Tue,  6 Apr 2021 19:24:19 +0200 (CEST)
Subject: Re: Documentation to the Xilinx PSGTR Phy device-tree not clear
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     devicetree@vger.kernel.org
References: <b54c4397-72a2-4b6e-e6a4-8c4dc6ef2814@hoefle.co>
 <YGxq4QN7dN+flaDa@pendragon.ideasonboard.com>
From:   Marco Hoefle <marco@hoefle.co>
Message-ID: <7890af82-0aa9-298f-fef6-b1e0e4f0fea4@hoefle.co>
Date:   Tue, 6 Apr 2021 19:24:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YGxq4QN7dN+flaDa@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Laurent,

thanks for your quick reply.

On 06.04.21 16:06, Laurent Pinchart wrote:
> Hi Marco,
>
> On Tue, Apr 06, 2021 at 03:54:06PM +0200, Marco Hoefle wrote:
>> Hi,
>>
>> we try to port the mainline Kernel to a Xilinx board.
>>
>> The default peripherals do work. The blocking point now is the zynqmp
>> psgtr driver.
>>
>> The mainline documentation can be found here:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
>>
>> It is lacking a complete example on how to wire up a peripheral phy with
>> the PS GTR driver.
>>
>>
>> The one in the Xilinx tree for Kernel 5.4 contains an example which is
>> missing in the mainline documentation in my opinion:
>>
>> https://github.com/Xilinx/linux-xlnx/blob/4ecd768dea75a0cc0bea91069a570981aa700744/Documentation/devicetree/bindings/phy/phy-zynqmp.txt
>>
>>
>> It seems the PHY handle mechanism has changed and the "old" Xilinx way
>> doesn't work anymore.
>>
>> This was the previous way to "marry" the PS GTR driver with the USB 3
>> driver:
>>
>>          serdes: zynqmp_phy@fd400000 {
>>               compatible = "xlnx,zynqmp-psgtr-v1.1";
>>               status = "disabled";
>>               reg = <0x0 0xfd400000 0x0 0x40000>,
>>                     <0x0 0xfd3d0000 0x0 0x1000>;
>>               reg-names = "serdes", "siou";
>>               nvmem-cells = <&soc_revision>;
>>               nvmem-cell-names = "soc_revision";
>>               resets = <&zynqmp_reset ZYNQMP_RESET_SATA>, <&zynqmp_reset ZYNQMP_RESET_USB0_CORERESET>,
>>                    <&zynqmp_reset ZYNQMP_RESET_USB1_CORERESET>, <&zynqmp_reset ZYNQMP_RESET_USB0_HIBERRESET>,
>>                    <&zynqmp_reset ZYNQMP_RESET_USB1_HIBERRESET>, <&zynqmp_reset ZYNQMP_RESET_USB0_APB>,
>>                    <&zynqmp_reset ZYNQMP_RESET_USB1_APB>, <&zynqmp_reset ZYNQMP_RESET_DP>,
>>                    <&zynqmp_reset ZYNQMP_RESET_GEM0>, <&zynqmp_reset ZYNQMP_RESET_GEM1>,
>>                    <&zynqmp_reset ZYNQMP_RESET_GEM2>, <&zynqmp_reset ZYNQMP_RESET_GEM3>;
>>               reset-names = "sata_rst", "usb0_crst", "usb1_crst",
>>                         "usb0_hibrst", "usb1_hibrst", "usb0_apbrst",
>>                         "usb1_apbrst", "dp_rst", "gem0_rst",
>>                         "gem1_rst", "gem2_rst", "gem3_rst";
>>               lane0: lane0 {
>>                   #phy-cells = <4>;
>>               };
>>               lane1: lane1 {
>>                   #phy-cells = <4>;
>>               };
>>               lane2: lane2 {
>>                   #phy-cells = <4>;
>>               };
>>               lane3: lane3 {
>>                   #phy-cells = <4>;
>>               };
> The nvmem and reset properties, as well as the lane sub-nodes, are not
> needed with the mainline driver.
Ok, thanks for the hints.
>>           };
>>
>>
>> &dwc3_0 {
>>       status = "okay";
>>       dr_mode = "peripheral";
>>       phy-names = "usb3-phy";
>>       phys = <&lane2 4 0 0 26000000>;
>>       maximum-speed = "super-speed";
>> };
> A PHY consumer example is indeed missing, but doesn't this belong to the
> consumer DT bindings instead ?
>
I agree. However, I think the Xilinx driver needs to be handled 
differently. I looked for example at the Rockchip device tree using the 
same USB 3.0 driver (dwc3-of-simple) as Xilinx:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3399.dtsi

I believe that some device tree nodes need to be added when using the 
PSGTR driver and the DWC3 driver.

Looking at 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/phy/xilinx/phy-zynqmp.c#n756 
:

Lane number, PHY type and Reference Clock needs to be supplied somehow.

Previously this was done that way:

phys = <&lane2 4 0 0 26000000>;

Now this are not numbers anymore but references I believe.


BR

Marco


