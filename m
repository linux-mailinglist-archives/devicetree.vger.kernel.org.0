Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 661FF3A43AB
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 16:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231646AbhFKOCZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 10:02:25 -0400
Received: from mail-oo1-f43.google.com ([209.85.161.43]:34351 "EHLO
        mail-oo1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229985AbhFKOCU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 10:02:20 -0400
Received: by mail-oo1-f43.google.com with SMTP id i8-20020a4aa1080000b0290201edd785e7so727353ool.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 07:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XaOZUHVmtwBqm3RfZPVozuu3/NEu4cqerXESep9dzeg=;
        b=t4qtEDxnqMTYPS2ZRWq+X4X9jT8XzpQhN4TktADmB4VRnoPnMjGqji236ZNVw9dJuP
         ExHs+6NP82zHzNIpzXBr6G6j0v1kC+vr2jIZdfhanhQ2ki9u9O2ioaHkRYq06FGF8TYt
         MkFEEkjHKpnu4dlQdDXnJwOHmeYhpcSyXGRM+n8BxgSEiPfKspna9DoQTbsXTFgXBgjp
         xV5xsNLAGGknHbrLTI7bQCHZ1RYbaj9KHLcJN/CVf586pR0rnbvuLixiap/sodfvV+hK
         5VfRE5APRKnt3Fkkfc3K9Dn+0XxfNHU5Uyyy1XGARUDL2DJYMVuRy5mEMbWUGnetCKHG
         7tTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XaOZUHVmtwBqm3RfZPVozuu3/NEu4cqerXESep9dzeg=;
        b=DB+BKNuee8lKR8uzQGqtmwi1LgO86qnj4B5cKiSQd5h7cpa9tAJ00Y54rvYjNLntun
         leA2+Zw2h8X67g3KwFIOZX36ZjXHz46XFj9oz6Bq6eS9X6JcaJSMOeTYWvZBj6/oEmbz
         UXLCwXnlEHdJfpEaRhzOJxLwO+Y2AMhl2pERJQ0DgstAqVmfH4dNsZorTBsbxt6LQEyT
         tBFY1W90zAv/7Fii/IGfEVafP7ZtAM4Dp2VOY/lPwiV+uceDdRo6jnS2jRv0KSq9cQe4
         luSv/UBoC1Oeias6CKXujdhd2Y2GonQ+Kgn+57xQaLQ2fLcohkuglG97nWeMStD9FogC
         ayJg==
X-Gm-Message-State: AOAM531Evq22xXtAH2abLZnunNkgJ7wnlr1gzEOOHNKGA9MWMZTKOTL6
        g1i7z9qDSuIHCFgL8x1YMbL2Sd/KoeewgHFx2TXClJZ2hsVsZQ==
X-Google-Smtp-Source: ABdhPJzj/t5pP6LV1mF3DQV6fGJlvch67kPne9Wwo+a2Yu3wqWpJ3+ZBu1lQW8KWpYHbvpxnaJb4w2YFRZyaXSGw32o=
X-Received: by 2002:a4a:b1c2:: with SMTP id j2mr3177619ooo.78.1623419962012;
 Fri, 11 Jun 2021 06:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-7-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-7-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:58:05 +0800
Message-ID: <CAA+hA=TNbyo-YLRwW=SjGCkLDxU026DJOa12qpVZbTNyBna-KQ@mail.gmail.com>
Subject: Re: [PATCH 06/11] dt-bindings: timer: tpm-timer: Add imx8ulp
 compatible string
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

On Mon, Jun 7, 2021 at 4:34 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> For i.MX8ULP, it use two compatible strings, so update the
> compatible strings for it.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

As previously mentioned, pls improve commit message,
otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> index edd9585f6726..f69773a8e4b9 100644
> --- a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> +++ b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> @@ -19,7 +19,11 @@ description: |
>
>  properties:
>    compatible:
> -    const: fsl,imx7ulp-tpm
> +    oneOf:
> +      - const: fsl,imx7ulp-tpm
> +      - items:
> +          - const: fsl,imx8ulp-tpm
> +          - const: fsl,imx7ulp-tpm
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
