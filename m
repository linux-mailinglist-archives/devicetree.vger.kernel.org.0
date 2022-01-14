Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CFDD48EE1F
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 17:31:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243366AbiANQbZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 11:31:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234549AbiANQbY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 11:31:24 -0500
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CBF4C06173E
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 08:31:24 -0800 (PST)
Received: by mail-ua1-x935.google.com with SMTP id p37so17814333uae.8
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 08:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W8BJonKrUJJxs6hl3AJin2CViuhqfsYAJVcPiVusuxk=;
        b=FVz/5ga9KDCjl3940tWLE8mGBZK0qp5+0D8dwAkEC/bELGBz8Yt7AeFV0DGofHxTDg
         4K5/jDfYjNIsCv2mlW/1JWH/fSvS8lBrmYjCeKjwlRBAZuB6DJWmmhdrFTy1UpF8Own+
         qg2NSV0Ae5EsWZlix+p4ff82s3peHqyy9hwIXOls2EPJBS9c0AGl98puoo+rLQZ21T0v
         PDjG/qb0dlQl0Hi5jt10l2Aju4Yk8OFyftrbbizO0VClnSXEK/DLW3dzc0pDNlNGGwIi
         eHgWxC1gERsGmzm0a9LJL8dXPJwcvrdIm1yKnTBT52hBzOgJkndtZuptXwY32gLmcXUg
         P3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W8BJonKrUJJxs6hl3AJin2CViuhqfsYAJVcPiVusuxk=;
        b=hijnfSqlm3fcJ7moa3Isa86guTDcguPvhAtFGpWij/PeWvtsIKHZAbi7fXcqBIMPb2
         rBwphauU1orTizO1G9KiAC+jN5SzsSfwbf/zKSTya9VENtvTMzzAjIA0F7zaaMFOYNUR
         8WnCNVBTi53z0l2QOrGT5Vz3SwQDvWGeBzosBPkIW4XWa6CpDbBSd5m6K4WqEvy05hGe
         +wGzxunnUqGpjKfrusTby1rDPbPgpcls0GkgG9MynJxyZPTCkwle/hJoqRu9mogiwYb9
         DOm5tbkqWDqriT3DO/6VMyb3KvalPhcXX4J5s+FfUJ36Y14zrCIaRS9hocfaAJr+Iezl
         RFzQ==
X-Gm-Message-State: AOAM5333fN/RRlKF5dnKcziNc9fOoyykWQO4EBh7Vru0noV+oS0mz+cc
        3ZYRlXSR4Rzj+0h1FQ8rItMJnwKJVJOg7obaHvezbw==
X-Google-Smtp-Source: ABdhPJwGPrbufoRUrKieMfzFagq+YhPGKN+V0bGRe+G+nT/sM+zB7wLo3Kt2aIV5ertn1H9IivMjTJ2tKWNsrWL1Cl4=
X-Received: by 2002:a05:6102:108c:: with SMTP id s12mr4452918vsr.20.1642177883703;
 Fri, 14 Jan 2022 08:31:23 -0800 (PST)
MIME-Version: 1.0
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com> <20220111201722.327219-22-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220111201722.327219-22-krzysztof.kozlowski@canonical.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Fri, 14 Jan 2022 18:31:11 +0200
Message-ID: <CAPLW+4=t0z-aMhCSp4K3L8EqH_BzinsLuRcopbCQr_xzgFCYVA@mail.gmail.com>
Subject: Re: [PATCH v2 28/28] arm64: dts: exynos: use dedicated wake-up
 pinctrl compatible in ExynosAutov9
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

On Tue, 11 Jan 2022 at 22:19, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> Older Samsung Exynos SoC pin controller nodes (Exynos3250, Exynos4,
> Exynos5, Exynos5433) with external wake-up interrupts, expected to have
> one interrupt for multiplexing these wake-up interrupts.  Also they
> expected to have exactly one pin controller capable of external wake-up
> interrupts.
>
> It seems however that newer ARMv8 Exynos SoC like Exynos850 and
> ExynosAutov9 have differences:
> 1. No multiplexed external wake-up interrupt, only direct,
> 2. More than one pin controller capable of external wake-up interrupts.
>
> Use dedicated ExynosAutov9 compatible for its external wake-up interrupts
> controller to indicate the differences.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> index de8fcb82eaec..807d500d6022 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> @@ -208,7 +208,7 @@ pinctrl_alive: pinctrl@10450000 {
>                         reg = <0x10450000 0x1000>;
>
>                         wakeup-interrupt-controller {
> -                               compatible = "samsung,exynos7-wakeup-eint";
> +                               compatible = "samsung,exynosautov9-wakeup-eint";
>                         };
>                 };
>
> --
> 2.32.0
>
