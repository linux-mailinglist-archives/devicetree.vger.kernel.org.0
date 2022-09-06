Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB7275AF6FA
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 23:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiIFVjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 17:39:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbiIFVjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 17:39:04 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD6F6B6D2D
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 14:39:03 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1274ec87ad5so16581523fac.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 14:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date;
        bh=MI08UNxAOnd9oxFmv4C6SfhMJQ/93TZu/WFSwhEtO1s=;
        b=hu11akstVs9ntl1891dAVfykY83Af2p5EQ6rWXdFAkTLJGAQGS62cIlKyV3QlYy2PD
         gOUeZm4T8IiT3eMEybGWJ5SQTiwiR7gG91o5tYWuMz08AeTKSd/DOqZeisSr9wjc0kLq
         Qtb6FJe2CQaJHsy/fCZdDykudQXbgKPrcnoGTKnCGcORd52CVMa+6GZIuf5UU9asNyU9
         HpRqyMFWLU7Fs5abApoejvk130xzZZtVQ45DshXeURdqv3MxD8DmoS3QCBkZho00Eryn
         DtZ8oO7wSc76Wtrx+6ncI+FQABvCjqEFHz6qHLcCVvxNltzypIIsB8JqpOOZVA65ey0j
         /Lzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=MI08UNxAOnd9oxFmv4C6SfhMJQ/93TZu/WFSwhEtO1s=;
        b=YdjBZK0GNCIJjRJtnKDGR10H/LSM/Du09tCyeWLPvbrQNY7vVsXMMIOdyVJZeuOHeh
         OucXO+/ybxmJelqZ6tZJ+LiYVTMx3V0A6fz7B64JqsojDi7kmFhrVJo6FhZkjt2/vYpX
         M2Ox9ojbu9zhBjSMPYfNRc6YK5mWaFHbGaYoa7s5c6AtA1wRjS/9aq+/CROs6tD/Fc4O
         +mT430DOeeXwhhn1tg4UgBzsdXJazej8rF9HFfsX8FTSU/jhNi6ns1chT3wZka9H/1Id
         z7g+4er0TuYC8TJOgGiakRUIUUKkcq2QpiRU7MHZ/7+CbyXZ6ToI0Api1j/pY2CVcnFI
         pWGQ==
X-Gm-Message-State: ACgBeo31pV88JyCdCqL1z8MoYTqWdECnRS+M2DXkCykkKJhaxY05SUlB
        b0Eu/bwGs2E87tm2iM6OP6E=
X-Google-Smtp-Source: AA6agR46SDnWMe7UrRNnpLt3ZcK25Zg5KVlWl/Sy/h1nPuNJeRmLNAIc0KHvWXm5glgm2002p44hAw==
X-Received: by 2002:a05:6871:b21:b0:127:69ad:538e with SMTP id fq33-20020a0568710b2100b0012769ad538emr162111oab.260.1662500343070;
        Tue, 06 Sep 2022 14:39:03 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id m16-20020a056808025000b00344851ea0ddsm5766777oie.56.2022.09.06.14.39.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:39:02 -0700 (PDT)
Date:   Tue, 6 Sep 2022 16:38:59 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Maya Matuszczyk <maccraft123mc@gmail.com>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-phy@lists.infradead.org,
        devicetree <devicetree@vger.kernel.org>,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peter Geis <pgwipeout@gmail.com>, vkoul@kernel.org,
        kishon@ti.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Heiko Stuebner <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 0/5] rockchip-dsi for rk3568
Message-ID: <20220906213859.GA29434@wintermute.localdomain>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
 <CAO_MupLcjY=3mWA7_RN4AAPir1Gu_GR4q1=5_9wdSEi-qcHKSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAO_MupLcjY=3mWA7_RN4AAPir1Gu_GR4q1=5_9wdSEi-qcHKSQ@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 06, 2022 at 07:57:28PM +0200, Maya Matuszczyk wrote:
> Hello,
> What other patches would I need to apply to test this series
> on Anbernic RG503?

In addition to these patches you'd need the devicetree series:
https://lore.kernel.org/linux-rockchip/20220906210324.28986-1-macroalpha82@gmail.com/

You'd need the panel driver:
https://lore.kernel.org/dri-devel/20220906183642.12505-1-macroalpha82@gmail.com/

And you'd need to update the binding for the panel in the devicetree
(example here):
https://gist.github.com/macromorgan/caff01bfe4df6995d5f74cef701ede6d

If you apply these patches and roll back the clock driver changes the
panel should start working for you as it does for me. I tested by
nuking my build-tree and starting fresh with just these patches.

https://cdn.discordapp.com/attachments/973914035890290718/1015350475152949248/IMG_2028.jpg

Thank you.

> 
> Best Regards,
> Maya Matuszczyk
> 
> 
> wt., 6 wrz 2022 o 19:52 Chris Morgan <macroalpha82@gmail.com> napisał(a):
> >
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > This series adds support for the dsi and dphy controllers on the
> > Rockchip RK3568. I can confirm that for the Rockchip RK3568 this
> > current series DOES WORK now, but it requires rolling back clk changes
> > made for the HDMI driver. If the clock changes are not rolled back, the
> > image on the screen is shifted about 100 pixels to the right.
> >
> > Clk changes in question:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=ff3187eabb5ce478d15b6ed62eb286756adefac3
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/clk/rockchip/clk-rk3568.c?id=6e69052f01d9131388cfcfaee929120118a267f4
> >
> > Tested on an Anbernic RG503 and RG353P with clock changes rolled back,
> > the hardware works correctly on both devices.
> >
> > Changes since RFCv1:
> >  - Identified cause of image shift (clock changes).
> >  - Noted that driver works now.
> >  - Added devicetree nodes for rk356x.dtsi.
> >
> > Chris Morgan (5):
> >   dt-bindings: display: rockchip-dsi: add rk3568 compatible
> >   dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
> >   drm/rockchip: dsi: add rk3568 support
> >   phy/rockchip: inno-dsidphy: Add support for rk3568
> >   arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
> >
> >  .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
> >  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
> >  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
> >  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
> >  5 files changed, 281 insertions(+), 48 deletions(-)
> >
> > --
> > 2.25.1
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
