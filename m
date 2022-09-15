Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 168D65BA021
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 18:58:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230142AbiIOQ6z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 12:58:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230241AbiIOQ6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 12:58:53 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A999E97EC4
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 09:58:50 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id t184so28674116yba.4
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 09:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=DGGPltysYKSp/7lQwYUdbyRbVIJyU3VFPRDcDMDYhRs=;
        b=GTpQoXRELGKRGGrEnQpUG6fqFn95MU+JX7Awv2d0h+D+NLsQ/r1UDWlPfW+GzOhld8
         bAGtuk2DCu/dhAJ6RnbkX/ET49JQClyB7mybPtc+ltnm1nb1hsch1CDbW6bYdS0x51cb
         CWeDIJm/TL5RPQ3+maQlmciTLLWbP7C5UsLFr7N/8C951nfRSa/6oNnXrjdC8pKXgaYD
         Ubx6YxV13D04BE0gT/4Alk5fBE1OaKJkLAdMY3GdGXv4B0C5jGrlPOY9+X1Qb4j/7Rjq
         YYmW6MriaI0Ik0g8rSswhW7g7gDHZvTJ+kUKai/+YL5bNKnmo183NUkjYIVe7EnfgT67
         PCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=DGGPltysYKSp/7lQwYUdbyRbVIJyU3VFPRDcDMDYhRs=;
        b=W16N+PbtrnKTPeBd9K+SJ29uL4t0I4SXKUd4ZfZyI1gy9esbErP4yGQ4IgT5F+EQjB
         9MoPEJZinQ8t9N34OUUT5QLnnHujQddiy8Ackk7U13D2DAEcguZ9KzznGqJOhF2FAPCU
         8HsSlvttC0+ALMpUUaxbm++ktLL154UEi6l0ak+rOVvSR8+s8irfIms8DmMfsxjiAVP4
         8URXCiSBa2//hMR6BVNufjIec3QAzcSDbPlOrlhhDljHgQrCIzGF30WdySzvUjwf6K12
         rNFZHDGk1ZbTipkcJb9Mb1Ym1kW3a2L4B9Z74vS8oO5Mgr1hzWO+qiHZo+sIGXIcVHaa
         C04Q==
X-Gm-Message-State: ACrzQf3jyBB2Psx4AwAqAT6a6jcHa+5lMlPfFAQif9dEK4IHXJxBnOIU
        cP+jvKo6L12HJcncZ8aoF5rm3PixC2Ae0/YhNpcqCA==
X-Google-Smtp-Source: AMsMyM49cq5D3GONdx4uJlA3ekuaqH1iwlSdpHLW6fbdANnjlZkcRMf5cVhFmFbRDuF08i7luVZpESHqd3EkEGxXQH4=
X-Received: by 2002:a25:e74f:0:b0:6ae:eaef:36cb with SMTP id
 e76-20020a25e74f000000b006aeeaef36cbmr649534ybh.199.1663261129842; Thu, 15
 Sep 2022 09:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220817080757.352021-1-bchihi@baylibre.com> <20220817080757.352021-5-bchihi@baylibre.com>
 <8d6383e0-329e-ca91-6e79-85b3806a2af3@collabora.com>
In-Reply-To: <8d6383e0-329e-ca91-6e79-85b3806a2af3@collabora.com>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Thu, 15 Sep 2022 18:58:13 +0200
Message-ID: <CAGuA+ooEHPiHuGYXOh7s68HRTv9HSr-BexFsCLUPWTMQ3szCfg@mail.gmail.com>
Subject: Re: [PATCH v9,4/7] thermal: mediatek: Add LVTS driver for mt8192
 thermal zones
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     rafael@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
        amitk@kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, khilman@baylibre.com,
        mka@chromium.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        matthias.bgg@gmail.com, p.zabel@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, james.lo@mediatek.com,
        fan.chen@mediatek.com, louis.yu@mediatek.com,
        rex-bc.chen@mediatek.com, abailon@baylibre.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Angelo,

> > +static int soc_temp_lvts_read_temp(void *data, int *temperature)
> > +{
> > +     struct soc_temp_tz *lvts_tz = (struct soc_temp_tz *)data;
> > +     struct lvts_data *lvts_data = lvts_tz->lvts_data;
> > +     struct device *dev = lvts_data->dev;
> > +     unsigned int msr_raw;
> > +
> > +     msr_raw = readl(lvts_data->reg[lvts_tz->id]) & MRS_RAW_MASK;
> > +     if (msr_raw == 0) {
> > +             /* Prevents a false critical temperature trap */
> > +             *temperature = 0;
> > +             dev_dbg(dev, "LVTS not yet ready\n");
>
> ...and you're not returning an error code, despite this function was called
> while LVTS is still not ready? :-)
>

if I add "return -ENAVAIL;" here, I will get the following errors on boot :
[    0.292094] thermal thermal_zone0: failed to read out thermal zone (-119)
[    0.293019] thermal thermal_zone1: failed to read out thermal zone (-119)
[    0.294158] thermal thermal_zone6: failed to read out thermal zone (-119)
[    0.295697] thermal thermal_zone9: failed to read out thermal zone (-119)
[    0.296600] thermal thermal_zone10: failed to read out thermal zone (-119)
[    0.297698] thermal thermal_zone15: failed to read out thermal zone (-119)
[    0.298625] thermal thermal_zone16: failed to read out thermal zone (-119)

I just preferred : *temperature = 0; to avoid a false critical temperature trap,
and "return 0;" to suppress these errors.
After that (first read at boot when LVTS is not fully ready),
"msr_raw" will be always != 0.
And I did not want to add a "delay" or a "sleep".
Please let me know if you have any suggestions that could fix it in a
better way.

> > +
> > +     } else
> > +             *temperature = lvts_raw_to_temp(&lvts_data->coeff, msr_raw);
> > +
> > +     return 0;
> > +}

Best regards,
Balsam
