Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5288B29EB4A
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 13:09:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725949AbgJ2MJH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 08:09:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbgJ2MJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 08:09:07 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1757BC0613D3
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 05:09:07 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id r1so1337946vsi.12
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 05:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XOPDCJxGnjWbK/1ZDXPLwtwqPWavp4ha998oEkxsn8Q=;
        b=flwJaH75+OYPqFvGJJOTCOx1TZi8IkdOeBuVeZ6SvXSpLNyp9g4K0i2zUPy8ZpviIZ
         FXyorcgcn82PvQNIjdD8/qBH6bdqD7hVT1Yh1PeaKDstjGkUg4413rA6i5+2/J9Hozsj
         XVZCH+AhVY9J4KolXVf3c9ZHtCXIN8FxYc7c0VrIwzuCJ0Xu8krbL3Bcd8Nk4qGdp/Vu
         yuCc1wHdv6sPHUDSaO0/XKxsZ7AcOyXZUaFxHg8VF2p0pieU+79NaJ9CtD7ybcNsmchJ
         jE7NNTaQcZmyho4l9WKNWBAPtIORLfwANGO0BXp5CZXGHA1Gr8qQImK3EbS2Nku/dNGV
         ZgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XOPDCJxGnjWbK/1ZDXPLwtwqPWavp4ha998oEkxsn8Q=;
        b=OKSmnSo8qualDbA3Du8Ek75N+3DqyTJhhireLutO+mGWBFcVg6yvwCuhBWPZTX63I/
         JRfGJ66/n6Vev4W3vcvHag8qnh+c6BcMeb1t90IFc1Jql+0wwQhcFrW0PDedgwo23QiY
         +PYQe3E+wMZFhxk5QjrubUY7G5V0sivGQBTQy9V/iv5T9hcIJB5voOxcjG1n0ZNaijcX
         lkAK4CWpaVzSdQT4Uajrwutxb0I7fYBoXn/Ny7JBETwysxq/d65M6N9ozsbH7HrLxDSe
         gKF941k4S+4drtCaY5z/f02MAu9NRNBhL4GzAd0mj8wWv/sk+q92ZuKi6lg07y7fY/me
         r+/A==
X-Gm-Message-State: AOAM532V0q+ph/uCRhnCVCfGuOOyLNGrz/GAhlt2h9ZQuzrBzuKZIPDb
        xsP8CgFbOBZRFhsHJLh+Sx0CM2SbENfeW4dQz+7+4g==
X-Google-Smtp-Source: ABdhPJx6Q9DF7vcO6aVmXdxaszAIPS70N4/DVXoQj6nfMycE8SxJR1X9NIaonbsZ7yKYflfVuVmupOxqyzRK8kMeNLY=
X-Received: by 2002:a67:ec9a:: with SMTP id h26mr2466385vsp.34.1603973346162;
 Thu, 29 Oct 2020 05:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <20201014030846.12428-1-wenbin.mei@mediatek.com>
In-Reply-To: <20201014030846.12428-1-wenbin.mei@mediatek.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 29 Oct 2020 13:08:29 +0100
Message-ID: <CAPDyKFo+sLQEWdDGkgDKp56a0Cua9nSGTqMUvdtEzUQx9RQt6Q@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] Add mmc support for MT8192 SoC
To:     Wenbin Mei <wenbin.mei@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Oct 2020 at 05:08, Wenbin Mei <wenbin.mei@mediatek.com> wrote:
>
> Change in v7:
> 1)add "unevaluatedProperties" in mtk-sd.yaml
> 2)add Reviewed-by tag
>
> Change in v6:
> 1)use devm_clk_get function for required clocks
>
> Change in v5:
> 1)remove Reviewed-by tag
> 2)use devm_clk_bulk_get_optional instead of devm_clk_get_optional
>   for bulk clks
>
> Change in v4:
> 1)drop "vmmc" and "vqmmc" desciption in mtk-sd.yaml
> 2)add vmmq/vqmmc supplies and the pinctrls to required properties
> 3)change dbg level and exit this function
> 4)use devm_clk_get_optional instead of devm_clk_get function
> 5)remove else branch for sys_clk_cg
>
> Change in v3:
> 1)change maintainers name in mtk-sd.yaml
> 2)change "compatible" properties to enum type and sort it
> 3)drop these properties: "reg" and "interrupts"
> 4)add "maxItems" constraints on these properties: "vmmc-supply", "vqmmc-supply",
>   "assigned-clocks", "assigned-clock-parents"
> 5)add "minimum" and "maximum" constraints on these properties: "mediatek,hs400-cmd-int-delay",
>   "mediatek,latch-ck", "hs400-ds-delay", "mediatek,hs200-cmd-int-delay"
>
> Change in v2:
> Convert mtk-sd to json-schema
>
> Wenbin Mei (4):
>   dt-bindings: mmc: Convert mtk-sd to json-schema
>   mmc: dt-bindings: add support for MT8192 SoC
>   arm64: dts: mt8192: add mmc device node
>   mmc: mediatek: Add subsys clock control for MT8192 msdc
> ---
> This patch depends on
> [v4,1/3] arm64: dts: Add Mediatek SoC MT8192 and evaluation board dts and Makefile
> [v3,1/9] dt-bindings: ARM: Mediatek: Document bindings for MT8192 BSP
> [v3,6/9] clk: mediatek: Add dt-bindings for MT8192 clocks
> [v3,9/9] clk: mediatek: Add MT8192 clock support
> [v3,1/3] dt-bindings: pinctrl: mt8192: add pinctrl file
> [v3,2/3] dt-bindings: pinctrl: mt8192: add binding document
> [v3,3/3] pinctrl: add pinctrl driver on mt8192
> [v2,1/4] soc: mediatek: pwrap: use BIT() macro
> [v2,2/4] soc: mediatek: pwrap: add arbiter capability
> [v2,3/4] dt-bindings: mediatek: add compatible for MT6873/8192 pwrap
> [v2,4/4] soc: mediatek: pwrap: add pwrap driver for MT6873/8192 SoCs
> [2/8] dt-bindings: mfd: Add compatible for the MediaTek MT6359 PMIC
> [3/8] dt-bindings: regulator: Add document for MT6359 regulator
> [4/8] mfd: Add support for the MediaTek MT6359 PMIC
> [5/8] regulator: mt6359: Add support for MT6359 regulator
> [7/8] regulator: mt6359: Add support for MT6359P regulator
> [8/8] arm64: dts: mt6359: add PMIC MT6359 related nodes
>
> Please also accept this patch together with [1][2][3][4][5]
> to avoid build and dt binding check error.
> [1] https://patchwork.kernel.org/project/linux-mediatek/list/?series=332621
> [2] https://patchwork.kernel.org/project/linux-mediatek/list/?series=342593
> [3] https://patchwork.kernel.org/project/linux-mediatek/list/?series=330017
> [4] https://patchwork.kernel.org/project/linux-mediatek/list/?series=322937
> [5] https://patchwork.kernel.org/project/linux-mediatek/list/?series=323171
> ---
>  .../devicetree/bindings/mmc/mtk-sd.txt        |  75 --------
>  .../devicetree/bindings/mmc/mtk-sd.yaml       | 176 ++++++++++++++++++
>  arch/arm64/boot/dts/mediatek/mt8192-evb.dts   |  89 +++++++++
>  arch/arm64/boot/dts/mediatek/mt8192.dtsi      |  34 ++++
>  drivers/mmc/host/mtk-sd.c                     |  74 ++++++--
>  5 files changed, 355 insertions(+), 93 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/mtk-sd.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/mtk-sd.yaml
>
> --
> 2.18.0
>

Applied for next, except patch 3 as needs to go via arm-soc, thanks!

Kind regards
Uffe
