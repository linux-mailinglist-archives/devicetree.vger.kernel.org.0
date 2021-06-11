Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52EC33A4346
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 15:49:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbhFKNu6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 09:50:58 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:38623 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhFKNu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 09:50:58 -0400
Received: by mail-ot1-f41.google.com with SMTP id j11-20020a9d738b0000b02903ea3c02ded8so3185930otk.5
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6NqzeXU6XRJGwPAHg6AVZUGbDtY4E1AfNISmV8nCEN0=;
        b=DeoT9u9KcL3lzMpfmSOv94WXpJn1w0KrpBboZa6PUbFiwsP4Ehta/wbQDfC3EDWe3w
         DVaMsnZOP+AocB8EqkfjmTwl4N80AwkKZ2g2ij2BLQJT2p2WvJi9HcOUiQ39lkM8gm29
         OQffTsrgaLmuQWwShnqLa3AfFUHgP+Gbne2fE+/PSciurTy85Lx5LYHLs1wG7z3eMIsr
         MUrhdw1LJsf6g2dJtJjlLMYJqzVZaM8tcxKhqd5fmjNqBjra1A/8Hn5JQuTjzx2/36Ou
         yhBI4LV25xPhHdZ3Bez8KWRpK93//6bdnoqUzEW/4Uh5YcZMq+R+umwrqPgQ7DTNLKpg
         DBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6NqzeXU6XRJGwPAHg6AVZUGbDtY4E1AfNISmV8nCEN0=;
        b=FCOobTLsARbaftKKG5y1r1TZgdvbo3/vZnS4Ptt5N0EcHG5GJML3J30nIr4cZcgtJM
         c+yB8GdVwB/q8ezcQkTC9Xi88knmtfE/hqjd+gcoiIZ7SMao1jr3q874SrJWQe2W+zCE
         ox1oQQwcj+M4UBLQ9dJFp6FItR29ScoBqdATJF2nPoc5k4RU8qZ9qEzSBwxKr1sDL8Gu
         hc5pkHnndZaE2j9+QjVOUdp9zfgjkYwg4gzMHB+SXqjI1RbOnLZkQIdc55K54v/6st/g
         IWaCC3FXSUasZE7vLXib+vWRH57Wzg0AkCqzQgtOww84NlG8tA6e4kKBc98qCtOlyT+R
         ab0g==
X-Gm-Message-State: AOAM530iYl2iht0h651oQ8Ct42E9CbD44tf39E42SRAjG/NjsX4OUqDO
        +h1qvcYcrrlZ/WLc1g+EWHIIMH/LoRy2qDh+F1wBQYLkVaWgAA==
X-Google-Smtp-Source: ABdhPJw9VK7KTYt/EN/FdPAuxL9L6DNMYE1kb6BMvt6ahqR0Tk9jKom0fhe7JVgQKmXZzOlEpMPeT6PRlBajiIsqy+c=
X-Received: by 2002:a05:6830:308c:: with SMTP id f12mr3245255ots.52.1623419280151;
 Fri, 11 Jun 2021 06:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-3-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-3-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:46:43 +0800
Message-ID: <CAA+hA=RMapnqU8Dut8RwVi7+0DqqT77mPYoX_DeBwt52-cp9dA@mail.gmail.com>
Subject: Re: [PATCH 02/11] dt-bindings: i2c: imx-lpi2c: Add imx8ulp compatible string
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 4:31 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> Add the compatible for i.MX8ULP.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml b/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
> index 29b9447f3b84..0875753c7d15 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
> @@ -19,7 +19,9 @@ properties:
>            - fsl,imx7ulp-lpi2c
>            - fsl,imx8qm-lpi2c
>        - items:
> -          - const: fsl,imx8qxp-lpi2c
> +          - enum:
> +              - fsl,imx8qxp-lpi2c
> +              - fsl,imx8ulp-lpi2c
>            - const: fsl,imx7ulp-lpi2c
>
>    reg:
> --
> 2.26.2
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
