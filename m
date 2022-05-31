Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C128A53936B
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 16:54:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240984AbiEaOyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 10:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240450AbiEaOyY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 10:54:24 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50A838FFAF
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 07:54:23 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id c62so13803346vsc.10
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 07:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tQxdl0uYa8OhSPAiD8UDXyjhRIKPrGS8E/wJlLbnVaQ=;
        b=SA2mdwS7u1Lbbdguu9Lh/LPaqa0kM6B92uAOaPIaQ55EI+kpJtBOQAdPE6wtXNHjlR
         UWSVot5AcqDwxuwjLe6eNXECdjEY8DWKfxKPjfrTjle080w6EIUj4BI1YJggSuA9Ep+V
         derKnrB6WP5GmwlKRLrwXGnIhCIIDo/Aa3nb3T4dhitHYU6mQwCtZfsppnPA5KqohyX7
         7K8bR2fXj3rFMzkD1myDnasYB8yHaLzYsK6maqpkwWeBJBPXEsx65jIe18rJk1uq1wY+
         FeOcD19ptbBpQgWFvEnLthmXdfagGyNCMRUekxcHymFFKc/BO2MOyk0do3WH7gu8Zp27
         6wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tQxdl0uYa8OhSPAiD8UDXyjhRIKPrGS8E/wJlLbnVaQ=;
        b=yADsfwYp6ZazaltgAeyvvIygH4F6EcKDWG07BRYLb1l5qRkfFX9W5lsqmiBEjer/jW
         tZY7GYv0O01D7BRq07wQSVByu2L5umN+8DRHEc5wY5l9UqkKouzZTMiEcPDVoeGw0Wel
         9Cnc3L918JFHGxJwWd5/QwEyZitwtwjsjpksv/FdXahfrVwldAcgQ4nfjVlfuVJeqoNU
         VDI9g7QoZrU/bWImAx5gXQZpMpUq4qQSA3E4+NDWyaM+rhPiZAFBA7tXNAOdcTejdG5b
         /ev3f3Kq/qRLNUq3nw43ghcZe3VJBqvY6I1Noj2aObDuid/VmYtb3bkr18Z+VeZbe6Av
         12pQ==
X-Gm-Message-State: AOAM531o8UALWdWaFfOkPtaUaEwwt9MrQj4PRV+2xVOtcw6JmYkLzYtb
        +xj2PawlJqEQEKQK6l9ZohZSmh3wG5KFEbQ8Aw0=
X-Google-Smtp-Source: ABdhPJxu45XN1f/QP/9LN0O/KL6GImwrdfSeXn4oZyoQn8qTX4YcOePYgoy7fUjlNERLKtljkpcB7mX9CkHjO4NaxXg=
X-Received: by 2002:a67:cb95:0:b0:337:e29b:c824 with SMTP id
 h21-20020a67cb95000000b00337e29bc824mr13012181vsl.19.1654008862388; Tue, 31
 May 2022 07:54:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-7-stefan.wahren@i2se.com>
In-Reply-To: <20220515202032.3046-7-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 15:54:10 +0100
Message-ID: <CALeDE9MNi0Tb0Lw=jJykNpF8R+We48y2pvPHxQTsCykFFPbhTQ@mail.gmail.com>
Subject: Re: [PATCH 06/11] mfd: bcm2835-pm: Use 'reg-names' to get resources
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
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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

On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> If available in firmware, find resources by their 'reg-names' position
> instead of relying on hardcoded offsets. Care is taken to support old
> firmware nonetheless.

So this patch has changed a little over Nicolas's last one, which was
what I based my patch on [1] but there's no changelog

[1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20220213225646.67761-7-pbrobinson@gmail.com/

> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Minor comment inline, else:
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  drivers/mfd/bcm2835-pm.c | 59 +++++++++++++++++++++++++++-------------
>  1 file changed, 40 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
> index 42fe67f1538e..1656d786993a 100644
> --- a/drivers/mfd/bcm2835-pm.c
> +++ b/drivers/mfd/bcm2835-pm.c
> @@ -25,9 +25,41 @@ static const struct mfd_cell bcm2835_power_devs[] = {
>         { .name = "bcm2835-power" },
>  };
>
> +static int bcm2835_pm_get_pdata(struct platform_device *pdev,
> +                               struct bcm2835_pm *pm)
> +{
> +       /* If no 'reg-names' property is found we can assume we're using old
> +        * firmware.
> +        */
> +       if (!of_find_property(pm->dev->of_node, "reg-names", NULL)) {
> +               dev_warn(pm->dev, "Old devicetree detected, please update your firmware.\n");

If they're using an upstream kernel DT and an old firmware this may be
confusing, maybe tweak the wording a little?

> +
> +               pm->base = devm_platform_ioremap_resource(pdev, 0);
> +               if (IS_ERR(pm->base))
> +                       return PTR_ERR(pm->base);
> +
> +               pm->asb = devm_platform_ioremap_resource(pdev, 1);
> +       } else {
> +               struct resource *res;
> +
> +               pm->base = devm_platform_ioremap_resource_byname(pdev, "pm");
> +               if (IS_ERR(pm->base))
> +                       return PTR_ERR(pm->base);
> +
> +               res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> +                                                   "asb");
> +               if (res)
> +                       pm->asb = devm_ioremap_resource(&pdev->dev, res);
> +       }
> +
> +       if (IS_ERR(pm->asb))
> +               pm->asb = NULL;
> +
> +       return 0;
> +}
> +
>  static int bcm2835_pm_probe(struct platform_device *pdev)
>  {
> -       struct resource *res;
>         struct device *dev = &pdev->dev;
>         struct bcm2835_pm *pm;
>         int ret;
> @@ -39,10 +71,9 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>
>         pm->dev = dev;
>
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       pm->base = devm_ioremap_resource(dev, res);
> -       if (IS_ERR(pm->base))
> -               return PTR_ERR(pm->base);
> +       ret = bcm2835_pm_get_pdata(pdev, pm);
> +       if (ret)
> +               return ret;
>
>         ret = devm_mfd_add_devices(dev, -1,
>                                    bcm2835_pm_devs, ARRAY_SIZE(bcm2835_pm_devs),
> @@ -54,20 +85,10 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
>          * bcm2835-pm binding as the key for whether we can reference
>          * the full PM register range and support power domains.
>          */
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -       if (res) {
> -               pm->asb = devm_ioremap_resource(dev, res);
> -               if (IS_ERR(pm->asb))
> -                       return PTR_ERR(pm->asb);
> -
> -               ret = devm_mfd_add_devices(dev, -1,
> -                                          bcm2835_power_devs,
> -                                          ARRAY_SIZE(bcm2835_power_devs),
> -                                          NULL, 0, NULL);
> -               if (ret)
> -                       return ret;
> -       }
> -
> +       if (pm->asb)
> +               return devm_mfd_add_devices(dev, -1, bcm2835_power_devs,
> +                                           ARRAY_SIZE(bcm2835_power_devs),
> +                                           NULL, 0, NULL);
>         return 0;
>  }
>
> --
> 2.25.1
>
