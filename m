Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D996E53A5BA
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 15:15:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353218AbiFANPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 09:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353160AbiFANO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 09:14:58 -0400
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 477C33CA5A
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 06:14:55 -0700 (PDT)
Received: by mail-ua1-x935.google.com with SMTP id k13so563761uad.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 06:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5oFlaqtX6Yq+R/EhuIa6+mVBAE5xqUeJ8MpuQJuCFYc=;
        b=QFc9awc69slVDpPs+RhYanvhdJvd0vPvqc9HWnpXc3H92mF8uFR/Mm9bEW8+rT3fWQ
         zOHvlZNQ57HTaOoMzuw5a/V22qGxPTZMuRtzQekFUO8o2peSu0TX9r6P7atJ4CN/cx7D
         Y2a8dRrO23OHLDKQ1xgk6IuDzyFBnMg1xRn4OcNa7Wal7rils+um4ElbBOVLIPdKTkV9
         bX9pqyDM61JixNfClPM+Zx1Z9WlcnYppiys47bWkdA9lQ3Eyncrblfg86ovcZN5i/+Cd
         jK+H+brMp3AS6ilpTWdDTmBsNptqKa/zxmIdbQxKyh1HHnH0fuDUrgbQnhlWXzl/OEAb
         3OoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5oFlaqtX6Yq+R/EhuIa6+mVBAE5xqUeJ8MpuQJuCFYc=;
        b=oaOHxffXuYBY+ilL8GTRi7QuUDwgeqAGPUyk9lfHLGrPOT6z/s6nqrn7PT1vFKy3Os
         Ya+bw9gRVhI5z7BLZhsHTdrPoKGlGMjK6dFMaEQbtAY8WcONkt5tuapnoFtHoXif6ptt
         8bHt/tkqoNdsd87FT06oGzmN846+1r9sV6YEjG+e57qm2A1m5e4qShg6TMZY3OqPbC8j
         rBX5rsjO3FOGorTFwKj+s0O+YG545Ia+Jy7PkmQaotyvXS5wdKBeRUvg5lX2aqS5cYX/
         DkXIUaNLOXyHlGNkoxPCNnxvcoi+mCSnfTgiN9ehUxmthvJJRaqaQ9Ye83lKaLBOKGJk
         wXYQ==
X-Gm-Message-State: AOAM531SuQuKAM41LYkG1T9DCltj2RfyaZE5LNse034eL/0STOEiOVbB
        k6M7xynHim73tPzD8qP4gTaKRm/A+iJsYT/BvdA=
X-Google-Smtp-Source: ABdhPJwZYaQfUV/9ofAmTmN7as5XMTrTJXLgJilsHY1Q3QqwvfC7EUhkXYjsM6NyVgP2wOfuMDqta9uGK+hoAiG8Aus=
X-Received: by 2002:ab0:15ae:0:b0:359:6107:43b8 with SMTP id
 i43-20020ab015ae000000b00359610743b8mr23221350uae.23.1654089294317; Wed, 01
 Jun 2022 06:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220601125344.60602-1-stefan.wahren@i2se.com> <20220601125344.60602-8-stefan.wahren@i2se.com>
In-Reply-To: <20220601125344.60602-8-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Wed, 1 Jun 2022 14:14:09 +0100
Message-ID: <CALeDE9Nam-w3d6CHTgFeOBcxqvmT+b-jrdCj+xVNWxoR6Ojtsw@mail.gmail.com>
Subject: Re: [PATCH V2 07/11] mfd: bcm2835-pm: Add support for BCM2711
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 1, 2022 at 1:54 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> as the old one.
>
> As per the devicetree bindings, BCM2711 will provide both the old and
> new ASB resources, so get both of them and pass them into
> 'bcm2835-power,' which will take care of selecting which one to use
> accordingly.
>
> Since the RPiVid ASB's resources were being provided prior to formalizing
> the bindings[1], also support the old DT files that didn't use
> 'reg-names.'
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> [1] See: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
> ---
>  drivers/mfd/bcm2835-pm.c       | 21 +++++++++++++++++++++
>  include/linux/mfd/bcm2835-pm.h |  1 +
>  2 files changed, 22 insertions(+)
>
> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
> index c1e81a4541d7..e65aee6f9b84 100644
> --- a/drivers/mfd/bcm2835-pm.c
> +++ b/drivers/mfd/bcm2835-pm.c
> @@ -28,6 +28,8 @@ static const struct mfd_cell bcm2835_power_devs[] = {
>  static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>                                 struct bcm2835_pm *pm)
>  {
> +       bool is_bcm2711 = of_device_is_compatible(pm->dev->of_node, "brcm,bcm2711-pm");
> +
>         /* If no 'reg-names' property is found we can assume we're using old
>          * firmware.
>          */
> @@ -39,6 +41,7 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>                         return PTR_ERR(pm->base);
>
>                 pm->asb = devm_platform_ioremap_resource(pdev, 1);
> +               pm->rpivid_asb = devm_platform_ioremap_resource(pdev, 2);
>         } else {
>                 struct resource *res;
>
> @@ -50,11 +53,28 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
>                                                     "asb");
>                 if (res)
>                         pm->asb = devm_ioremap_resource(&pdev->dev, res);
> +
> +               res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> +                                                   "rpivid_asb");
> +               if (res)
> +                       pm->rpivid_asb = devm_ioremap_resource(&pdev->dev,
> +                                                               res);
>         }
>
>         if (IS_ERR(pm->asb))
>                 pm->asb = NULL;
>
> +       if (IS_ERR(pm->rpivid_asb))
> +               pm->rpivid_asb = NULL;
> +
> +       /* Ensure that rpivid_asb is set only for BCM2711, so subsequent
> +        * driver can rely on this and don't get confused by broken DTB.
> +        */
> +       if (pm->rpivid_asb && !is_bcm2711) {
> +               dev_err(pm->dev, "Unexpected rpivid_asb register, please fix your DTB.\n");
> +               return -EINVAL;
> +       }
> +
>         return 0;
>  }
>
> @@ -95,6 +115,7 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>  static const struct of_device_id bcm2835_pm_of_match[] = {
>         { .compatible = "brcm,bcm2835-pm-wdt", },
>         { .compatible = "brcm,bcm2835-pm", },
> +       { .compatible = "brcm,bcm2711-pm", },
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, bcm2835_pm_of_match);
> diff --git a/include/linux/mfd/bcm2835-pm.h b/include/linux/mfd/bcm2835-pm.h
> index ed37dc40e82a..f70a810c55f7 100644
> --- a/include/linux/mfd/bcm2835-pm.h
> +++ b/include/linux/mfd/bcm2835-pm.h
> @@ -9,6 +9,7 @@ struct bcm2835_pm {
>         struct device *dev;
>         void __iomem *base;
>         void __iomem *asb;
> +       void __iomem *rpivid_asb;
>  };
>
>  #endif /* BCM2835_MFD_PM_H */
> --
> 2.25.1
>
