Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E27ED4CE13E
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 00:55:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiCDX4f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 18:56:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbiCDX4e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 18:56:34 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1866527C504
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 15:55:45 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dmitry.osipenko)
        with ESMTPSA id C8F251F46E3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1646438143;
        bh=IUw5jFkv39jqcPQCo/oRiqH/4ARuLA0Q4Zt6gaiOlhM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=HNF/gPoA3dcCx/RvyZJPlcMcVoLUzr4SEeIA/3z4PmW3iYql2H1xwb7ZzyDnsMZq2
         xgE1vIuTQuEPU0Bmjl82Kc8fPAf6i/MBVOnaLi9hIj3+zDoW0vAVS7JRJrUgwfsZCt
         DoFqlwwYBa2Ir/kucA3Fek9ObQYfieGaFdf5mZfunoV1dSqIMbnvT4ZVLkdBiAsP3i
         3pPmB5vV3TGwjW3Jbkd9PGRLuejthXs9Y5sY3IKmy2f0BKGvsjIjvCNkOf6x3BKNLc
         GHCSnY6NzntQPhZzWRg7cYHm3qqLLfGsPMyWm690TDHVXt2UxDGc+P1WTLCbeVE0KR
         XNBRe7r69/erA==
Message-ID: <9ea0134e-aac7-60e1-5c58-ae31b4e1c422@collabora.com>
Date:   Sat, 5 Mar 2022 02:55:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        Robin Murphy <robin.murphy@arm.com>,
        Andy Yan <andy.yan@rock-chips.com>
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        kernel@pengutronix.de, Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Peter Geis <pgwipeout@gmail.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
 <20220228141921.GN19585@pengutronix.de>
 <5184ecf2-8734-3121-cbbc-5dcfcf0d02f8@arm.com>
 <20220302112528.GV19585@pengutronix.de>
 <20220304142235.GL22780@pengutronix.de>
From:   Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220304142235.GL22780@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/4/22 17:22, Sascha Hauer wrote:
> On Wed, Mar 02, 2022 at 12:25:28PM +0100, Sascha Hauer wrote:
>> On Tue, Mar 01, 2022 at 01:39:31PM +0000, Robin Murphy wrote:
>>> On 2022-02-28 14:19, Sascha Hauer wrote:
>>>> On Fri, Feb 25, 2022 at 02:11:54PM +0100, Sascha Hauer wrote:
>>>>> On Fri, Feb 25, 2022 at 12:41:23PM +0000, Robin Murphy wrote:
>>>>>> On 2022-02-25 11:10, Dmitry Osipenko wrote:
>>>>>>> 25.02.2022 13:49, Sascha Hauer пишет:
>>>>>>>> On Fri, Feb 25, 2022 at 01:26:14PM +0300, Dmitry Osipenko wrote:
>>>>>>>>> 25.02.2022 10:51, Sascha Hauer пишет:
>>>>>>>>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
>>>>>>>>>> HDMI controller to work. The purpose of that clock is not clear. It is
>>>>>>>>>> named "hclk" in the downstream driver, so use the same name.
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>>>>>>>> ---
>>>>>>>>>>
>>>>>>>>>> Notes:
>>>>>>>>>>       Changes since v5:
>>>>>>>>>>       - Use devm_clk_get_optional rather than devm_clk_get
>>>>>>>>>>
>>>>>>>>>>    drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
>>>>>>>>>>    1 file changed, 16 insertions(+)
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>>>>>>>>> index fe4f9556239ac..c6c00e8779ab5 100644
>>>>>>>>>> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>>>>>>>>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>>>>>>>>> @@ -76,6 +76,7 @@ struct rockchip_hdmi {
>>>>>>>>>>    	const struct rockchip_hdmi_chip_data *chip_data;
>>>>>>>>>>    	struct clk *ref_clk;
>>>>>>>>>>    	struct clk *grf_clk;
>>>>>>>>>> +	struct clk *hclk_clk;
>>>>>>>>>>    	struct dw_hdmi *hdmi;
>>>>>>>>>>    	struct regulator *avdd_0v9;
>>>>>>>>>>    	struct regulator *avdd_1v8;
>>>>>>>>>> @@ -229,6 +230,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>>>>>>>>>>    		return PTR_ERR(hdmi->grf_clk);
>>>>>>>>>>    	}
>>>>>>>>>> +	hdmi->hclk_clk = devm_clk_get_optional(hdmi->dev, "hclk");
>>>>>>>>>> +	if (PTR_ERR(hdmi->hclk_clk) == -EPROBE_DEFER) {
>>>>>>>>>
>>>>>>>>> Have you tried to investigate the hclk? I'm still thinking that's not
>>>>>>>>> only HDMI that needs this clock and then the hardware description
>>>>>>>>> doesn't look correct.
>>>>>>>>
>>>>>>>> I am still not sure what you mean. Yes, it's not only the HDMI that
>>>>>>>> needs this clock. The VOP2 needs it as well and the driver handles that.
>>>>>>>
>>>>>>> I'm curious whether DSI/DP also need that clock to be enabled. If they
>>>>>>> do, then you aren't modeling h/w properly AFAICS.
>>>>>>
>>>>>> Assuming nobody at Rockchip decided to make things needlessly inconsistent
>>>>>> with previous SoCs, HCLK_VOP should be the clock for the VOP's AHB slave
>>>>>> interface. Usually, if that affected anything other than accessing VOP
>>>>>> registers, indeed it would smell of something being wrong in the clock tree,
>>>>>> but in this case I'd also be suspicious of whether it might have ended up
>>>>>> clocking related GRF registers as well (either directly, or indirectly via
>>>>>> some gate that the clock driver hasn't modelled yet).
>>>>>
>>>>> Ok, I am beginning to understand. I verified that hdmi, mipi and dp are
>>>>> hanging when HCLK_VOP is disabled by disabling that clock via sysfs
>>>>> using CLOCK_ALLOW_WRITE_DEBUGFS. When it's disabled then the registers
>>>>> of that units can't be accessed. However, when I disable HCLK_VOP by
>>>>> directly writing to the gate bit RK3568_CLKGATE_CON(20) then only
>>>>> accessing VOP registers hangs, the other units stay functional.
>>>>> So it seems it must be the parent clock which must be enabled. The
>>>>> parent clock is hclk_vo. This clock should be handled as part of the
>>>>> RK3568_PD_VO power domain:
>>>>>
>>>>> 	power-domain@RK3568_PD_VO {
>>>>>                  reg = <RK3568_PD_VO>;
>>>>>                  clocks = <&cru HCLK_VO>,
>>>>>                           <&cru PCLK_VO>,
>>>>>                           <&cru ACLK_VOP_PRE>;
>>>>>                   pm_qos = <&qos_hdcp>,
>>>>>                            <&qos_vop_m0>,
>>>>>                            <&qos_vop_m1>;
>>>>>                   #power-domain-cells = <0>;
>>>>>          };
>>>>
>>>> Forget this. The clocks in this node are only enabled during enabling or
>>>> disabling the power domain, they are disabled again immediately afterwards.
>>>>
>>>> OK, I need HCLK_VO to access the HDMI registers. I verified that by
>>>> disabling HCLK_VO at register level (CRU_GATE_CON(20) BIT(1)). The
>>>> HDMI registers become inaccessible then. This means I'll replace
>>>> HCLK_VOP in the HDMI node with HCLK_VO. Does this sound sane?
>>>
>>> Well, it's still a mystery hack overall, and in some ways it seems even more
>>> suspect to be claiming a whole branch of the clock tree rather than a leaf
>>> gate with a specific purpose. I'm really starting to think that the
>>> underlying issue here is a bug in the clock driver, or a hardware mishap
>>> that should logically be worked around by the clock driver, rather than
>>> individual the consumers.
>>>
>>> Does it work if you hack the clock driver to think that PCLK_VO is a child
>>> of HCLK_VO? Even if that's not technically true, it would seem to
>>> effectively match the observed behaviour (i.e. all 3 things whose register
>>> access apparently *should* be enabled by a gate off PCLK_VO, seem to also
>>> require HCLK_VO).
>>
>> Yes, that works as expected. I am not sure though if we really want to
>> go that path. The pclk rates will become completely bogus with this and
>> should we have to play with the rates in the future we might regret this
>> step.
> 
> How do we proceed here? I can include a patch which makes PCLK_VO a
> child of HCLK_VO if that's what we agree upon.

Couldn't Andy clarify the actual clock tree structure of the h/w for us?

This will be the best option because datasheet doesn't give the clear
answer, or at least I couldn't find it. Technically, PCLK indeed should
be a child of the HCLK in general, so Robin could be right.
