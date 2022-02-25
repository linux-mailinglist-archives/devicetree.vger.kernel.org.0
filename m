Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 660FF4C44BB
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 13:41:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235397AbiBYMmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 07:42:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230513AbiBYMmB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 07:42:01 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B67EF1E4821
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 04:41:29 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F785ED1;
        Fri, 25 Feb 2022 04:41:29 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE4753F5A1;
        Fri, 25 Feb 2022 04:41:27 -0800 (PST)
Message-ID: <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
Date:   Fri, 25 Feb 2022 12:41:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-GB
To:     Dmitry Osipenko <digetx@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-02-25 11:10, Dmitry Osipenko wrote:
> 25.02.2022 13:49, Sascha Hauer пишет:
>> On Fri, Feb 25, 2022 at 01:26:14PM +0300, Dmitry Osipenko wrote:
>>> 25.02.2022 10:51, Sascha Hauer пишет:
>>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
>>>> HDMI controller to work. The purpose of that clock is not clear. It is
>>>> named "hclk" in the downstream driver, so use the same name.
>>>>
>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>> ---
>>>>
>>>> Notes:
>>>>      Changes since v5:
>>>>      - Use devm_clk_get_optional rather than devm_clk_get
>>>>
>>>>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
>>>>   1 file changed, 16 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>>> index fe4f9556239ac..c6c00e8779ab5 100644
>>>> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>>> @@ -76,6 +76,7 @@ struct rockchip_hdmi {
>>>>   	const struct rockchip_hdmi_chip_data *chip_data;
>>>>   	struct clk *ref_clk;
>>>>   	struct clk *grf_clk;
>>>> +	struct clk *hclk_clk;
>>>>   	struct dw_hdmi *hdmi;
>>>>   	struct regulator *avdd_0v9;
>>>>   	struct regulator *avdd_1v8;
>>>> @@ -229,6 +230,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>>>>   		return PTR_ERR(hdmi->grf_clk);
>>>>   	}
>>>>   
>>>> +	hdmi->hclk_clk = devm_clk_get_optional(hdmi->dev, "hclk");
>>>> +	if (PTR_ERR(hdmi->hclk_clk) == -EPROBE_DEFER) {
>>>
>>> Have you tried to investigate the hclk? I'm still thinking that's not
>>> only HDMI that needs this clock and then the hardware description
>>> doesn't look correct.
>>
>> I am still not sure what you mean. Yes, it's not only the HDMI that
>> needs this clock. The VOP2 needs it as well and the driver handles that.
> 
> I'm curious whether DSI/DP also need that clock to be enabled. If they
> do, then you aren't modeling h/w properly AFAICS.

Assuming nobody at Rockchip decided to make things needlessly 
inconsistent with previous SoCs, HCLK_VOP should be the clock for the 
VOP's AHB slave interface. Usually, if that affected anything other than 
accessing VOP registers, indeed it would smell of something being wrong 
in the clock tree, but in this case I'd also be suspicious of whether it 
might have ended up clocking related GRF registers as well (either 
directly, or indirectly via some gate that the clock driver hasn't 
modelled yet).

If the symptom of not claiming HCLK_VOP is hanging on some register 
access in the HDMI driver while the VOP is idle, then it should be 
relatively straightforward to narrow down with some logging, and see if 
it looks like this is really just another "grf" clock. If not, then 
we're back to suspecting something more insidiously wrong elsewhere.

Robin.
