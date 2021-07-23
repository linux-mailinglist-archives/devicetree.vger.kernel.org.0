Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 346343D3DC4
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 18:44:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbhGWQD2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 12:03:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbhGWQD2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 12:03:28 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97874C061757
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:44:00 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id t68so1933350qkf.8
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oc8CK0AsdZszsESWwjfIrhAjbLc742tCwBqHvOldIcY=;
        b=IRarJsCDT60AoiiLdZaWY9Pa53CuNALBm89bNCTf1K9FWkoWh6vFzafpzU6XniduLG
         K5+jk+ECPltATP2sQMwwxwAOgRWv97d+wXenryGCyyQX5533M5MdwD4sjcj1M+MZf+1b
         ba5fA9gkLqmdHNJtf7/hPBseKbHcrQfDb8nAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oc8CK0AsdZszsESWwjfIrhAjbLc742tCwBqHvOldIcY=;
        b=tIYYCHUbG5Dc+gD2zk/Fufc/UB7obQ7GvV/asLLwcp30I5FB4H211LvRwtv4gh2GYF
         /3x+JHGDXCNxv1x2a/f5g4kTpWPLhzkDd9eRfrpLXQdbR8aBZCcaet9AUbNJoxMfNCXg
         scZXMFlIbqwGY2ryhJvaGjAwBD7izpTwmvnk6ChVZxyTgaDgS3fedZkAy34abe8CX00F
         Vj+1bgVFz1eS7FWWU2hhg9kufUzcl5FmaGSLdQU8r29LsHsvABDsrVMZafJv11COxB5S
         wL1GOGmDutm5KZ7zKcz4KXrsfj7uYFTHAcP2x69JV2V6c0lCywTKZQu4US8ruZYPoUBo
         UX4g==
X-Gm-Message-State: AOAM530IIZVMkJXpH4Xu08pCOOyIUsdlQfFEn7zEN81sccJZNapjgNEk
        TPANy7dPs5kxwC89LTQOVskGIeXhO2rgsw==
X-Google-Smtp-Source: ABdhPJxYyA3eMawblnpMUhQ84poyPuaMyL9fkiG8Xj+5DlUEtyOc/pTkXm+ZWhIORTv7ROE3HL9i3g==
X-Received: by 2002:a05:620a:172a:: with SMTP id az42mr5411181qkb.3.1627058639536;
        Fri, 23 Jul 2021 09:43:59 -0700 (PDT)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id x23sm414253qkf.36.2021.07.23.09.43.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 09:43:58 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id l145so3242036ybf.7
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:43:58 -0700 (PDT)
X-Received: by 2002:a05:6902:521:: with SMTP id y1mr7959636ybs.32.1627058638294;
 Fri, 23 Jul 2021 09:43:58 -0700 (PDT)
MIME-Version: 1.0
References: <1626931716-10591-1-git-send-email-rnayak@codeaurora.org> <1626931716-10591-3-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1626931716-10591-3-git-send-email-rnayak@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 23 Jul 2021 09:43:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VHP9GbyueqrM1pJ-ZjgndYWj9Q6883pDHnZmK2mMYN2Q@mail.gmail.com>
Message-ID: <CAD=FV=VHP9GbyueqrM1pJ-ZjgndYWj9Q6883pDHnZmK2mMYN2Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] nvmem: qfprom: sc7280: Handle the additional
 power-domains vote
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        "Ravi Kumar Bokka (Temp)" <rbokka@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 21, 2021 at 10:29 PM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> On sc7280, to reliably blow fuses, we need an additional vote
> on max performance state of 'MX' power-domain.
> Add support for power-domain performance state voting in the
> driver.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  drivers/nvmem/qfprom.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/drivers/nvmem/qfprom.c b/drivers/nvmem/qfprom.c
> index 81fbad5..4d0a576 100644
> --- a/drivers/nvmem/qfprom.c
> +++ b/drivers/nvmem/qfprom.c
> @@ -12,6 +12,8 @@
>  #include <linux/mod_devicetable.h>
>  #include <linux/nvmem-provider.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/property.h>
>  #include <linux/regulator/consumer.h>
>
> @@ -149,6 +151,11 @@ static void qfprom_disable_fuse_blowing(const struct qfprom_priv *priv,
>         if (ret)
>                 dev_warn(priv->dev, "Failed to set 0 voltage (ignoring)\n");
>
> +       if (priv->dev->pm_domain) {
> +               dev_pm_genpd_set_performance_state(priv->dev, 0);
> +               pm_runtime_put(priv->dev);
> +       }
> +
>         ret = regulator_disable(priv->vcc);
>         if (ret)
>                 dev_warn(priv->dev, "Failed to disable regulator (ignoring)\n");
> @@ -212,6 +219,16 @@ static int qfprom_enable_fuse_blowing(const struct qfprom_priv *priv,
>                 goto err_clk_rate_set;
>         }
>
> +       if (priv->dev->pm_domain) {
> +               ret = pm_runtime_get_sync(priv->dev);
> +               if (ret < 0) {
> +                       pm_runtime_put_noidle(priv->dev);
> +                       dev_err(priv->dev, "Failed to enable power-domain\n");
> +                       goto err_reg_enable;
> +               }
> +               dev_pm_genpd_set_performance_state(priv->dev, INT_MAX);
> +       }
> +
>         old->timer_val = readl(priv->qfpconf + QFPROM_BLOW_TIMER_OFFSET);
>         old->accel_val = readl(priv->qfpconf + QFPROM_ACCEL_OFFSET);
>         writel(priv->soc_data->qfprom_blow_timer_value,
> @@ -221,6 +238,8 @@ static int qfprom_enable_fuse_blowing(const struct qfprom_priv *priv,
>
>         return 0;
>
> +err_reg_enable:
> +       regulator_disable(priv->vcc);
>  err_clk_rate_set:
>         clk_set_rate(priv->secclk, old->clk_rate);
>  err_clk_prepared:
> @@ -420,6 +439,9 @@ static int qfprom_probe(struct platform_device *pdev)
>                         econfig.reg_write = qfprom_reg_write;
>         }
>
> +       if (dev->pm_domain)
> +               pm_runtime_enable(dev);
> +

Where is the matching pm_runtime_disable()? Should be one in
.remove(), or use devm_add_action_or_reset() to wrap a call to it.

Also: do you really need to test for dev->pm_domain in your patch?
Seems like it should always be fine to call pm_runtime_enable() and
then always fine to call the get/put. ...and presumably always fine to
even set the performance state?

-Doug
