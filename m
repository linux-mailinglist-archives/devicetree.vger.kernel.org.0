Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BC743E13DC
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 13:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241063AbhHEL1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 07:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241067AbhHEL1D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 07:27:03 -0400
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com [IPv6:2607:f8b0:4864:20::92c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CE97C061798
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 04:26:49 -0700 (PDT)
Received: by mail-ua1-x92c.google.com with SMTP id d6so2030402uav.2
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 04:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KgulD8RlFMO6ksRjFn6mENC7l0vyk3dqEFKNlHRwNko=;
        b=W4NSgE82y1CgVXwx+cI24R0OqyAdhuk27TSSLol3k1Z7ZAaWJMhzUPQ8+rmOW0UNpH
         WcuUNVRF16LbHiUi6Zsc1ZTCPbdZhODpro3ajOCwh0oEO/gfZG6f2VcOzh0NgoqHZWoG
         dgO8zdDysmW4E8AvKADvYbKJYzdQf3Dpo5ljFG5L3n35h+H3uIIFgh7bnyfOTB6LQcnA
         awnQEG/bHlSuBzsbNfIG3896He63/hYwAxoFQD6PJWga3wxmPs0E6srfh3yfOxcGU85T
         TQ2//nZdI/Rhpt56Q02wuGitGblFwOfdamJnwZt8P2UCS4LVOs9E5iV5rAtFvUM0N7Zj
         RnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KgulD8RlFMO6ksRjFn6mENC7l0vyk3dqEFKNlHRwNko=;
        b=tiIeGbF8Cq12HG3xZMDSVwfAhI4mfRJdXWcxxsRtajfTe7pin3GjraTwu6GfVT5P+r
         Wa4ik200FCl6uoMy3415yZDmc8kI5hxwkltR4NFDCsCrfT7sBRUGCnZOIZ+Xs0uguRbY
         2QTAGvkzVmAu/W3g/znOserSBGbDEGD2vrYON4ConkUxo/H81uZLfUOnxJvctMo4ufZl
         a37aDe1MBGxaHcc/WsnZfxrmH0oQRvyBm5x4Y+EKj9P1jK38/NEzfr/owkscinzqizNR
         S6zhL5ouUvMfe0lXkjfY9qL2zJTcKVXeN9vhlAuIxW7qgkhHUjkpPbuhrgrHLfFduM1u
         06Ug==
X-Gm-Message-State: AOAM531JwRhITxcFHdYt8trkBMpjPq09V97wocH7S539UqVGa/acyDvZ
        PA5EVyxtAFjN6ZKc9rK02QpM2vsG0MPC+KTLd84ONw==
X-Google-Smtp-Source: ABdhPJxcSUYstHz1NVIsdC3VoXvNA4U/u9Q9IMVYFBKekSvsqGiA6Slfaz4YKnkdSKruXU39vxVhkR8gB/LHI8HbXPM=
X-Received: by 2002:ab0:6f4b:: with SMTP id r11mr3131110uat.104.1628162808528;
 Thu, 05 Aug 2021 04:26:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Thu, 5 Aug 2021 14:26:36 +0300
Message-ID: <CAPLW+4m5LWr5hQi9P8ywZbhNyj8Fwdkk4B_O_YgM_DthWSG9BA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address
 range on Exynos7
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Pankaj Dubey <pankaj.dubey@samsung.com>,
        Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Thu, 5 Aug 2021 at 10:22, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> The GIC-400 CPU interfaces address range is defined as 0x2000-0x3FFF (by
> ARM).
>
> Reported-by: Sam Protsenko <semen.protsenko@linaro.org>
> Reported-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  arch/arm64/boot/dts/exynos/exynos7.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
> index 8b06397ba6e7..c73a597ca66e 100644
> --- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
> @@ -137,7 +137,7 @@ gic: interrupt-controller@11001000 {
>                         #address-cells = <0>;
>                         interrupt-controller;
>                         reg =   <0x11001000 0x1000>,
> -                               <0x11002000 0x1000>,
> +                               <0x11002000 0x2000>,
>                                 <0x11004000 0x2000>,
>                                 <0x11006000 0x2000>;
>                 };
> --
> 2.30.2
>
