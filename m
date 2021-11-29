Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5729B462892
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 00:49:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233166AbhK2Xw2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 18:52:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233118AbhK2Xw1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 18:52:27 -0500
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E129C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 15:49:09 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id f9so47121496ybq.10
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 15:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eO9+tTPAhguPZ8mpWMSxEU5vryW6o/Y+2ysionl6LLk=;
        b=k2xXFwJjvBrMSd6kVDv+baDaLzQ4quTxwtlEk0J6WyVbiSJN4jrEUTqZ3VlC7O8RhL
         SRX4dMFarF1nTTokZYqEmKf6UjSHKGbaxVFWoFLl+s8YjI2yusR2LZsx/0VsfQ2V2j9w
         gMjy2mPARvqimDIhMMaQcmHKNWIIm8aGU2OTCM7F/tFV+3Knx24zd/Qkc1ycWys+AlWp
         ipdma5i5SQce0rhrGiFtce8/f4coS206qA7aby4BcmeuZElBTmZeKPufKdi5rT1z6h5k
         iPmPqn+8+/gPll1dqy/U2mhXRdnOaHRQNuYx5Vuzp1W/RHdjcpuQpememlbQ9fJRkZJz
         lipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eO9+tTPAhguPZ8mpWMSxEU5vryW6o/Y+2ysionl6LLk=;
        b=r1mmWfqae2Ui4gkyCkdG726wvZN8eV1QtQXMlLqelrHuXKkMe62457LtMO7pTwdCzK
         A3Lg70xTXR/GQPKCW9B38NmXC1OW6VJAD9TLrsxvT0MXCNJgnoGMBkjHjYOKBkiV4tJU
         gKgVEDB7voZxZI5R3/6m+vzRzshKTWDRLMBrhomCzsMpQCHfeqaEJS8Lak/2wHg01PPW
         qqXnUmzsMfnTVyHslpork9rPybLk6H7NS0kkN9MAa32qtfCmdhRsATE+y1WM/i2OYKDu
         nzgk0NHg3YimYt+y66c9p+BPRMtdjGDaEYFXI7h0MQbOW5sLO4Sg0R/9L9Hra+TX/fe/
         8+OQ==
X-Gm-Message-State: AOAM531EX4LpalZrEuVMG2I32wQhn5gQVn+NZMCE8bFEKPXYzr7SuNht
        0E3DgfBnpXSPwvoekUGDqDvpK5xk2ssBs4CP0DiqHsIhDNY=
X-Google-Smtp-Source: ABdhPJwKV3sCSduHOtIvf7K+3+5Nh9llrWBCZFm7AkoXo0WmZU5sSvRsVY0Hq8bKT0h8n28IUDt2DzxhYLOErw/Cm8k=
X-Received: by 2002:a25:6c6:: with SMTP id 189mr9913450ybg.753.1638229748392;
 Mon, 29 Nov 2021 15:49:08 -0800 (PST)
MIME-Version: 1.0
References: <20211125183622.597177-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20211125183622.597177-1-dmitry.baryshkov@linaro.org>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 29 Nov 2021 15:48:32 -0800
Message-ID: <CAGETcx-_6OvcJM1nAoX3pxE3Rard5CRxEuEsmhfLANOzOS1BSQ@mail.gmail.com>
Subject: Re: [PATCH] of: property: do not create clocks device link for clock controllers
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 25, 2021 at 10:36 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Do not create device link for clock controllers.

Nak.

> Some of the clocks
> provided to the device via OF can be the clocks that are just parents to
> the clocks provided by this clock controller. Clock subsystem already
> has support for handling missing clock parents correctly (clock
> orphans). Later when the parent clock is registered, clocks get
> populated properly.
>
> An example of the system where this matters is the SDM8450 MTP board
> (see arch/arm64/boot/dts/qcom/sdm845-mtp.dts). Here the dispcc uses
> clocks provided by dsi0_phy and dsi1_phy device tree nodes. However the
> dispcc itself provides clocks to both PHYs, to the PHY parent device,
> etc. With just dsi0_phy in place devlink is able to break the
> dependency,

Right, because I wrote code to make sure we handle these clock
controller cases properly. If that logic isn't smart enough, let's fix
that.

> but with two PHYs, dispcc doesn't get probed at all, thus
> breaking display support.

Then let's find out why and fix this instead of hiding some
dependencies from fw_devlink. You could be breaking other cases/boards
with this change you are making.

-Saravana

> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Saravana Kannan <saravanak@google.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/of/property.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index a3483484a5a2..f7229e4030e3 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1264,7 +1264,6 @@ struct supplier_bindings {
>         bool node_not_dev;
>  };
>
> -DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
>  DEFINE_SIMPLE_PROP(interconnects, "interconnects", "#interconnect-cells")
>  DEFINE_SIMPLE_PROP(iommus, "iommus", "#iommu-cells")
>  DEFINE_SIMPLE_PROP(mboxes, "mboxes", "#mbox-cells")
> @@ -1294,6 +1293,21 @@ DEFINE_SIMPLE_PROP(backlight, "backlight", NULL)
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>
> +static struct device_node *parse_clocks(struct device_node *np,
> +                                       const char *prop_name, int index)
> +{
> +       /*
> +        * Do not create clock-related device links for clocks controllers,
> +        * clock orphans will handle missing clock parents automatically.
> +        */
> +       if (!strcmp(prop_name, "clocks") &&
> +           of_find_property(np, "#clock-cells", NULL))
> +               return NULL;
> +
> +       return parse_prop_cells(np, prop_name, index, "clocks",
> +                                      "#clock-cells");
> +}
> +
>  static struct device_node *parse_gpios(struct device_node *np,
>                                        const char *prop_name, int index)
>  {
> --
> 2.33.0
>
