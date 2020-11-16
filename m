Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF1DE2B4594
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 15:11:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729344AbgKPOKp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 09:10:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729232AbgKPOKp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 09:10:45 -0500
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38200C0613CF
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 06:10:45 -0800 (PST)
Received: by mail-il1-x143.google.com with SMTP id x18so1443652ilq.4
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 06:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cYP4Vu646u4Dw2kqVmRdOWO66REb1oI9drXRYeKSjdA=;
        b=Rk0UsA/C9nnVfLmtvTYcFWvJ4zvt0pQDvfx2QqP7GwdvzLZYc0aPdxX0BdjXCAdDF8
         8X+WJkdmc/B9XEu1eyG0jf0op6ixur1kxIieXdT9knkEN/IDXi3FvHekI68XSMrCf6dl
         mDzQ5BV6yssIx+EjvVGClzKkKjPXRg8YLIchAwafZ7zlOq3EcqhCrs4jCpeoJbdn9e48
         E9UzljRxJVgnJj/X6Ra7Q3NrQI/uBv964Nm1QLtZ+R4cn86A1WGgBT9Ijh1/WXhDvABR
         naJg+6AIukiUC5pQmlb3NnLY4QPW5LhWZX635hrIldQm+szNoU3zI/H+p1AWI36VYB5l
         4+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cYP4Vu646u4Dw2kqVmRdOWO66REb1oI9drXRYeKSjdA=;
        b=nE67IrZ6J72biompLmWfDNXX9JZS6DFq+tqGyoLvPnio2YmLQ3QQYsT5K0FEKvxMSg
         qB+M/2Yt9EkInZnzeVEBRz1ORMSEGgnnYnDnLbqTXEcH1y6IuB1teSx9tAos+p9/QbII
         sTHL7U9TY2XjyApXzKBVC5o6snnQIWpwl+SZNXUAwuL+lstYc/BCAqVfls6TGsuO2+wr
         1DD6rR+ONnghCgprrvZaLdV+RFewLhV3fO+s5qrcu6u9BQA9VMH8F+72nolsVfoTNUVI
         5X7fr8lHEzhyTjz3Yzo08cRVOAIqA5x/M85ESkmuI1vsoH2e/F1/HgGnlnnR94mmC6P6
         IQ0A==
X-Gm-Message-State: AOAM531GngmjC9M3PM0EQ8IgqXrgf5SarNpgg7TVTsIne1FzhqQUO5W7
        fUnQz68DxRasc/4O2Jisi+XTnV6iCfbZDPiyLGVEFAvQ1ms=
X-Google-Smtp-Source: ABdhPJyICgO7K6VQ2nJJj+9xivvKHSD8OXSdEwJY2e4iDjldYb3r4LU1hvtuC9NV4TZB61bmOGVeE/eCG3VC5cqdK3Q=
X-Received: by 2002:a92:9845:: with SMTP id l66mr7998399ili.65.1605535844362;
 Mon, 16 Nov 2020 06:10:44 -0800 (PST)
MIME-Version: 1.0
References: <20201105174434.1817539-1-l.stach@pengutronix.de> <20201105174434.1817539-2-l.stach@pengutronix.de>
In-Reply-To: <20201105174434.1817539-2-l.stach@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Mon, 16 Nov 2020 08:10:33 -0600
Message-ID: <CAHCN7xL0g+Fju1oUhz1ZWTM06CH5xn6y-s5xZCQKO0zwXdFAoQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/13] soc: imx: gpcv2: move to more ideomatic error
 handling in probe
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 5, 2020 at 11:44 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Switch to "goto out..." error handling in domain driver probe to
> avoid repeating all the error paths.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Marek Vasut <marex@denx.de>

I can confirm the USB is functional now without having to turn it on
in the bootloader on the imx8mm-beacon-kit.

For the series:

Tested-by: Adam Ford <aford173@gmail.com>

> ---
>  drivers/soc/imx/gpcv2.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index db7e7fc321b1..512e6f4acafd 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -502,18 +502,23 @@ static int imx_pgc_domain_probe(struct platform_device *pdev)
>         ret = pm_genpd_init(&domain->genpd, NULL, true);
>         if (ret) {
>                 dev_err(domain->dev, "Failed to init power domain\n");
> -               imx_pgc_put_clocks(domain);
> -               return ret;
> +               goto out_put_clocks;
>         }
>
>         ret = of_genpd_add_provider_simple(domain->dev->of_node,
>                                            &domain->genpd);
>         if (ret) {
>                 dev_err(domain->dev, "Failed to add genpd provider\n");
> -               pm_genpd_remove(&domain->genpd);
> -               imx_pgc_put_clocks(domain);
> +               goto out_genpd_remove;
>         }
>
> +       return 0;
> +
> +out_genpd_remove:
> +       pm_genpd_remove(&domain->genpd);
> +out_put_clocks:
> +       imx_pgc_put_clocks(domain);
> +
>         return ret;
>  }
>
> --
> 2.20.1
>
