Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC6BEC10D4
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 14:25:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725897AbfI1MZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 08:25:13 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:34263 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbfI1MZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Sep 2019 08:25:12 -0400
Received: by mail-ed1-f66.google.com with SMTP id p10so4589421edq.1
        for <devicetree@vger.kernel.org>; Sat, 28 Sep 2019 05:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/hR+kqMDGuDIlBzQcMCCpOjWvuyBdLfiOy3t48A5p6Y=;
        b=f3xx81X7mWXH4CeG5AZFssab+cToO6mGAOOHEKmFloqLfr62ldyeY0Z7oewGlBco4f
         bhRASLKwwg+bRdpnaJKDTAlc7HNc+AJmxufJJbD2Okav13mJwFv/DiEpWuXbsM/f/Dtm
         rZe9V+Fvu+CF0Q2I6P8nHmnbViET59+QugGsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/hR+kqMDGuDIlBzQcMCCpOjWvuyBdLfiOy3t48A5p6Y=;
        b=rU7BvfZNzmndjfKfL4mfgnwn9jFQXFJwiAdbqTdPYJ1+aSmmNJhg9H5eMlVkLwCUos
         eUt1y2O3mQF6EwRf4sGBdg7J45PYtrwmFe+imW0yd8jiMaQ/p/byCdNc3rztsDqwJFjE
         SOrU7oZCEbIV9FNFNKTmPJC+kwLeS9kkPqrJCX5GpYeBXwKEuziKVFsCEi6We5nt5n+r
         cI3GInGInUG9+Pg34qXDSKlHFUCwarLFgeGxjWzfUcvkQuTL2SgolPHsNzqODlRFcol/
         aXI0OKRWPN9OaGjV3krpmSEzKfMaDtLsq/uEOXb7uVdWiC+PkAMzxibAuYNaN9Y94AVS
         73pg==
X-Gm-Message-State: APjAAAX4eShFY/XJn4UdgTETCUzdl12/2jzEcBetCElC5kd36LEaYx21
        Y7aIswtOnb0krut0NPCNOK2y7Lx5klwVBw==
X-Google-Smtp-Source: APXvYqzGP24GuWiv7eMvolTqhWicFsKNTxuf6dlIYE4lP5a0e+sB75Q7FTjGX9iZUNPXtEAL1DDk2w==
X-Received: by 2002:a17:906:1e16:: with SMTP id g22mr11887972ejj.14.1569673510878;
        Sat, 28 Sep 2019 05:25:10 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com. [209.85.128.52])
        by smtp.gmail.com with ESMTPSA id c26sm1178159edb.2.2019.09.28.05.25.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Sep 2019 05:25:10 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id y135so10475555wmc.1
        for <devicetree@vger.kernel.org>; Sat, 28 Sep 2019 05:25:10 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr11383304wme.116.1569673044123;
 Sat, 28 Sep 2019 05:17:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190927071824.18675-1-dongchun.zhu@mediatek.com> <20190927071824.18675-2-dongchun.zhu@mediatek.com>
In-Reply-To: <20190927071824.18675-2-dongchun.zhu@mediatek.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Sat, 28 Sep 2019 21:17:11 +0900
X-Gmail-Original-Message-ID: <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
Message-ID: <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
Subject: Re: [PATCH] media: i2c: ov5695: Modify the function of async register
 subdev related devices
To:     Dongchun Zhu <dongchun.zhu@mediatek.com>
Cc:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        andriy.shevchenko@linux.intel.com,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Cao Bing Bu <bingbu.cao@intel.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        Sj Huang <sj.huang@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        devicetree@vger.kernel.org, Louis Kuo <louis.kuo@mediatek.com>,
        shengnan.wang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 27, 2019 at 4:18 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> This patch adds support for registering a sensor sub-device to the async sub-device framework and parse set up common
> sensor related devices such as actuator/VCM.

nit: The description should be wrapped around the 80th column.

Sakari, do we need to resent or you could just rewrap when applying?

>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  drivers/media/i2c/ov5695.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/media/i2c/ov5695.c b/drivers/media/i2c/ov5695.c
> index e65a943..b6ee62c 100644
> --- a/drivers/media/i2c/ov5695.c
> +++ b/drivers/media/i2c/ov5695.c
> @@ -1328,7 +1328,7 @@ static int ov5695_probe(struct i2c_client *client,
>                 goto err_power_off;
>  #endif
>
> -       ret = v4l2_async_register_subdev(sd);
> +       ret = v4l2_async_register_subdev_sensor_common(sd);
>         if (ret) {
>                 dev_err(dev, "v4l2 async register subdev failed\n");
>                 goto err_clean_entity;
> --
> 2.9.2
>

Otherwise:

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
