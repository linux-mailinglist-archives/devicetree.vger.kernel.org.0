Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 681DD3A4363
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 15:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230460AbhFKNyw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 09:54:52 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:41585 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbhFKNyv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 09:54:51 -0400
Received: by mail-ot1-f43.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so3181205oth.8
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pw862Ua05R7Wa2c6qSnVDu6Q5fLPZ6Tskdvp7O4WWl4=;
        b=czmLr8DMhsm3VlIin09f4iPkJS3mFfs/yzuFuEwEwrzsD7HS1RZbZPQgq4O6v9c+A7
         HmJ6Scaj1a2qhZt4G/oepqNBbOInWzGwjBPRPM0hTNNW/0SJoisWQyUtjq/mUxCYqSoQ
         hG47XL4B6CvewTeYYj4QY8SYXfs/pZAjLX2nfELDXrY/VXFRj52rKbVsWuk/S2O8CTTF
         NtdCJLmawyCshnBT0+NWojVo9zFljyXLm5SpCZG2d/CkZ33+wwZSKFwMDJu9iIym27z+
         wIld14rHhfuuwPpi6XA4eWRgXsgCYjOrDtely+ud+H+s9UCLSN3N7mfZtCfp3HXjf1OH
         i+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pw862Ua05R7Wa2c6qSnVDu6Q5fLPZ6Tskdvp7O4WWl4=;
        b=WINuS6rdVMoMjkOXTEVyb+m3DiIuPLr69QP7JQabQ1OBpWDGAbKU/puDGM4NeZgg0I
         6iO1mWF4vMlFQwyaBg7Q+DJS6MtnVxAYFDwK7Nh57Ae/EqZdl6uWPaHUIloIZrJnQAZ3
         Nt/2m5rKc1+EauHDLYl70SxXCBpc8Xo540pvHpL/+X4tp784lIlKsb7x8J3a8s8DaMcw
         qdW7bNWTJVspvv7rSGiTuH1+cRrabXTR+JFIxX3SQAs0RndduAgheIb6cettNsypklm4
         /0xNYcIiXa1RPbopHDzDqCvfM9mHvgAMupcSkgfzGpVWC11DBf83n57a8D8r90tzQ8bL
         NdjQ==
X-Gm-Message-State: AOAM530xvQdK6YPYRpUP+esvYTM4ePkr+0DBCPw65ncJeG9Fcl0ESiWk
        /Tp3DVDYx0MvYNtHDrYcyrDFoxy4g9Ob2obZ3pc=
X-Google-Smtp-Source: ABdhPJwS03QXqaoRzGUOUxigm50mgLhI3DjfeaiEfpWtXcUJxJPQKTZPxmovJi4C28ezI6kngOlQdyW9ZkRHPWdBebg=
X-Received: by 2002:a05:6830:43:: with SMTP id d3mr3182357otp.118.1623419498604;
 Fri, 11 Jun 2021 06:51:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-4-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-4-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:50:22 +0800
Message-ID: <CAA+hA=RxcL2WZK2md-zicgPFaBZ=yub=g2BLCFUuQBx58=pbpQ@mail.gmail.com>
Subject: Re: [PATCH 03/11] dt-bindings: mmc: imx-esdhc: Add imx8ulp compatibe string
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

On Mon, Jun 7, 2021 at 4:32 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> For i.MX8ULP, it uses two compatible strings, so update
> the compatible string for i.MX8ULP.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Probably the commit message is better to be improved.
e.g.
uSDHC on i.MX8ULP is derived from i.MX8MM.

Otherwise
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index 369471814496..aeee2be1e36a 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -42,6 +42,10 @@ properties:
>                - fsl,imx8qm-usdhc
>                - fsl,imx8qxp-usdhc
>            - const: fsl,imx7d-usdhc
> +      - items:
> +          - enum:
> +              - fsl,imx8ulp-usdhc
> +          - const: fsl,imx8mm-usdhc
>
>    reg:
>      maxItems: 1
> --
> 2.26.2
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
