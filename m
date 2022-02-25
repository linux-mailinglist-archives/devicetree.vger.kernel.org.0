Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 402434C4320
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 12:11:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239911AbiBYLLb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 06:11:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238967AbiBYLLb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 06:11:31 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 232EA197B51
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 03:10:59 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id p20so6969459ljo.0
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 03:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yfHDVChMIt79P8PwPVg3ITAsqmLO2xEVeCJUOEsGqTU=;
        b=YYiU90jPEjbBPpGtGlks3J6ji5Nd3R7OXrhwxviCnTFNqQpKJJnJtC5ehaLTKgPv6d
         kytOZEuiglne9JU2KDODLNAk3kSnVaXhENvmnBtvrBbuGp/LmYESK1W3L2pDk+iUYmTq
         KqWJVFd1YncInr0mcJoJcA0/NgWltTcKtQEvETZRIPWbMYnZwgIomPPWFTh/GwaEQ0w/
         /q92mKU79F4TZmLhSIed3q5bfj8I0MJ7jU8M5FhdAjmYQ/xwPXK9nq/oM1z1t6IqlZOS
         5Fktm2+KaIZ1bj+8igJ/PSK5VWx+/oGbmra2Gr9CrvDH4UL45bEStlNRKgE6PNXEv63N
         5b/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yfHDVChMIt79P8PwPVg3ITAsqmLO2xEVeCJUOEsGqTU=;
        b=3Ilv4NM7eC+TLXV6j0AhVyJh5mmePicOKo5RRAweJGF4lNS3F5zDllScxIrAnOuwKw
         co79rwyB+GB1Vpb1+qMs8IIRBaAVZMYHma2VQopiYXZWG3U4PI9uEX6pCCfB3ZfsX4Sk
         ifUA6OjTrmcR4GomWOvg/XSBmMWB/nuP6AxAinaelDykmPatOLvigtX/oALpcrLZDYKq
         Q6X8sCp50CdAvg4ULnO6tsF6O7DeaSVHf5nwbFspPS70alKb8ROdclJUX8a3gcyOGHfo
         btMv5lsttMKXNmUFCgm+7tJeAQkrLuItmDSaTKhliwkv0BMXpADJuQEOwHvPh8ET1HwG
         6R2A==
X-Gm-Message-State: AOAM5309e0hJ+QKulXSIEwnPO5HC1X6ViYB9VfDwzBrXOEu6fsPWdBsF
        k9VidHQG6wZfOtwjFK1ob1+9ENqVsIo=
X-Google-Smtp-Source: ABdhPJy3g0VW5PnDPjeFJlNBTjarbzOJxXYBGGvfVSZkpGhwP0uSgOx0oKsnOg7b8V6oGQav6wtkcA==
X-Received: by 2002:a2e:7218:0:b0:246:4772:1fa0 with SMTP id n24-20020a2e7218000000b0024647721fa0mr4972875ljc.125.1645787457313;
        Fri, 25 Feb 2022 03:10:57 -0800 (PST)
Received: from [192.168.2.145] (109-252-137-194.dynamic.spd-mgts.ru. [109.252.137.194])
        by smtp.googlemail.com with ESMTPSA id u17-20020a056512095100b0044381f00805sm174550lft.139.2022.02.25.03.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 03:10:56 -0800 (PST)
Message-ID: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
Date:   Fri, 25 Feb 2022 14:10:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>
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
From:   Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <20220225104924.GC19585@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

25.02.2022 13:49, Sascha Hauer пишет:
> On Fri, Feb 25, 2022 at 01:26:14PM +0300, Dmitry Osipenko wrote:
>> 25.02.2022 10:51, Sascha Hauer пишет:
>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
>>> HDMI controller to work. The purpose of that clock is not clear. It is
>>> named "hclk" in the downstream driver, so use the same name.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>
>>> Notes:
>>>     Changes since v5:
>>>     - Use devm_clk_get_optional rather than devm_clk_get
>>>
>>>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
>>>  1 file changed, 16 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>> index fe4f9556239ac..c6c00e8779ab5 100644
>>> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>>> @@ -76,6 +76,7 @@ struct rockchip_hdmi {
>>>  	const struct rockchip_hdmi_chip_data *chip_data;
>>>  	struct clk *ref_clk;
>>>  	struct clk *grf_clk;
>>> +	struct clk *hclk_clk;
>>>  	struct dw_hdmi *hdmi;
>>>  	struct regulator *avdd_0v9;
>>>  	struct regulator *avdd_1v8;
>>> @@ -229,6 +230,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>>>  		return PTR_ERR(hdmi->grf_clk);
>>>  	}
>>>  
>>> +	hdmi->hclk_clk = devm_clk_get_optional(hdmi->dev, "hclk");
>>> +	if (PTR_ERR(hdmi->hclk_clk) == -EPROBE_DEFER) {
>>
>> Have you tried to investigate the hclk? I'm still thinking that's not
>> only HDMI that needs this clock and then the hardware description
>> doesn't look correct.
> 
> I am still not sure what you mean. Yes, it's not only the HDMI that
> needs this clock. The VOP2 needs it as well and the driver handles that.

I'm curious whether DSI/DP also need that clock to be enabled. If they
do, then you aren't modeling h/w properly AFAICS.
