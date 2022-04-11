Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E1964FC2D6
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 19:00:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348698AbiDKRDK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 13:03:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348724AbiDKRDJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 13:03:09 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE1EAAE7F
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 10:00:54 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id u18so8567135eda.3
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 10:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xpy+Tnj7CSKL3X1uy9b/hDN/vNkE2wdoaTq7+ca8M10=;
        b=EUuImKaaNnPaaTkG6bKXr8HOXsakGzjtj6MwQzcNNnCginsQOkhcLw9musbZzPcwCe
         u/pmx4TtJXQiMiWhwLmH5iZdX/6DYIV6uC/0MNnhRCFMdbgb/lc/0w6ImKxbKK3tGSzd
         R/ZDMG3P7uYw8upLYen3/7m1Bfp4iNS02kMgCGC3iumIcsrqsvr9p2qKXzC575Tmsh2h
         lIWUGabTR//BgAc8VJhfGNOXEiMgWtvkbqepKY5ThE/EOCsLFXpUpjF/GEaCI/67XY75
         61TpHI9o3ut2YGuuQYIt8oIE/9FyeD7Og0PA+rzwmvGt2NAH3NnhVcET6AQyQm6TyxIS
         8wjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xpy+Tnj7CSKL3X1uy9b/hDN/vNkE2wdoaTq7+ca8M10=;
        b=CXEI7SuIBqy0H4lCIR+lQhHRvxJWITzjYzvVEbzloruIvEBP0iPr8/aYjJDv2Z5ETN
         1BQnVRyGxMAlLG2mzk6MHSNDXhxzBmmseFBwhUsdaGu2UR/N2dhd1B7mL3bfBUurLmXP
         K6v0vZI2qTecQB2q9TigeU1pn74bfpcZeX5W5WAFcgDBF/XBTWG7ZZo0go7slcX6CXpV
         bfdIZuW1GkCD6Ia0i/yhNUf81AfTxOiZlXnvZqF63FQj4J6cwnB6VgGPn4JyiabBYfkC
         BZPd6NRi1nBXud/kBVuW5SJ8EbUfx9Q0dnAJH381xwVT1zS+n4bOpEjHI7wetQqj/dRE
         LJsw==
X-Gm-Message-State: AOAM532AloY+kXwoB8aZep5ljmZ2v3gPs/rdJ5CXd1qjiCo2mJVWEji2
        LqrLaN6JCsnmcqYV0Q+/UA==
X-Google-Smtp-Source: ABdhPJyZWh5pBitjWq97qA691BTkI6+vlnwnK/ZRRj/OfjGkLZqOhhIF8UGk3ef12YyoZgHpQrbEiQ==
X-Received: by 2002:aa7:d682:0:b0:419:3b78:e489 with SMTP id d2-20020aa7d682000000b004193b78e489mr34615358edr.372.1649696453246;
        Mon, 11 Apr 2022 10:00:53 -0700 (PDT)
Received: from ?IPV6:2001:16b8:e9a0:2b00:12ab:3410:473c:e8ef? ([2001:16b8:e9a0:2b00:12ab:3410:473c:e8ef])
        by smtp.gmail.com with ESMTPSA id f13-20020a50bf0d000000b0041cdd9c9147sm10371016edk.40.2022.04.11.10.00.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Apr 2022 10:00:52 -0700 (PDT)
Message-ID: <2b0f0eba-87fe-e2c4-d951-2b090b827ca6@gmail.com>
Date:   Mon, 11 Apr 2022 19:00:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v10 12/24] drm/rockchip: dw_hdmi: drop mode_valid hook
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
 <20220408112238.1274817-13-s.hauer@pengutronix.de>
 <8fac5d72-c635-521c-e7d1-a3980a4ed719@gmail.com>
 <20220411075357.GQ4012@pengutronix.de>
From:   Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20220411075357.GQ4012@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 11.04.22 um 09:53 schrieb Sascha Hauer:
> On Sun, Apr 10, 2022 at 01:31:23PM +0200, Alex Bee wrote:
>> Am 08.04.22 um 13:22 schrieb Sascha Hauer:
>>> The driver checks if the pixel clock of the given mode matches an entry
>>> in the mpll config table. The frequencies in the mpll table are meant as
>>> a frequency range up to which the entry works, not as a frequency that
>>> must match the pixel clock. The downstream Kernel also does not have
>>> this check, so drop it to allow for more display resolutions.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>
>> You're correct: That frequency is meant to be greater or equal. But I'm
>> not sure if it makes sense to completely drop it - what happens for
>> clocks rates > 600 MHz which might be supported by later generation
>> sinks (HDMI 2.1 or later)?
>> As these are not supported by the IPs/PHYs currently supported by that
>> driver a reason a simple
>>
>>         int i;
>>
>>
>>
>>         for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
>>
>> -               if (pclk == mpll_cfg[i].mpixelclock) {
>>
>> +               if (pclk >= mpll_cfg[i].mpixelclock) {
> 
> Should be <=

Sure, sorry 'bout that.
> 
> No other user currently in the tree has this check.
I dont't think that's true - it might not be checked against mpll table,
but max pixelclocks are checked in meson_encoder_hdmi_mode_valid for
amlogic, in sun8i_dw_hdmi_mode_valid_a83t and
sun8i_dw_hdmi_mode_valid_h6 for allwinner and rcar_hdmi_mode_valid for
rcar platform. There is no other point in rockchip dw-hdmi platform
driver where this is currently checked.

> hdmi_phy_configure_dwc_hdmi_3d_tx() has this:
> 
>> 	/* PLL/MPLL Cfg - always match on final entry */
>> 	for (; mpll_config->mpixelclock != ~0UL; mpll_config++)
>> 		if (mpixelclock <= mpll_config->mpixelclock)
>> 			break;
>>
>> 	for (; curr_ctrl->mpixelclock != ~0UL; curr_ctrl++)
>> 		if (mpixelclock <= curr_ctrl->mpixelclock)
>> 			break;
>>
>> 	for (; phy_config->mpixelclock != ~0UL; phy_config++)
>> 		if (mpixelclock <= phy_config->mpixelclock)
>> 			break;
>>
>> 	if (mpll_config->mpixelclock == ~0UL ||
>> 	    curr_ctrl->mpixelclock == ~0UL ||
>> 	    phy_config->mpixelclock == ~0UL)
>> 		return -EINVAL;
> 
> This means we already have this check and others already in the generic
> part of the dw-hdmi driver. Should we maybe do the above in
> dw_hdmi_bridge_mode_valid() instead of doing it in the users?
I guess that's not possible, due to the different kind of phys which are
used for dw-hdmi. The checks you are refering to, are only done for dw
hdmi tx phys, but not for "vendor phys" (like for RK3328 and RK3228, for
example) - those have have own drivers which are handled only in dw-hdmi
platform driver.
Therefore this check should remain here for Rockchip also.

Regards,
Alex
> 
> Sascha
> 
> 

