Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 932603F8DA9
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 20:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243293AbhHZSNQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 14:13:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235411AbhHZSNP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 14:13:15 -0400
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 315DFC0613C1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:12:28 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id l12-20020a4a94cc0000b02902618ad2ea55so1229173ooi.4
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=AxuMHEj6fNThx2BafHSJxMXA6L5giJ6rsjtS/v61dCk=;
        b=nlTPsZyafxTMTHVJGQtCR2Wyadxf5wJkwXZsETVKpNjWYNfo3yayF0agsAFi8c4R17
         N5D7w7jVKx/sDKsxvrABMScXcIMCezJ5rxnnYGJkqA/kqXq9fgI/qii5A5AQCBkNEHrQ
         Qd2hntalOnHgrAwnGNwAETf3USMPefWsbT2hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=AxuMHEj6fNThx2BafHSJxMXA6L5giJ6rsjtS/v61dCk=;
        b=lMjSpNa4KFI9VUJbHIuUidSH/tr7Nh3/S+aThpDh3pmlkxmUHoC3QCIu75a0iSXoLm
         JGEtl+3kkhgcmlXG9RksyBjLJfvEuecDtOhCDjf11GF6asCaDMNDLx9Y3x3JZLErKCEi
         O7TKhAovTUBgGlF4Atc00ppOO9JHrJGHDR+6pqb2/u+BnMVm+bQwm9oj+UX8Ew7xrqwQ
         yt+Yhi1qgdqVTqkmRrdGp/+oMgGKpKc38UDkpMXQKj+KxUzKAoOjTmnbMPyE5PNBNtv6
         35okkGqzSykqsO7u5bwaE9BJo+4+t4GoS8O7OEERT2CfGjMxnbH9NgqcSBwWW9tnMTLz
         2X0g==
X-Gm-Message-State: AOAM531XC4pE3CIH3fLK+uetEX/aSR+xOrnWwq8GXcp6D6dchac0Hd99
        1PJk4g602Fq9yPRTognN15TuHVNGkhHBwowrDhtsmA==
X-Google-Smtp-Source: ABdhPJw6hmNBI0LDQvr1Y2brYsZM09cv+lpcrLntgYK0k8jmoAK/ueKoVpRHYGOyz8FSljlStnpzUDJhO3v7OCexqmQ=
X-Received: by 2002:a4a:a841:: with SMTP id p1mr4333374oom.92.1630001547429;
 Thu, 26 Aug 2021 11:12:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 26 Aug 2021 18:12:27 +0000
MIME-Version: 1.0
In-Reply-To: <1629983731-10595-8-git-send-email-rajpat@codeaurora.org>
References: <1629983731-10595-1-git-send-email-rajpat@codeaurora.org> <1629983731-10595-8-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 26 Aug 2021 18:12:27 +0000
Message-ID: <CAE-0n538LE+Ln_4j63heVsuADOma5+oD2z6uSiQGdn7qpEhwgA@mail.gmail.com>
Subject: Re: [PATCH V6 7/7] arm64: dts: sc7280: Add aliases for I2C and SPI
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-08-26 06:15:31)
> Add aliases for i2c and spi for sc7280 soc.
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 32f411f..c659f61 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -28,6 +28,38 @@
>         aliases {
>                 mmc1 = &sdhc_1;
>                 mmc2 = &sdhc_2;
> +               i2c0 = &i2c0;
> +               i2c1 = &i2c1;
> +               i2c2 = &i2c2;
> +               i2c3 = &i2c3;
> +               i2c4 = &i2c4;
> +               i2c5 = &i2c5;
> +               i2c6 = &i2c6;
> +               i2c7 = &i2c7;
> +               i2c8 = &i2c8;
> +               i2c9 = &i2c9;
> +               i2c10 = &i2c10;
> +               i2c11 = &i2c11;
> +               i2c12 = &i2c12;
> +               i2c13 = &i2c13;
> +               i2c14 = &i2c14;
> +               i2c15 = &i2c15;

Please alphabet sort this on alias name. "i" before "m"

> +               spi0 = &spi0;
> +               spi1 = &spi1;
> +               spi2 = &spi2;
> +               spi3 = &spi3;
> +               spi4 = &spi4;
> +               spi5 = &spi5;
> +               spi6 = &spi6;
> +               spi7 = &spi7;
> +               spi8 = &spi8;
> +               spi9 = &spi9;
> +               spi10 = &spi10;
> +               spi11 = &spi11;
> +               spi12 = &spi12;
> +               spi13 = &spi13;
> +               spi14 = &spi14;
> +               spi15 = &spi15;
>         };
>
>         clocks {
> --
