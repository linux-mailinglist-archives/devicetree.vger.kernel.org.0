Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1727853943D
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 17:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344883AbiEaPrr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 11:47:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241048AbiEaPrr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 11:47:47 -0400
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4483530557
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 08:47:46 -0700 (PDT)
Received: by mail-vs1-xe2a.google.com with SMTP id b7so14001314vsq.1
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 08:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o5/Zd5Wv5o5XRjOz/x9xV6QOnYGobwAyJ/OjASoXSTc=;
        b=Nvvkf8PgfbcLTTDsxx9FpOqixNVaIEnJya9QbWW+6gI9Tyvx0FU1YS2aWoKyfMWVjk
         2ttltuex+v+4+83fVbEKQZDr0zTqsZHKZXWSZco3kBOgobWevwrqs+kDoBmp/80I6Bef
         SvDaJdDol/UYjBsrplIIfvYXUudf0i6kFKqtlb3KinGLNFqX3uiAlb+S2KWKqJ3BpXqq
         8TF4uhL4iRhzRMzr3KbGEiB6VpOdUkeEnzA5GDeXXBAVd5pmnPvItBH7dbzJH7CoogND
         tzHM3JOyRGK62J2kIUO+11SzUb63v5dUiNzJHQS6n0uJtFwFnWOuy37HRW/dySjE0wOF
         6cXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o5/Zd5Wv5o5XRjOz/x9xV6QOnYGobwAyJ/OjASoXSTc=;
        b=iYoA2W7OWbvZoLdEj0Y+oMsArirK3k5+SAfOdTTjhiIER8+4u5jYHI7szWvm+vYH+r
         v7OzgN8jv8SzI69HaGLVZfG/heWjy92mP9P0X7L5I6VRx2QEXpWztiMbL7TguBlW7H0G
         gxvVDlPyLAXWKlxkO1AFgSdXtV6SCEsapNlbEMcK7CB/4u28m5mLxqssCqXqoJNoT8zB
         0Vwn2cBKa9M11pw0ZNfMjSvskPqderPEPH9uRGeM8U+8MxJVXp3BP2tManSgjcJkf+rT
         27Zld9VCRi2YUMA9bJuc0lTmDfZZe6/94NyWJduEYPVQv2P1kJXJbNp3dDsXYg1F0ywK
         KUTg==
X-Gm-Message-State: AOAM532IAwXQ40uYsb9P+jO9h99gQt3tJohtcQTQbgxm+Xo2i29HITAr
        zRj09dEXe+csb88vCR7ntMW4uuji8C9HVs/d1YM=
X-Google-Smtp-Source: ABdhPJzy6tF0SXhGyTFjs1bosbJKRjgVDUTT5kXVvDuo5sHuMl3rfnsBFQ5mSTclCReWsbao2w9Cj1tPuTWcEsZqcrU=
X-Received: by 2002:a05:6102:3f0a:b0:337:cc82:83cf with SMTP id
 k10-20020a0561023f0a00b00337cc8283cfmr17290760vsv.86.1654012065367; Tue, 31
 May 2022 08:47:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-10-stefan.wahren@i2se.com>
In-Reply-To: <20220515202032.3046-10-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 16:47:33 +0100
Message-ID: <CALeDE9N5+47WqqS_wSSiLuz0Xbh7FDHaEoL8rD3WpNsNhhrPfQ@mail.gmail.com>
Subject: Re: [PATCH 09/11] soc: bcm: bcm2835-power: Resolve ASB register macros
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
> The macros in order to access the ASB registers have a hard coded base
> address. So extending them for other platforms would make them harder
> to read. As a solution resolve these macros.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
A minor query below:
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  drivers/soc/bcm/bcm2835-power.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
> index 77dc9e62b207..fa0a13035794 100644
> --- a/drivers/soc/bcm/bcm2835-power.c
> +++ b/drivers/soc/bcm/bcm2835-power.c
> @@ -126,9 +126,6 @@
>
>  #define ASB_AXI_BRDG_ID                        0x20
>
> -#define ASB_READ(reg) readl(power->asb + (reg))
> -#define ASB_WRITE(reg, val) writel(PM_PASSWORD | (val), power->asb + (reg))
> -
>  struct bcm2835_power_domain {
>         struct generic_pm_domain base;
>         struct bcm2835_power *power;
> @@ -150,7 +147,10 @@ struct bcm2835_power {
>
>  static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
>  {
> +       void __iomem *base = power->asb;

I wonder the perf of defining base here vs the readability of
power->asb; throughout.

>         u64 start;
> +       u32 val;
> +
>
>         if (!reg)
>                 return 0;
> @@ -159,12 +159,13 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
>
>         /* Enable the module's async AXI bridges. */
>         if (enable) {
> -               ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
> +               val = readl(base + reg) & ~ASB_REQ_STOP;
>         } else {
> -               ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
> +               val = readl(base + reg) | ASB_REQ_STOP;
>         }
> +       writel(PM_PASSWORD | val, base + reg);
>
> -       while (ASB_READ(reg) & ASB_ACK) {
> +       while (readl(base + reg) & ASB_ACK) {
>                 cpu_relax();
>                 if (ktime_get_ns() - start >= 1000)
>                         return -ETIMEDOUT;
> @@ -622,7 +623,7 @@ static int bcm2835_power_probe(struct platform_device *pdev)
>         power->base = pm->base;
>         power->asb = pm->asb;
>
> -       id = ASB_READ(ASB_AXI_BRDG_ID);
> +       id = readl(power->asb + ASB_AXI_BRDG_ID);
>         if (id != 0x62726467 /* "BRDG" */) {
>                 dev_err(dev, "ASB register ID returned 0x%08x\n", id);
>                 return -ENODEV;
> --
> 2.25.1
>
