Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 591D95394AE
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 18:04:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245517AbiEaQEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 12:04:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242921AbiEaQEB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 12:04:01 -0400
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6912BB7CC
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 09:04:00 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id e7so6418646vkh.2
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 09:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gOWGZ54Al2hYu3BS8nrZ/b/4ZfhEYozFQpu4yx8zHv8=;
        b=l/Q/jEiIJfXqLNDJeAhVKrBzUIj+Dcl+edW30x1gpxS38VH/lAFYdpy6xgnwzMX82B
         jdUaN+pIq3tI8zxInWwlvOYEl3nSYMsFr2z8kMvXa3OcEsjaZyesSZYLM+CZDt4UZIp9
         D4INyKhQilDmnE5U1JBXRzjUNr7ByZaF7kuQ1QQqio/uHcO4M9Y0CGirdVjxVQY6gS7i
         nlZjMskY38kxUjBNCBR8/HMMqbQ/ATvgSDAsQm6eXexrzU8LDpGclqKiYuSJTLhLdv8p
         vyvnXmTzRwtG0c684NrzqYj4qS0U+VAkThxryLBsuiqfxiOKK2rwfd16gmr2GbBDlv9g
         cBLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gOWGZ54Al2hYu3BS8nrZ/b/4ZfhEYozFQpu4yx8zHv8=;
        b=Est3P3rBc/cAE1nOpul3lqJNxzH15lu1WhR9BD1l12QpuDCvqKDgQs1fidsxQifgde
         VWocqMy9h1fe+81v8mTT+X8MUU8vvNR+ge2jXwQ7XEKtbvXUsMkRj0jCZJVmlRj2yzK1
         4jZkc7uhkZcWRgkYXUNYlHbhXHwV44i3KKAI4hXMhg/6tj+OuZR5mPDLpxZ6VCGZbSMu
         zCkFPlWVf/Gh7dHpYSxMg/KI8KkF+AZbZWPi4CtVDUjOs5bOZyJAy0paBSD3Wwnddn+f
         WxNSF0iOOL2hKgRA4grLroH68pd4dAETXt6oEfoxvgrtQZ3ctxTpbQ3HZRiCTJvCC9T4
         1JSw==
X-Gm-Message-State: AOAM532teNn30PV3oSCLsw2abUwqvaBgtFo6jSf0wX4rtmuvAYiwmbeM
        BaaYbuO4ybV8bJRh0O8TitOTy+DH0TS9hDlGG0w=
X-Google-Smtp-Source: ABdhPJz1KmtMV/3yeWAM20xo0vyxz9unJebLtHSGSm0TnfqfR+jEEyzU75jhFBvyLlEZsmrnRSTKKMCmBj/lnUpMRjg=
X-Received: by 2002:a1f:a8c4:0:b0:357:7163:60ac with SMTP id
 r187-20020a1fa8c4000000b00357716360acmr18493801vke.18.1654013039533; Tue, 31
 May 2022 09:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-12-stefan.wahren@i2se.com>
In-Reply-To: <20220515202032.3046-12-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 17:03:47 +0100
Message-ID: <CALeDE9PSrF-MVxjTFZMVhzjB=DVZuGgtZd-9vDCgt9GVNfOf6w@mail.gmail.com>
Subject: Re: [PATCH 11/11] soc: bcm: bcm2835-power: Bypass power_on/off() calls
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
> Bypass power_on/power_off() when running on BCM2711 as they are not
> needed.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  drivers/soc/bcm/bcm2835-power.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
> index 1e06d91c0739..5bcd047768b6 100644
> --- a/drivers/soc/bcm/bcm2835-power.c
> +++ b/drivers/soc/bcm/bcm2835-power.c
> @@ -198,6 +198,10 @@ static int bcm2835_power_power_off(struct bcm2835_power_domain *pd, u32 pm_reg)
>  {
>         struct bcm2835_power *power = pd->power;
>
> +       /* We don't run this on BCM2711 */
> +       if (power->rpivid_asb)
> +               return 0;
> +
>         /* Enable functional isolation */
>         PM_WRITE(pm_reg, PM_READ(pm_reg) & ~PM_ISFUNC);
>
> @@ -219,6 +223,10 @@ static int bcm2835_power_power_on(struct bcm2835_power_domain *pd, u32 pm_reg)
>         int inrush;
>         bool powok;
>
> +       /* We don't run this on BCM2711 */
> +       if (power->rpivid_asb)
> +               return 0;
> +
>         /* If it was already powered on by the fw, leave it that way. */
>         if (PM_READ(pm_reg) & PM_POWUP)
>                 return 0;
> --
> 2.25.1
>
