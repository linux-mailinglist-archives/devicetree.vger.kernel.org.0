Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43E4C48EE60
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 17:39:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243474AbiANQj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 11:39:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235198AbiANQjZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 11:39:25 -0500
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com [IPv6:2607:f8b0:4864:20::92c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BA8BC061574
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 08:39:25 -0800 (PST)
Received: by mail-ua1-x92c.google.com with SMTP id r15so17935972uao.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 08:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TB9rYYWA3RApYigUmdeDs7Nca9Nz3elgch2NBvZeOg0=;
        b=j5kYZtWic5x9+6IfULEPREXK9iQOEZYgqqSp7rnA+0/szMDEk1papPfzOyMRUM/gsI
         Xllf07dgl7ZXTQPAoEcIN8l+DfX/W8W7DYHHjaxIUAkrgQIRdFdeGV5awXOD7kODdh31
         cnVsTZ8AfcWbnOyXO27A6BOUriLw9nXYpUrf5anxD2NDnvz8PumlTe0iXaiX3CsTTN7v
         923umi1sTD5OaPdkOis+mJ1urd6AYUMuFK5+GhsMUXECPkpPBbYceX28FYuKle+oDpEe
         IzsK3ZzkB3Y9ZmE5yZT1oEOqtJ1u6G3rEYSb7EsdHKSpLnB3/6B1/Ksj7ZzXdvm1IkhL
         uf6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TB9rYYWA3RApYigUmdeDs7Nca9Nz3elgch2NBvZeOg0=;
        b=qpXBCrbzsh4prSzuzpddP87cJpnrgBCn14yhhIPobeqcfwxI4dEPuTUESeJ61oCpQY
         is14NVvNrHhQp4f1BixbDk1sTyVyuW+u7hXnLKDJvIJzAPJ/X9SfRY75BF/nkn8Jj7bu
         mW5yeg6v6cXXxfKWPAACKm2BmkyFsezrBSwkMba36xRENADLboV0LKQDlZCoyRALLmUU
         1GoPCPM+LnxugcYF3PMzAOL/5q/54KwtIR1LtF9bUIEw9sw/fyUuEzDVxtaPtcsh3snl
         lfmhMh84OG6NziZsxfgafrJTXiGQG7jR7I3tCr4UMv/rKNwznj6C/9mjd6Q1QezRFeiV
         6tSQ==
X-Gm-Message-State: AOAM5325LuWIC2wCC5NMtWeAXKg0HpfRE5a5vA7M7WbRoKkX/TmJrPmW
        8stv67aIKfZNGVF7v0SXSkoR0nzUqrV6kPyqY9eB9w==
X-Google-Smtp-Source: ABdhPJxbgJnPkI9Tq2dgW1Q5XbXJ8e/r8vZnzrtBuMqFg0KMsO4wZ60iX5gYpy2VvwwP+v1QEaq/YykPn3ntOjBBxh8=
X-Received: by 2002:a05:6102:94c:: with SMTP id a12mr4531319vsi.86.1642178364582;
 Fri, 14 Jan 2022 08:39:24 -0800 (PST)
MIME-Version: 1.0
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com> <20220111201722.327219-20-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220111201722.327219-20-krzysztof.kozlowski@canonical.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Fri, 14 Jan 2022 18:39:13 +0200
Message-ID: <CAPLW+4k3Pypn6t-hHVtxg216oj=LMtchdRtsJmKBANN639oRgQ@mail.gmail.com>
Subject: Re: [PATCH v2 26/28] pinctrl: samsung: add support for Exynos850 and
 ExynosAutov9 wake-ups
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022 at 22:18, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> It seems that newer ARMv8 Exynos SoC like Exynos850 and
> ExynosAutov9 have differences of their pin controller node capable of
> external wake-up interrupts:
> 1. No multiplexed external wake-up interrupt, only direct,
> 2. More than one pin controller capable of external wake-up interrupts.
>
> Add support for dedicated Exynos850 and ExynosAutov9 compatibles.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/pinctrl/samsung/pinctrl-exynos.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/pinctrl/samsung/pinctrl-exynos.c b/drivers/pinctrl/samsung/pinctrl-exynos.c
> index 0489c899b401..a158d587814e 100644
> --- a/drivers/pinctrl/samsung/pinctrl-exynos.c
> +++ b/drivers/pinctrl/samsung/pinctrl-exynos.c
> @@ -465,6 +465,10 @@ static const struct of_device_id exynos_wkup_irq_ids[] = {
>                         .data = &exynos4210_wkup_irq_chip },
>         { .compatible = "samsung,exynos7-wakeup-eint",
>                         .data = &exynos7_wkup_irq_chip },
> +       { .compatible = "samsung,exynos850-wakeup-eint",
> +                       .data = &exynos7_wkup_irq_chip },
> +       { .compatible = "samsung,exynosautov9-wakeup-eint",
> +                       .data = &exynos7_wkup_irq_chip },
>         { }
>  };
>
> --
> 2.32.0
>
