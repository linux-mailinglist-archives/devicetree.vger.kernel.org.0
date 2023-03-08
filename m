Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 412616B0E0B
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 17:02:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232461AbjCHQCT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 11:02:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232430AbjCHQBp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 11:01:45 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C8A88C0C4
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 08:00:09 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id x3so67581894edb.10
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 08:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1678291207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1XZIH9inSbl3ZQyMggB2CXJxzURcCERdn7MHGk8JaI=;
        b=w6o7HRK0ue3Q7m8NTdFX2fTDWAHrxzTfH9xr4i1xPQBiRogmbgVo2v45dA8yIYk6nd
         ttG0ejVeOOfBwxASmKz38jAXqLc2bz6krgCut60eHbgiBRnrTiNTGERWeJIxCdddlMg8
         vybhWItaks7KaC1yXTHlJMo0SwmoDEOkpinNYzjRap+rJJKMnH/kI/Mkfk9kDgJnzFkB
         +/rgU8MSd/Q7uLmtPf2QN8TVRSFSl4vQN9MR3W7vxvmKJ4z3SlydUJZO1ACxudnAkXOu
         xf63gA/tr3Jcqz7aMZkZQ4Y2t4S58lZ8WPQSC7DFQRfFzUArFQw/Z9up522qwyQ8u/nl
         2r1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678291207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1XZIH9inSbl3ZQyMggB2CXJxzURcCERdn7MHGk8JaI=;
        b=JMujtz4/De3r5+wWjjl4tT/xCqPbHtTT6lInn2au9W/65f1jjZ/ljzqcUGL9CtuOLH
         wQq0+l0tZX9jmZtZf/iESFaQ9mcEB9O6+Vxl4ATAJzcbm5D/YwrmdaSnb+PIYH6h0iZm
         GsE7b5gXq7o01UY3alVL0WfvQy3NICir9oZWM8GEgwWxunz4f5uuLVMYXgE2sFlD2j8H
         4kPfirWZAD0d978abvNAX0uCtVEQZ3aZYUfjFbWvQ+6Vp6VH3WLv2YPyzIbOCc+3ekZ6
         q/r4K2dkFW7diS1mFWI0T6+/nXiELmDkOiPdP7p5OCQJAxLvc8xI1NLsI0guEmHfH4hI
         x6Jg==
X-Gm-Message-State: AO0yUKUC0yxttSLq2/nFo7xCC9jrnGd7dOX+RfvmPbmjawgfa9wvbM2z
        caWHriRPThE50hkDexnWSiwNPsskKKry09z+Q93Z4Q==
X-Google-Smtp-Source: AK7set9RUWxvLhOUEyhQ+r7aM84SD6AwwEQowhj7IM5+Y/3h2QxwrRus0mrOqkDQW8XLnLHpJm1M9EQtGcrSmQ9R5cE=
X-Received: by 2002:a17:906:338b:b0:879:e5b2:e12d with SMTP id
 v11-20020a170906338b00b00879e5b2e12dmr8490486eja.13.1678291207665; Wed, 08
 Mar 2023 08:00:07 -0800 (PST)
MIME-Version: 1.0
References: <20230307163413.143334-1-bchihi@baylibre.com> <20230307163413.143334-3-bchihi@baylibre.com>
 <fc59f0d1-e2e6-d5ba-ad4f-f67fb375c8ca@collabora.com>
In-Reply-To: <fc59f0d1-e2e6-d5ba-ad4f-f67fb375c8ca@collabora.com>
From:   Balsam CHIHI <bchihi@baylibre.com>
Date:   Wed, 8 Mar 2023 16:59:31 +0100
Message-ID: <CAGuA+oqoYOV4U-=CVCnd0ceiUS4QjTTmPp+n3o7pr2tNNRB3YQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] thermal/drivers/mediatek/lvts_thermal: Add mt8192 support
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org,
        rui.zhang@intel.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 8, 2023 at 10:23=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 07/03/23 17:34, bchihi@baylibre.com ha scritto:
> > From: Balsam CHIHI <bchihi@baylibre.com>
> >
> > Add LVTS Driver support for MT8192.
> >
>
> Since you're changing that documentation twice now, you should split the
> doc changes in a different commit: you will see the big picture if you
> send just one series that introduces both MT8195-AP and MT8192 LVTS suppo=
rt.
>
> You don't need two series for that anyway, so... please send both the new
> MT8195 AP and MT8192 in a single series.

Hi Angelo,

OK, I will send another series that contains all changes.
Thank you for the review!

Best regards,
Balsam

>
> Thanks,
> Angelo
>
