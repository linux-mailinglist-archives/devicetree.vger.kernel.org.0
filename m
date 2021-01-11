Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFBE62F1D91
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 19:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390157AbhAKSIK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 13:08:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390218AbhAKSIJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 13:08:09 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CB06C06179F
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 10:06:53 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id x4so54385vsp.7
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 10:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=86O+NfiUXc9E1I3ImcShm6RmGXOp2UZj2RRSFMKstOU=;
        b=BUrsGAj/l408ZZfTAYfyKylcL/CDWmag/19irlP+GRTlQYzO6DNBaR/JJO4+6Qm+HG
         Acq9bfLfMUKqw1e+/ZhQry8RihBZ0+hBAAh7DezvBcNkng1WWDJiPmDz7hR1BwoNgSi2
         reiWfEufz9rVvZW0r8m/tjRfhpcum6eKxuNdggZKUtZLrgutDF8ZJfocCiiuHx0HV0Xg
         0aOZ/SW2xDMdil3ftc1yuh/G/pqEh9C4R2WvCkHN8eFRr67fk0uBW4jv+n7VqZZwiS9O
         R0g3yFJqj0zvo5E64UkhcYRXWQUcD9VycuyLsFqZJ0op2YhLnWmGN8aozQeDqYVpBLnG
         Po6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=86O+NfiUXc9E1I3ImcShm6RmGXOp2UZj2RRSFMKstOU=;
        b=lHoTZJ5S/gqzz2AF3GRBZfqSz291MxHu1PWIp96jOERgNa810R+9S6Zhc5OUJX8I0p
         hcx17CR4sPBCbdBT+u+fhoxisgCnObbcY7636A5a+4GtLNiZy0hIxfHwkHbc8OR8K0wn
         9pW0WS+2USqIYMQCHaXnddWXtlakKM2U7HWyb7wRyf5Y3igvaRzbo6Xq7kzlaGrDRgFU
         tZ7vAzOZdfkHiYtiUMNMKtQipc7EeFUo7aqdhjwnqIBw2hPx/PKX70yukW5KfcDgT1y8
         OmonpYUA9YsJvDN+QhegNjeNFpxVzRFOcLduDSrQj5iD1X/ZLT0OEAAqLXbKGugnv4YP
         lJyQ==
X-Gm-Message-State: AOAM533o/nFRruB723cNZieRy9gwsXhhHRmzv0wFApY/yNkEGt9t204p
        OeHOlQOEyKh/cxwE0T/eWi2RQ4foTCQPCUvtlXC9xQ==
X-Google-Smtp-Source: ABdhPJzZ6jeoNZ6a4MJfbR+rUxxOeQ2e91zz5pS5bCI2ZvYxxITo0aCrDWqpq01YoKU8QgMrdu22NT7nVfjoXBar71g=
X-Received: by 2002:a67:7f41:: with SMTP id a62mr743659vsd.55.1610388412320;
 Mon, 11 Jan 2021 10:06:52 -0800 (PST)
MIME-Version: 1.0
References: <20201211011934.6171-1-andre.przywara@arm.com> <20201211011934.6171-9-andre.przywara@arm.com>
In-Reply-To: <20201211011934.6171-9-andre.przywara@arm.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 11 Jan 2021 19:06:13 +0100
Message-ID: <CAPDyKFrXdCUTV_WdRXGrqZ9YQAnVkieinmdsEO6=-YifA8abbw@mail.gmail.com>
Subject: Re: [PATCH v2 08/21] dt-bindings: mmc: sunxi: Add Allwinner A100 and
 H616 compatibles
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.xyz>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
        Shuosheng Huang <huangshuosheng@allwinnertech.com>,
        Yangtao Li <tiny.windzz@gmail.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Dec 2020 at 02:20, Andre Przywara <andre.przywara@arm.com> wrote:
>
> From: Yangtao Li <frank@allwinnertech.com>
>
> Add binding for A100's and H616's mmc and emmc controller.
>
> Signed-off-by: Yangtao Li <frank@allwinnertech.com>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied for next to my mmc tree, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml  | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index e82c9a07b6fb..e75b3a8ba816 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -26,6 +26,8 @@ properties:
>        - const: allwinner,sun9i-a80-mmc
>        - const: allwinner,sun50i-a64-emmc
>        - const: allwinner,sun50i-a64-mmc
> +      - const: allwinner,sun50i-a100-emmc
> +      - const: allwinner,sun50i-a100-mmc
>        - items:
>            - const: allwinner,sun8i-a83t-mmc
>            - const: allwinner,sun7i-a20-mmc
> @@ -47,6 +49,12 @@ properties:
>        - items:
>            - const: allwinner,sun50i-h6-mmc
>            - const: allwinner,sun50i-a64-mmc
> +      - items:
> +          - const: allwinner,sun50i-h616-emmc
> +          - const: allwinner,sun50i-a100-emmc
> +      - items:
> +          - const: allwinner,sun50i-h616-mmc
> +          - const: allwinner,sun50i-a100-mmc
>
>    reg:
>      maxItems: 1
> --
> 2.17.5
>
