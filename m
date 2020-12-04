Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7EC2CEFD3
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 15:40:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730343AbgLDOkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 09:40:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725920AbgLDOkB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 09:40:01 -0500
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com [IPv6:2607:f8b0:4864:20::a44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFDB0C08E85E
        for <devicetree@vger.kernel.org>; Fri,  4 Dec 2020 06:38:50 -0800 (PST)
Received: by mail-vk1-xa44.google.com with SMTP id a129so1296485vki.5
        for <devicetree@vger.kernel.org>; Fri, 04 Dec 2020 06:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n+PnrcoVAdtN8GPBxsVpfIuQzUembcvR9XiK1uQx4OM=;
        b=cClF9W26HI1jeodnLahFAEF1AOV+L5iFQiL5QKpY/tZv0WYk7CZow4UPGxXcFknKPX
         wJr3jS/KmrZ9Yel1YiQcJZJ7lxgTCb9Jv4th0tfQlG2tn2AaaOARvtEaYGAinM8kpW12
         WB7Kr0wqHEuXSGo2qn8m/TeB8/+ck89rVsu6GXf3X2ZIyXoPG1gDA5z7p4zIyxzHVjvD
         rGciDKMzC5GA05C169RWfnaL9TEDwTYXmOTgUV/udnEVtZ9cTHdyz3DkvYbB0I3NnYW/
         4wAMVKfsWfguE828RODTsibaGsSZK/l9agfuyC855e6dWP/gTQz10aRDEzxiC+pSAuvj
         Pnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n+PnrcoVAdtN8GPBxsVpfIuQzUembcvR9XiK1uQx4OM=;
        b=Guq+2paXntZw7yOVuTfJQ87aBsKOBRFH/fA76QTUw7WXbcm6y6+t6n5AGdt/mnxa7h
         sA8e+DJvw/yYbzZiHYQ+7/ooaYHuZrRXiHKSj3Lf5e8KE9RdVEdwi7Z431WOSOxBIZPJ
         CSPBPe6uOctCExuWgi+relQe/Y5HshT9jHYOG6aaDl9NpevrMdgy4zTWznPl3U1JOm+g
         NlbP0oexzO4RvrAfSsT6AmU6/DRRFHPJEMyP3ydvEObedZjiaU55aQoEYXw5UtJiR2N9
         AT5kz1qW1o6yaV+mRc/j75hNwT/9k/sLn6N0Ym67LPVdvXBOgnYAbGG5RXbolwLIJtQM
         2Spw==
X-Gm-Message-State: AOAM533JaQw518NGZZeU6TWm8+peMpF46EUXcBnUColdVHnxHkrd2ZDQ
        9MR8wM7/H4nCBBU91VZCoPiSWfeGBlIp2MLg/d8osP2f1pUaZw==
X-Google-Smtp-Source: ABdhPJyikXHr7pn6pcbkVo8ISm8xKwkpzaeqRFQ5SQp7nae2EYK2Zb4KjBUBCUKi3Vp+0e1Z6ybSvyDvSywx7kp6V1o=
X-Received: by 2002:a1f:1357:: with SMTP id 84mr3813030vkt.6.1607092730187;
 Fri, 04 Dec 2020 06:38:50 -0800 (PST)
MIME-Version: 1.0
References: <20201126105900.26658-1-aisheng.dong@nxp.com> <20201126105900.26658-2-aisheng.dong@nxp.com>
In-Reply-To: <20201126105900.26658-2-aisheng.dong@nxp.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 4 Dec 2020 15:38:11 +0100
Message-ID: <CAPDyKFqJb4Pj6hwMM_qGQo_DnF2cE_C0u9yQYdMwV0scnsRPPw@mail.gmail.com>
Subject: Re: [PATCH RESEND v4 01/18] dt-bindings: mmc: imx: fix the wrongly
 dropped imx8qm compatible string
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Haibo Chen <haibo.chen@nxp.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 Nov 2020 at 12:16, Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> The compatible string "fsl,imx8qm-usdhc" was wrongly dropped in patch:
> commit 80fd350b9590 ("dt-bindings: mmc: fsl-imx-esdhc: Fix i.MX 8 compatible matching")
> Add it back.
>
> Cc: Haibo Chen <haibo.chen@nxp.com>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Fixes: 80fd350b9590 ("dt-bindings: mmc: fsl-imx-esdhc: Fix i.MX 8 compatible matching")
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

Applied for next and by amending the commit message according to
Krzysztof's comment, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index e71d13c2d109..802c9df23752 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -39,6 +39,7 @@ properties:
>                - fsl,imx8mn-usdhc
>                - fsl,imx8mp-usdhc
>                - fsl,imx8mq-usdhc
> +              - fsl,imx8qm-usdhc
>                - fsl,imx8qxp-usdhc
>            - const: fsl,imx7d-usdhc
>
> --
> 2.23.0
>
