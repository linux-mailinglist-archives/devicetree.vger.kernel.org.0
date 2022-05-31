Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C39953949E
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 18:00:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235314AbiEaQAc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 12:00:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345596AbiEaQAa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 12:00:30 -0400
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com [IPv6:2607:f8b0:4864:20::92a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16EEE13DC8
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 09:00:29 -0700 (PDT)
Received: by mail-ua1-x92a.google.com with SMTP id x11so4950620uao.2
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 09:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hf9Ha+gcQ7bZvS3pjOtVI85DUJu2GIB8vjXa5oKdyVk=;
        b=Ur+LrFXhU3uNpbGVI/nxiArh9NIgFzhvhpBHM7+67O1LbKS0dhXwfeD1PYuIJEnXO+
         Nb4gzFV7EumE/ZWqhtwr7zq8EDI31kCPTLkdfJmSP/fgvJIV+g5KvzavS+YAutRqPpQ/
         NcYHJGhDq8AwYx7sWIIfWEpMrlpUMtdPPhOQgaBm4nOoPTUH8hyZgvXsw545FC70XINO
         Td9tfLRxq5tJA8oPY8bV88fn4RPl+hFBOZCzK4z9GkbJd5dZ1kk0Sa+oKBzllkgOxjTv
         lPMGx1WZDpCoAZWjQX0/D2fXb3lX4brgFJRuJTz02NkjAYYWd2nF1X0E0xWMPcXVZCFO
         z99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hf9Ha+gcQ7bZvS3pjOtVI85DUJu2GIB8vjXa5oKdyVk=;
        b=dd0NR93/X88CRzxDC9qV0pMIp30YL16FcFxBdED0GOZRLvAyNWDFa+UjV39NSeYB9Y
         ec7WBGq2LtS59McpT0aMyeW2xBCpyTrrhZNsKj8Rah1JRibpNk1l+mQIwcDgfMU1NfWT
         l/temQQp0D8RLDGHFrhlystdDYeDjhA18P0NXntyCBriR1okr19JtLTyyKlVREI19CKy
         FadX/11jwhEQehD8bkExRfrJiJ/+68qkl10feBFdB2rurE2NZcss6UQ3P27DpekviPxe
         5xV6tIJH9PA8UFHFY+QGSfJLAybfEGadJRsTzWGqDf5dCFy3piL4nV9ZdzSNBfJVysXv
         ScVg==
X-Gm-Message-State: AOAM530bFC30UzefNOgwWT/MYLBE6BmBNRsQbM8QrBTw4B2XDGLrLGkw
        fPgz+4A2drMECSN/RQIOTgPYKYObj4U1wTa4q+M=
X-Google-Smtp-Source: ABdhPJz5NdGF0GnUEAwiG0JN8et0DgY+dm0ENUUPPfj9who3sp6/9UvsRmFt+dQZlCZLKtWk0M+EqoXi5CVExN03j+E=
X-Received: by 2002:ab0:4ac1:0:b0:351:ed7d:e65c with SMTP id
 t1-20020ab04ac1000000b00351ed7de65cmr22876289uae.36.1654012826733; Tue, 31
 May 2022 09:00:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-11-stefan.wahren@i2se.com>
In-Reply-To: <20220515202032.3046-11-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 16:58:42 +0100
Message-ID: <CALeDE9Mu65P-+kq+tsEjSN=7dwfgD85bNEa85iq6mCGZ32xdsQ@mail.gmail.com>
Subject: Re: [PATCH 10/11] soc: bcm: bcm2835-power: Add support for BCM2711's
 RPiVid ASB
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

On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> as the old one.
>
> Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
> BCM2711.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

> ---
>  drivers/soc/bcm/bcm2835-power.c | 26 +++++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
> index fa0a13035794..1e06d91c0739 100644
> --- a/drivers/soc/bcm/bcm2835-power.c
> +++ b/drivers/soc/bcm/bcm2835-power.c
> @@ -126,6 +126,8 @@
>
>  #define ASB_AXI_BRDG_ID                        0x20
>
> +#define BCM2835_BRDG_ID                        0x62726467
> +
>  struct bcm2835_power_domain {
>         struct generic_pm_domain base;
>         struct bcm2835_power *power;
> @@ -139,6 +141,8 @@ struct bcm2835_power {
>         void __iomem            *base;
>         /* AXI Async bridge registers. */
>         void __iomem            *asb;
> +       /* RPiVid bridge registers. */
> +       void __iomem            *rpivid_asb;
>
>         struct genpd_onecell_data pd_xlate;
>         struct bcm2835_power_domain domains[BCM2835_POWER_DOMAIN_COUNT];
> @@ -151,9 +155,15 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
>         u64 start;
>         u32 val;
>
> -
> -       if (!reg)
> +       switch (reg) {
> +       case 0:
>                 return 0;
> +       case ASB_V3D_S_CTRL:
> +       case ASB_V3D_M_CTRL:
> +               if (power->rpivid_asb)
> +                       base = power->rpivid_asb;
> +               break;
> +       }
>
>         start = ktime_get_ns();
>
> @@ -622,13 +632,23 @@ static int bcm2835_power_probe(struct platform_device *pdev)
>         power->dev = dev;
>         power->base = pm->base;
>         power->asb = pm->asb;
> +       power->rpivid_asb = pm->rpivid_asb;
>
>         id = readl(power->asb + ASB_AXI_BRDG_ID);
> -       if (id != 0x62726467 /* "BRDG" */) {
> +       if (id != BCM2835_BRDG_ID /* "BRDG" */) {
>                 dev_err(dev, "ASB register ID returned 0x%08x\n", id);
>                 return -ENODEV;
>         }
>
> +       if (power->rpivid_asb) {
> +               id = readl(power->rpivid_asb + ASB_AXI_BRDG_ID);
> +               if (id != BCM2835_BRDG_ID /* "BRDG" */) {
> +                       dev_err(dev, "RPiVid ASB register ID returned 0x%08x\n",
> +                                    id);
> +                       return -ENODEV;
> +               }
> +       }
> +
>         power->pd_xlate.domains = devm_kcalloc(dev,
>                                                ARRAY_SIZE(power_domain_names),
>                                                sizeof(*power->pd_xlate.domains),
> --
> 2.25.1
>
