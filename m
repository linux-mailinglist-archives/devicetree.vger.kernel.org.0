Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0A1E358D49
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 21:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232969AbhDHTLW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 15:11:22 -0400
Received: from mail.hoefle.co ([213.200.254.119]:51720 "EHLO hoefle.co"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232958AbhDHTLW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 8 Apr 2021 15:11:22 -0400
Received: from [192.168.222.165] (unknown [213.200.254.119])
        by hoefle.co (Postfix) with ESMTPSA id 5956C91213;
        Thu,  8 Apr 2021 21:11:09 +0200 (CEST)
Subject: Re: [PATCH v4 2/2] usb: dwc3: Add driver for Xilinx platforms
From:   Marco Hoefle <marco@hoefle.co>
To:     Michal Simek <michal.simek@xilinx.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Manish Narani <manish.narani@xilinx.com>
Cc:     devicetree@vger.kernel.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <1615963949-75320-1-git-send-email-manish.narani@xilinx.com>
 <1615963949-75320-3-git-send-email-manish.narani@xilinx.com>
 <20210407214811.GA260719@roeck-us.net>
 <ee280235-736d-1689-d324-b090c21106c9@xilinx.com>
 <a7bbf265-a771-2c2e-b5e7-a189692ca280@hoefle.co>
Message-ID: <e906199b-3810-c5bc-1f08-03da2133d63d@hoefle.co>
Date:   Thu, 8 Apr 2021 21:11:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <a7bbf265-a771-2c2e-b5e7-a189692ca280@hoefle.co>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Michal, Manish and Guenter,

I recently opened a thread regarding of the PSGTR driver documentation ( 
https://www.spinics.net/lists/devicetree/msg416470.html 
<https://www.spinics.net/lists/devicetree/msg416470.html> )

It is not clear to me how to "marry" DWC3 and PSGTR in the device tree.

There were some significant changes compared to the Xlnx 5.4 Kernel.

You have dwc3 (USB3) working using the mainline Kernel?

Could you please share your device tree?

That would be really helpful to get the mainline kernel running on the 
Ultra96v2.

Thanks

Marco

>
>
>
> On 08.04.21 08:08, Michal Simek wrote:
>> Hi Guenter,
>>
>> On 4/7/21 11:48 PM, Guenter Roeck wrote:
>>> On Wed, Mar 17, 2021 at 12:22:29PM +0530, Manish Narani wrote:
>>>> Add a new driver for supporting Xilinx platforms. This driver is used
>>>> for some sequence of operations required for Xilinx USB controllers.
>>>> This driver is also used to choose between PIPE clock coming from SerDes
>>>> and the Suspend Clock. Before the controller is out of reset, the clock
>>>> selection should be changed to PIPE clock in order to make the USB
>>>> controller work. There is a register added in Xilinx USB controller
>>>> register space for the same.
>>>>
>>>> Signed-off-by: Manish Narani<manish.narani@xilinx.com>
>>> Trying this driver with qemu (v6.0.0-rc2) results in:
>>>
>>> [   15.184242] dwc3-xilinx ff9d0000.usb: error -ENODEV: failed to assert Reset
>>> [   15.185754] Unable to handle kernel paging request at virtual address 006b6b6b6b6b6b9b
>>> [   15.185994] Mem abort info:
>>> [   15.186065]   ESR = 0x96000004
>>> [   15.186317]   EC = 0x25: DABT (current EL), IL = 32 bits
>>> [   15.186414]   SET = 0, FnV = 0
>>> [   15.186498]   EA = 0, S1PTW = 0
>>> [   15.186579] Data abort info:
>>> [   15.186666]   ISV = 0, ISS = 0x00000004
>>> [   15.186756]   CM = 0, WnR = 0
>>> [   15.186887] [006b6b6b6b6b6b9b] address between user and kernel address ranges
>>> [   15.187436] Internal error: Oops: 96000004 [#1] PREEMPT SMP
>>> [   15.187777] Modules linked in:
>>> [   15.188060] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.12.0-rc6-next-20210406-00006-g05407f068fc9-dirty #1
>>> [   15.188265] Hardware name: Xilinx Versal Virtual development board (DT)
>>> [   15.188495] pstate: 80000005 (Nzcv daif -PAN -UAO -TCO BTYPE=--)
>>> [   15.188614] pc : __clk_put+0x24/0x138
>>> [   15.188716] lr : __clk_put+0x24/0x138
>>> [   15.188791] sp : ffff80001326bac0
>>> [   15.188853] x29: ffff80001326bac0 x28: ffff00000644ed00
>>> [   15.188982] x27: ffff00000421ecd0 x26: ffff00000421e810
>>> [   15.189076] x25: ffff00000644f100 x24: 0000000000000000
>>> [   15.189170] x23: ffff8000126a2570 x22: 0000000000000005
>>> [   15.189271] x21: ffff00000644ed00 x20: ffff000006449970
>>> [   15.189367] x19: 6b6b6b6b6b6b6b6b x18: 0000000000000010
>>> [   15.189456] x17: 0000000000000001 x16: 0000000000000000
>>> [   15.189546] x15: ffff000003af0490 x14: 00000000000001b7
>>> [   15.189642] x13: ffff000003af0490 x12: 00000000ffffffea
>>> [   15.189729] x11: ffff8000123b6460 x10: 0000000000000080
>>> [   15.189815] x9 : 00000000676993c6 x8 : 00000000676993c6
>>> [   15.189941] x7 : 000000007d152ab3 x6 : ffff800012768480
>>> [   15.190047] x5 : 0000000000000000 x4 : 000000007f97631e
>>> [   15.190139] x3 : 00000000d5bdf2c2 x2 : 000000000000000b
>>> [   15.190233] x1 : ffff000003af0040 x0 : 0000000000000001
>>> [   15.190432] Call trace:
>>> [   15.190506]  __clk_put+0x24/0x138
>>> [   15.190588]  clk_put+0x10/0x20
>>> [   15.190653]  clk_bulk_put+0x3c/0x60
>>> [   15.190724]  devm_clk_bulk_release+0x1c/0x28
>>> [   15.190806]  release_nodes+0x1c0/0x2b0
>>> [   15.190887]  devres_release_all+0x38/0x60
>>> [   15.190963]  really_probe+0x1e4/0x3a8
>>> [   15.191042]  driver_probe_device+0x64/0xc8
>>> ...
>>>
>>> because of ...
>>>
>>>> +
>>>> +	ret = devm_clk_bulk_get_all(priv_data->dev, &priv_data->clks);
>>>> +	if (ret < 0)
>>>> +		return ret;
>>>> +
>>> ...
>>>> +
>>>> +err_clk_put:
>>>> +	clk_bulk_disable_unprepare(priv_data->num_clocks, priv_data->clks);
>>>> +	clk_bulk_put_all(priv_data->num_clocks, priv_data->clks);
>>> clk_bulk_put_all() is not necessary because of devm_clk_bulk_get_all(),
>>> and results in a double free.
>>>
>>>> +static int dwc3_xlnx_remove(struct platform_device *pdev)
>>>> +{
>>>> +	struct dwc3_xlnx	*priv_data = platform_get_drvdata(pdev);
>>>> +	struct device		*dev = &pdev->dev;
>>>> +
>>>> +	of_platform_depopulate(dev);
>>>> +
>>>> +	clk_bulk_disable_unprepare(priv_data->num_clocks, priv_data->clks);
>>>> +	clk_bulk_put_all(priv_data->num_clocks, priv_data->clks);
>>> Same here. This will likely crash the driver on unload.
>> It looks like that you directly created the patch. Isn't it better to
>> send it yourself? Or do you want Manish to create it based on guidance
>> above?
>>
>> Manish: Can you please take a look at this?
>>
>> Thanks,
>> Michal
> -- 
> ______________________
>
> Marco Höfle
> Kappelen 11
> CH-⁠5706 Boniswil
> Tel.: +41 78 790 93 62

-- 
______________________

Marco Höfle
Kappelen 11
CH-⁠5706 Boniswil
Tel.: +41 78 790 93 62

