Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C05443DD54C
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 14:10:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233557AbhHBMK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 08:10:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233516AbhHBMK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 08:10:57 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A67C0613D5
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 05:10:48 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id a93so9940896ybi.1
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 05:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IokGs/ock9H3fPpCABnbBAUNhbT31L4t8yb0xlxFIy8=;
        b=oPeKY+Mn1bWxGwC8jLRHIpeFGvMJPtDjw06oaa8Knjmr9RsGRNOLC5NJq52SJlKGFB
         ugZVPyMeLkbm30ClxKj0tawg1XAbciSDD3yy0gj5ETJdyayUFQYqaNlBudYyb01s/u9G
         RGZL9w88H9CojbM8tkZgSsHAPn9+RtwES0k1PO9kL3RnrjPFI+nlK2ls83dZoGBUOmL4
         opQLTyDEgPEjjUv2SXSkvrjOhK34IDLLtiAKmUhQ/SEoey/4DEAi18DnDpNl/cxxtJuP
         42TLxX41ZT0YvxDtrICkv18dONEoU7HQe1hF7Of8V/ma2skYjNN0Uic4nb/rFn0mvD8z
         NY+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IokGs/ock9H3fPpCABnbBAUNhbT31L4t8yb0xlxFIy8=;
        b=P+A6gNcN8Id758f+x0t3NQD+gxz1BpML0uFeL06FSCdapb3tbSouAxHWlIJWABYWQO
         BBLN5Rydkf3cH2K00DbthTLA51WQyHpUo4v2meRGNY+7LhLmYSmOIll8SJNFG4gMJlMg
         whLyfMKWitYomaOX+SRkfZk3+zviARiGSV0N1DfS8jOdTNcLwXje/c4/o4WfxrKtNTHg
         Og6RIxuhLRSS3VFRv7ZS3KXNfF1wJWKAKyLR5eiNK10J0MHU/FCpGExkoFKNOE73UWK4
         7+yeCdqcBxgOa8FsVNHvnU4qmNi+DKldXnD2MA7znw5e8Zzd9AEW8CQx7a+Cqlog4+c0
         4dfg==
X-Gm-Message-State: AOAM533JIpENsncuyZOh6/d6y1xe26GtKTqKgMVNFaK9nb8jLxsyd2qm
        W2HWqrm+6KAq+/j1C+cAH4W+cKHNfvHxnFl5gL0OMQ==
X-Google-Smtp-Source: ABdhPJxd/nHYE1HdonBqJGgu3Tqa+WZ9PmgGGn7DeGFK/iw+LvNCai1ySHkhSlmzifsAFlqatmlthT2JUhnQjRlcQcU=
X-Received: by 2002:a25:3750:: with SMTP id e77mr20820613yba.469.1627906247652;
 Mon, 02 Aug 2021 05:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210716221744.5445-1-robert.marko@sartura.hr>
In-Reply-To: <20210716221744.5445-1-robert.marko@sartura.hr>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 2 Aug 2021 14:10:36 +0200
Message-ID: <CAMpxmJXy1L-OC7k+h6pOwFGNS8WntNSMjP1Kvu7tnCQvGNwnRw@mail.gmail.com>
Subject: Re: [PATCH 1/2] gpio: tn48m: Add support for Delta TN4810M CPLD
To:     Robert Marko <robert.marko@sartura.hr>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 17, 2021 at 12:17 AM Robert Marko <robert.marko@sartura.hr> wrote:
>
> Delta TN4810M uses a similar CPLD GPIO expander
> like the TN48M, but it has pins for 48 SFP+ ports,
> making a total of 192 pins.
> It also provides the TX fault pins which the TN48M
> does not.
>
> Only TX disable pins like on the TN48M are output
> ones.
>
> Thankfully, regmap GPIO allows for the driver to be
> easily extended to support the TN4810M.
>
> Note that this patch depends on the following series:
> https://patchwork.ozlabs.org/project/linux-gpio/list/?series=247538
>
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
>  drivers/gpio/gpio-tn48m.c | 56 ++++++++++++++++++++++++++++++++++++---
>  1 file changed, 52 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpio/gpio-tn48m.c b/drivers/gpio/gpio-tn48m.c
> index b12a6b4bc4b3..e429e7ade941 100644
> --- a/drivers/gpio/gpio-tn48m.c
> +++ b/drivers/gpio/gpio-tn48m.c
> @@ -19,6 +19,10 @@ enum tn48m_gpio_type {
>         TN48M_SFP_TX_DISABLE = 1,
>         TN48M_SFP_PRESENT,
>         TN48M_SFP_LOS,
> +       TN4810M_SFP_TX_DISABLE,
> +       TN4810M_SFP_TX_FAULT,
> +       TN4810M_SFP_PRESENT,
> +       TN4810M_SFP_LOS,
>  };
>
>  static int tn48m_gpio_probe(struct platform_device *pdev)
> @@ -46,17 +50,36 @@ static int tn48m_gpio_probe(struct platform_device *pdev)
>
>         config.regmap = regmap;
>         config.parent = &pdev->dev;
> -       config.ngpio = 4;
> +       config.ngpio_per_reg = 8;
>
>         switch (type) {
>         case TN48M_SFP_TX_DISABLE:
>                 config.reg_set_base = base;
> +               config.ngpio = 4;
>                 break;
>         case TN48M_SFP_PRESENT:
>                 config.reg_dat_base = base;
> +               config.ngpio = 4;
>                 break;
>         case TN48M_SFP_LOS:
>                 config.reg_dat_base = base;
> +               config.ngpio = 4;
> +               break;
> +       case TN4810M_SFP_TX_DISABLE:
> +               config.reg_set_base = base;
> +               config.ngpio = 48;
> +               break;
> +       case TN4810M_SFP_TX_FAULT:
> +               config.reg_dat_base = base;
> +               config.ngpio = 48;
> +               break;
> +       case TN4810M_SFP_PRESENT:
> +               config.reg_dat_base = base;
> +               config.ngpio = 48;
> +               break;
> +       case TN4810M_SFP_LOS:
> +               config.reg_dat_base = base;
> +               config.ngpio = 48;
>                 break;
>         default:
>                 dev_err(&pdev->dev, "unknown type %d\n", type);
> @@ -67,9 +90,34 @@ static int tn48m_gpio_probe(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id tn48m_gpio_of_match[] = {
> -       { .compatible = "delta,tn48m-gpio-sfp-tx-disable", .data = (void *)TN48M_SFP_TX_DISABLE },
> -       { .compatible = "delta,tn48m-gpio-sfp-present", .data = (void *)TN48M_SFP_PRESENT },
> -       { .compatible = "delta,tn48m-gpio-sfp-los", .data = (void *)TN48M_SFP_LOS },
> +       {
> +               .compatible = "delta,tn48m-gpio-sfp-tx-disable",
> +               .data = (void *)TN48M_SFP_TX_DISABLE
> +       },
> +       {
> +               .compatible = "delta,tn48m-gpio-sfp-present",
> +               .data = (void *)TN48M_SFP_PRESENT
> +       },
> +       {
> +               .compatible = "delta,tn48m-gpio-sfp-los",
> +               .data = (void *)TN48M_SFP_LOS
> +       },
> +       {
> +               .compatible = "delta,tn4810m-gpio-sfp-tx-disable",
> +               .data = (void *)TN4810M_SFP_TX_DISABLE
> +       },
> +       {
> +               .compatible = "delta,tn4810m-gpio-sfp-tx-fault",
> +               .data = (void *)TN4810M_SFP_TX_FAULT
> +       },
> +       {
> +               .compatible = "delta,tn4810m-gpio-sfp-present",
> +               .data = (void *)TN4810M_SFP_PRESENT
> +       },
> +       {
> +               .compatible = "delta,tn4810m-gpio-sfp-los",
> +               .data = (void *)TN4810M_SFP_LOS
> +       },
>         { }
>  };
>  MODULE_DEVICE_TABLE(of, tn48m_gpio_of_match);
> --
> 2.31.1
>

This looks good to me. I suppose the other patches are going in
through the MFD tree. I don't see anything that can fail here at
build-time - can you confirm that I can pick these patches up
separately for v5.15?

Bartosz
