Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFF0A42114B
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 16:27:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233874AbhJDO3l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 10:29:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233767AbhJDO3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 10:29:41 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CDACC061745
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 07:27:52 -0700 (PDT)
Received: from [IPv6:2a01:e0a:4cb:a870:445e:c29d:10aa:bf6] (unknown [IPv6:2a01:e0a:4cb:a870:445e:c29d:10aa:bf6])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: benjamin.gaignard)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1A7041F43211;
        Mon,  4 Oct 2021 15:27:50 +0100 (BST)
Subject: Re: [PATCH v4 10/18] soc: imx: add i.MX8M blk-ctrl driver
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
References: <20210910202640.980366-1-l.stach@pengutronix.de>
 <20210910202640.980366-11-l.stach@pengutronix.de>
 <5b5609e9-cbba-79be-218c-0dd508e26ecf@collabora.com>
 <763dff4c948a5c435dc4d51224e825071c0a3cd6.camel@pengutronix.de>
From:   Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <24568eb4-11d5-1fd7-e111-382b41cdb4da@collabora.com>
Date:   Mon, 4 Oct 2021 16:27:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <763dff4c948a5c435dc4d51224e825071c0a3cd6.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Le 02/10/2021 à 03:07, Lucas Stach a écrit :
> Hi Benjamin,
>
> Am Dienstag, dem 14.09.2021 um 17:46 +0200 schrieb Benjamin Gaignard:
>> Le 10/09/2021 à 22:26, Lucas Stach a écrit :
>>> This adds a driver for the blk-ctrl blocks found in the i.MX8M* line of
>>> SoCs. The blk-ctrl is a top-level peripheral located in the various *MIX
>>> power domains and interacts with the GPC power controller to provide the
>>> peripherals in the power domain access to the NoC and ensures that those
>>> peripherals are properly reset when their respective power domain is
>>> brought back to life.
>>>
>>> Software needs to do different things to make the bus handshake happen
>>> after the GPC *MIX domain is powered up and before it is powered down.
>>> As the requirements are quite different between the various blk-ctrls
>>> there is a callback function provided to hook in the proper sequence.
>>>
>>> The peripheral domains are quite uniform, they handle the soft clock
>>> enables and resets in the blk-ctrl address space and sequencing with the
>>> upstream GPC power domains.
>> Hi Lucas,
>>
>> I have tried to use your patches for IMX8MQ but it seems that the hardware
>> have different architecture.
>> On IMX8MQ there is only one VPU domain for G1 and G2 and that doesn't match
>> with your implementation where it is needed to have "bus" and devices power domain.
>>   From what I experiment in current IMX8MQ implementation of blk-ctrl (inside VPU driver)
>> enabling the 3 clocks (bus, G1, G2) is needed to reset the VPUs.
>>
>> Do you think you can update your design to take care of these hardware variations ?
> The clocking/reset of the blk-ctrl and ADB in the i.MX8MQ VPU power
> domain is really a bit strange, as the ADB reset is tied to the VPU
> resets and the clk-ctrl seem to require all 3 VPU clocks, instead of
> only the bus clock as in newer designs. However I was able to make it
> work with the existing blk-ctrl driver design.
>
> My current WIP patches (only tested with the G1 core so far) on top of
> the v5 of the series I just sent out can be found here:
> https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8mq-vpu-blk-ctrl
>
> Hope this helps.

Hi Lucas,

I have been able to test your branch on my iMX8MQ.
I confirm that G1 is working fine, I able to decode H264 files.

I wasn't able to make G2 works, I think it is coming from the reset sequence
done before each frame decoding in G2 driver.
I have change imx8mq_runtime_resume() and  imx8m_vpu_reset()
to call pm_runtime_put() and pm_runtime_get() to perform a reset like.
Without that G2 hangs when decoding the first frame.

One G1 it seems that doing a reset before each frame decoding is not needed.

On DT I had to assignee G1 and G2 on the both nodes to avoid a warning at probe time.
assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
					  <&clk IMX8MQ_CLK_VPU_G2>,
					  <&clk IMX8MQ_VPU_PLL_BYPASS>;
			assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
						 <&clk IMX8MQ_VPU_PLL_OUT>,
						 <&clk IMX8MQ_VPU_PLL>;
			assigned-clock-rates = <600000000>, <300000000>, <0>;

I also set G2 clock at 300Mhz as specify in the TRM.
Even with all this G2 doesn't fire interrupts.

Benjamin

>
> Regards,
> Lucas
>
