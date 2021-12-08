Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7A1546D153
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 11:48:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231935AbhLHKvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 05:51:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231925AbhLHKvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 05:51:54 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26EA9C061A32
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 02:48:22 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id b19so1429632ljr.12
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 02:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b+SdIraKU1h/VTJU366bK+146L0b2CZSCkrC1RqcLiI=;
        b=fhXHxYwOAsjpDT7PFmr/Ay2Bpv6Q52w7gzhLvGp3vi03x0kgJwC1mR2nR1tEBwpntR
         5BIgAfnWN19+UstNXJU4S3pPdsYuWBgNebk4d3ZIyHcMtWi3YzAF0eZIz8zZvhekOaoN
         dpXhu+rLaGYfNU3wPEK81pcn5RGWC+TYP50YKir8VfeN5bYZl1TC19FCevLctaRQ7GbS
         gPCsf9ihaBJkTM0mvs/9FwV0KyzdDAXiEqb7QKxeQwaG8ND1MHBq/EpD6AasS8g7Ta3l
         bXpZYLOXalhq5nbUEDXeIJBRG84NeR6F77adUrF6zH9WKGEaVG6SVgZm6ihC4RzUHLYr
         VlWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b+SdIraKU1h/VTJU366bK+146L0b2CZSCkrC1RqcLiI=;
        b=Vvf31/ZBiHp91yYIr+0n70u6ytHRoH2GEAhd8AjCMNDw4Ysem3gadF1eWm8J/BfQaP
         e8ckAOeN4PaCq9EUfrKB8pDaWiIY3CQh70EWxp+jQhj/oYt2wEz54OXLJemFa5TJWpdY
         4L0TOg3+YqCasDGhM4V1oYriBSEvWuase2U7ZS5oqm+0At2L7/lB6+U3ak1/duUR42rR
         O3w4ASL0VQ2PEk5Ow4GFrZX/sNzUj+phob0N0GgTq2GTJKag2IyQX6/oA4ednD5rBdUG
         Yi/UkPzwQPFkqeAO3+fCwGwPee7eqO8IRzlwKvWwO096/eBTdM7mHufl3WVXRw0ONrHW
         Xqvg==
X-Gm-Message-State: AOAM533/L7fU5ug7mEme+6TMenaoN4f/6QJg3S3Nc1KjsS0rnbvzA5Tu
        Jsn4Dv61kxR+EfAuDKpcS3oz7LNpHRheJK+/VHZfUQ==
X-Google-Smtp-Source: ABdhPJwVpthnKSrDF/C2HexBrqNAjJ6E3HCFUU7MoAlXVzpyAbLD4i9B/Oo9exkRlkxfOdIXnrTziCam6tJi8meqZow=
X-Received: by 2002:a2e:a22a:: with SMTP id i10mr48977767ljm.16.1638960500425;
 Wed, 08 Dec 2021 02:48:20 -0800 (PST)
MIME-Version: 1.0
References: <20211204061042.1248028-1-Mr.Bossman075@gmail.com> <20211204061042.1248028-12-Mr.Bossman075@gmail.com>
In-Reply-To: <20211204061042.1248028-12-Mr.Bossman075@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 8 Dec 2021 11:47:44 +0100
Message-ID: <CAPDyKFohGQ9M08sJmM5eo2jNhrvFSHA2bnb31AEgiFCFfV78ng@mail.gmail.com>
Subject: Re: [PATCH v4 11/13] mmc: sdhci-esdhc-imx: Add sdhc support for
 i.MXRT series
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     linux-imx@nxp.com, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        Kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
        stefan@agner.ch, linus.walleij@linaro.org,
        gregkh@linuxfoundation.org, arnd@arndb.de, olof@lixom.net,
        soc@kernel.org, linux@armlinux.org.uk, abel.vesa@nxp.com,
        adrian.hunter@intel.com, jirislaby@kernel.org,
        giulio.benetti@benettiengineering.com,
        nobuhiro1.iwamatsu@toshiba.co.jp, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 4 Dec 2021 at 07:11, Jesse Taube <mr.bossman075@gmail.com> wrote:
>
> From: Jesse Taube <mr.bossman075@gmail.com>
>
> Add support for i.MXRT1050's sdhc.
>
> Cc: Giulio Benetti <giulio.benetti@benettiengineering.com>
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

No need to resend this, it's already been applied.

Kind regards
Uffe



> ---
> V1->V2:
> * Nothing done
> V2->V3:
> * Rename imxrt to imxrt1050
> * Remove BROKEN_AUTO_CMD23 and MAN_TUNING flags
> V3->V4:
> * Nothing done
> ---
>  drivers/mmc/host/sdhci-esdhc-imx.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
> index 764ee1b761d9..55981b0f0b10 100644
> --- a/drivers/mmc/host/sdhci-esdhc-imx.c
> +++ b/drivers/mmc/host/sdhci-esdhc-imx.c
> @@ -305,6 +305,9 @@ static struct esdhc_soc_data usdhc_imx7ulp_data = {
>                         | ESDHC_FLAG_PMQOS | ESDHC_FLAG_HS400
>                         | ESDHC_FLAG_STATE_LOST_IN_LPMODE,
>  };
> +static struct esdhc_soc_data usdhc_imxrt1050_data = {
> +       .flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_HS200 | ESDHC_FLAG_ERR004536,
> +};
>
>  static struct esdhc_soc_data usdhc_imx8qxp_data = {
>         .flags = ESDHC_FLAG_USDHC | ESDHC_FLAG_STD_TUNING
> @@ -355,6 +358,7 @@ static const struct of_device_id imx_esdhc_dt_ids[] = {
>         { .compatible = "fsl,imx7ulp-usdhc", .data = &usdhc_imx7ulp_data, },
>         { .compatible = "fsl,imx8qxp-usdhc", .data = &usdhc_imx8qxp_data, },
>         { .compatible = "fsl,imx8mm-usdhc", .data = &usdhc_imx8mm_data, },
> +       { .compatible = "fsl,imxrt1050-usdhc", .data = &usdhc_imxrt1050_data, },
>         { .compatible = "nxp,s32g2-usdhc", .data = &usdhc_s32g2_data, },
>         { /* sentinel */ }
>  };
> --
> 2.34.0
>
