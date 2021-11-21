Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B60D4586F3
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 00:18:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbhKUXV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 18:21:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbhKUXV4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 18:21:56 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A18C3C061574
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:18:50 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id u1so29230402wru.13
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 15:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=qwEuDzuvO+yZhJXEU0BL1F4ycS9cXS3hWwFrPyPW0yQ=;
        b=pVVV5o4k9iKc92GByRt/kiMair0asSOHzgLz3IkU02B74n8vt0DfLH4QnRX5ZksoZU
         5t4jJ2FJJzUznGabZT1ghwRcvb9hrIEJY4zj6RnbbSg8RCltlBj87/LEQKQ/KStFgR6w
         zn3uDs8jA+C/TUuF4bIK/wErPxGmG27UOsokhuZDkzQ+N4rZboLXXr1tn+e+mdibc+Wr
         BDcKRssX7FA8FB4za4sAlplzDg15Yd2YYyyGRDRa3aBVBWICQBOk9cpyA9XWewywXBFU
         MT3FXw9E5O/geRq+KQ8QnLMWtduXvHZLm9EbF7Vj4WVc1l/lmsY4b1Bmo39PTUCrb8IO
         HWqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=qwEuDzuvO+yZhJXEU0BL1F4ycS9cXS3hWwFrPyPW0yQ=;
        b=hFAobHqm9HtVOpujxC4uTO8pE50470IUevin0mYNTM9ISwripP4X9P1HWlmn3yZvCp
         zJwTC6B4av1++ce/p2qwnJE6WlNUUwNiAopVgJEfayzVlLtK8TizRXOT5xf+4CkBd/Pt
         psgBJgwV3i7RzDCrrPXJ6hgrtpGmbWdFcOy3RT74DHhfxLp2PLGSqTrjrZMyGjIH2Ikl
         JjGQ1VhLkk9pfSeh42jg6wd18F2EYnUw5czPCy3o1PRFO/iOGCFVNH7xehdS2L0QhktQ
         Wbl4x1mOIB6Tjf1qYHxpm/+UxSUMRad9Vn10TF/Ou8UfGCRfqQMNb1uWM0KM8JVHbRdf
         BQMQ==
X-Gm-Message-State: AOAM531CdjYniRcM8FjA7ZgZjTXbdc+l39SFNKNZgtU1XeHqmkeexjPp
        SKZlQ+DIKmJwRcE4dunON3aJjiTX9dVC
X-Google-Smtp-Source: ABdhPJx2INaINAEgviHhidQlQTMYTw9PV/lb6oU11lO2qAR8cCZPrWN7OL85v/eZ2ePUsk8rxhtYRw==
X-Received: by 2002:adf:f60c:: with SMTP id t12mr32376728wrp.341.1637536729122;
        Sun, 21 Nov 2021 15:18:49 -0800 (PST)
Received: from [192.168.200.23] (ip5b435a69.dynamic.kabel-deutschland.de. [91.67.90.105])
        by smtp.gmail.com with ESMTPSA id 4sm9293595wrz.90.2021.11.21.15.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Nov 2021 15:18:48 -0800 (PST)
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
From:   Alex Bee <knaerzche@gmail.com>
Message-ID: <73c57643-a0db-e7e7-174d-3cb6a978d98a@gmail.com>
Date:   Mon, 22 Nov 2021 00:18:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha,

Am 17.11.21 um 15:33 schrieb Sascha Hauer:
> This series adds initial graphics support for the Rockchip RK356[68]
> SoCs.  Graphics support is based around the VOP2 controller which
> replaces the VOP controller found on earlier Rockchip SoCs. The driver
> has been tested with HDMI support included in this series and MIPI-DSI
> which is not included because it needs some more work. The driver is
> taken from the downstream Rockchip kernel and heavily polished, most non
> standard features have been removed for now. I tested the driver with
> the libdrm modetest utility and also with weston with both pixman and
> panfrost driver support. Michael Riesch reported the driver to work on
> the RK3566 as well, but device tree support for this SoC is not yet
> included in this series.
>
> The HDMI changes are based on patches from Benjamin Gaignard, but
> modified a bit as I found out that the HDMI port on the RK3568 only
> needs one additional clock, not two. Also I added regulator support
> which is needed to get the HDMI up on the rk3568-EVB board.
>
> All review and testing feedback welcome


thanks for working on that - it's very (very,very) much appreciated.

It took me some time to figure it out: It seems rk3568-iommu driver s
broken - I did only get "white noise" when using it alongside vop
(similar like it was reported here before). However: removing the
iommu-property from vop makes it working for me with HDMI output on
quartz64 as well. Could you check if you have the iommu driver in kernel
enabled if it works for you, if the property is present in DT? (I used
5.16-rc1 + this series + [0]). Also vop mmu seems to have the
power-domain missing in your series (same as downstream) - however
adding that doesn't help much currently.
As a sidenote: I verfied this with using Ezequiel's vpu addtion for
RK356x: It did only work when removing the iommu there as well (getting
tons of page faults otherwise) - so iommu driver really seems to broken,
at least for RK3566. (Or I'm a missing a option in kernel config, which
wasn't required for the older iommu version?)
 
But as reported before: For HDMI this does currently only work for pixel
clock rates, which are integer-divisable with hpll clock rate (which is
the hardcoded parent of vop0's dclk)
As discussed in Benjamin's initial submission of the addition of
RK3568's hdmi controller [1] same as with RK3288's and RK3399's hdmi phy
needs a reference clock (it's called vpll there) which needs to get
switched before the vop switches the mode (since phy rate switching is
done before) - it's HPLL in case of RK356x. For whatever reason it's
called "ref" for RK356x only downstream [2] - so you should add another
clock "vpll" (renaming it to "ref" for _ALL_ SoCs which have it would be
a _GREAT_ idea) which is <&pmucru PLL_HPLL>.
What brings us to the "real" clock problem and the reason, why
non-integer divisable pixel clock rates are not possible ATM: This is a
long standing issue for RK3288 and RK3399 as well (and one of the main
reasons why 4k modes are not possible for those older SoCs currently):
Upstream all PLL rates are controlled with those PLL rate tables in the
clock driver and they have to be _exactly_ defined as they are used
(HDMI sinks are very picky).
You will not see any additional rates downstream for RK3568: they have a
mechanism there to automatically calculate the PLL settings if the rate
doesn't exist in these tables (IIRC this was submitted upstream also:
but it was rejected/ignored by maintainers). As a quick hackarround (for
testing): You could use this table [3] we are using in LibreElec for
RK3399 to get 4k modes working and assign it to HPLL in RK3568's clock
driver (I tested it and it works great). It might be possible to just
add those rates (some also without frac dividers) to the common PLL
table for RK3568.
 
I'm sorry I didn't reply inline as I'm supposed to do: It's late and I
wanted to offload my findings now :)
 
(You probably should also remove the printks in V2)
 
Best,

Alex


[0]
https://patchwork.kernel.org/project/linux-rockchip/patch/20211117154429.2274443-1-michael.riesch@wolfvision.net/

[1] https://patchwork.kernel.org/comment/24295683/
[2]
https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L1715-L1720

[3]
https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/patches/linux/default/linux-1000-drm-rockchip.patch#L3155-L3182


