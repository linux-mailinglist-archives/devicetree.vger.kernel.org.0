Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC9304A2B3C
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 03:10:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345368AbiA2CKo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jan 2022 21:10:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344909AbiA2CKo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jan 2022 21:10:44 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC77C061748
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 18:10:44 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id j2so10527814ybu.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 18:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R5f2OnK3Rd5Vn0tCTo//kYep8PKjilqOgT9B0rx9Skk=;
        b=RcZP0mo9kQLiE+1boTRVPlI+uR15AOqJ0zvNtNm1+WteMErlFvqLS3Dc/UdHLboU9M
         1LEtspXyTBNQX8egXxjAs9FIFrl7CtqYAQ0YPkvlIPof0VvSAClFXiu/hxjeAKzaceAd
         9CT/4Qhex/xThPEnrTtYKHW5qeAWpyBTjA+ndei9I6TMF2+kpL3JF1aUAnVOMOklA4jz
         Afud+ZzhRUYYrcxjgAgWyZHSiF3zRWEiErCBtEtYsJVVXpjRssnM9Xh1gDN2dRPh4IdX
         w8cfTRrR3dMatGer75DzInLCj/QQe0uzTrMyciaj5OJCZRYskOjYZFn3dA9Iax1FmfIY
         LGug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R5f2OnK3Rd5Vn0tCTo//kYep8PKjilqOgT9B0rx9Skk=;
        b=apkYm4+SzhkMDSfonYGDQzr1SU0CL19HZZphwPFM0XqFopLtIuyC6B1Q8uMUuGc/p4
         9h4JWQwfOlzsb1gsYvhU6v/fLmvC8NKmY64viVLST/4kgplrGAs2FcN0s0I82+shEoDZ
         q0Xs1MUrmmW+YOg9D17UZL0DTpjzZqoHASqJlNoTcK8sQgcGHPZAAseuQR/BdBS0YHUO
         M3JlujoFTLUb90Ir/3YivJ/zOQPVbIbVkUGopt+w+cy3emMaeRdjFtPtaCiGTcSubJmV
         c2WdHXkSvZrhHtIfoin3BYSZ6PlkokRVt4pOm6AxhfKpfN8oDeuXyO8gT6Bzg6oXdUbZ
         1BWw==
X-Gm-Message-State: AOAM531/ou4VF9lI5ysr1chFWdRMcy8whdm5XiWPfipViIeN+4W1fQoX
        DsWEvI+ySebV+smSI/204rABPchxM0hiVAeN5TYuGw==
X-Google-Smtp-Source: ABdhPJzBvJVAHTh7/0zc1+OGqU8AtCF5OhT9dVlcGmxGiDjOvbNcgZ2YHnWBsIQrGWW7fEK0LFQTUbImkyOVoGoH1Hg=
X-Received: by 2002:a25:2451:: with SMTP id k78mr15798461ybk.511.1643422243579;
 Fri, 28 Jan 2022 18:10:43 -0800 (PST)
MIME-Version: 1.0
References: <20220127123028.3992288-1-clabbe@baylibre.com>
In-Reply-To: <20220127123028.3992288-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 29 Jan 2022 03:10:32 +0100
Message-ID: <CACRpkdZjKBboJsDWN1_UDyZXh9bT_+mmZ0swX0XDNARPSPJ3ag@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: convert faraday,ftgpio01 to yaml
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     brgl@bgdev.pl, conleylee@foxmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 27, 2022 at 1:30 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Converts gpio/faraday,ftgpio010.txt to yaml.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
(...)
> This commit will cause arch/arm/boot/dts/moxart-uc7112lx.dts to fail DT validation,
> but the GPIO driver need an interrupt so the current moxart DT is incomplete and the error is appropriate.

The Linux GPIO driver may need it but that does not mean it is necessary
for all other operating systems. (Could be a Linux bug.)

But I think it should be there because the hardware does support it
and I'm pretty sure that IRQ is available on the Moxart as well,
so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
