Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 188813A437D
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 15:55:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231887AbhFKN5L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 09:57:11 -0400
Received: from mail-oo1-f45.google.com ([209.85.161.45]:35738 "EHLO
        mail-oo1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231881AbhFKN5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 09:57:00 -0400
Received: by mail-oo1-f45.google.com with SMTP id s20-20020a4ae9940000b02902072d5df239so729365ood.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ci1VFIz3RMyQUJxCj2yiYkNZy3gBxfSe2QFpmuk/LcM=;
        b=VRhg+HjlmWQb9Wx1KGOURzFrRnJOmSC7Ksc3h/Qgg8IZrAZXxgkVZ35xeb7lpESj+D
         N/P+7P73sSzVwktVliF6EsdGXxt/XgoJeQTWb5TiYtKxVDcwd87EJ15tEmyuIg0xS29e
         Jlt866r9SXWIUj8lwUV15R7Zj6ih8cusEbNf5R0ymnUi6rxWJ/6qwuO0o+kC05CclH5B
         VVYSSOXzZQik3sbcnNjtLkfOxQzDGnn/gMndhmTo6xVab1NGqLS7tZ+KtN+5W7Krgsez
         gbqJgYOg6QikYkNXRdFpb9dAHn7vGnmO7rGqlJE6nluPHN79aDtrij0aP6fGQpbDHR3m
         IKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ci1VFIz3RMyQUJxCj2yiYkNZy3gBxfSe2QFpmuk/LcM=;
        b=DqGKS2EzYHYyI/AWDa0an/TREGFa7QNOR0CZ5GzGqLBuzJ1KzoaJRZDRhKYUY8mpzk
         GtdCdvvyTbuybZ3CVbLyR/mnY2StjWomETquFrp1LW1fsAy8d374TrqjPECLcRnt/m2J
         tNjZfz1BrKIWzR9VLOZKjg+wSwJlW6aBQIch/kow1PTIHFnxhYe2HA2738qKfq7NoM8G
         3rxPtCjwyA5j1YTp5Z/96XVk/jHxsFMB8tAr+pwVDjFk+V8SLEMUV9MAMjcrvdUg9xga
         MjivmDeovCUue0MnxLeGhhCXPXhSdknu7O/7CQNL2Hb/Vhveu7DjSS7cVDUQyHPRlU7y
         u8yA==
X-Gm-Message-State: AOAM533bPEkSofEVy0G/pMfbozcFmu4MbgIM0E+zzcgjwvvikqszxUtg
        PI85cgTS8bO73oRoiuZzXfr3ZZ045KWmZIuH3Hs=
X-Google-Smtp-Source: ABdhPJye1aJdZj99E97Ja0MIwIDkBo0zqTQKKPCot0B3qZKZEZMfef+qAjwoFintbILs+ezFFdKHdwyOM9JGOekKHYU=
X-Received: by 2002:a4a:330d:: with SMTP id q13mr3173847ooq.11.1623419632152;
 Fri, 11 Jun 2021 06:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-5-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-5-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:52:35 +0800
Message-ID: <CAA+hA=RYeVGKyk9Nst4s1PtLs6=FQrUY8AZD7BWLYQ-p03CGsg@mail.gmail.com>
Subject: Re: [PATCH 04/11] dt-bindings: serial: fsl-lpuart: Add imx8ulp
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

n Mon, Jun 7, 2021 at 4:33 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> For i.MX8ULP, it uses two compatible strings, so Update the
> compatible string for i.MX8ULP.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>


As the previous patch, the commit message is better to be improved.
Otherwise
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  Documentation/devicetree/bindings/serial/fsl-lpuart.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml b/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
> index bd21060d26e0..5d3fde5d4d2b 100644
> --- a/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
> +++ b/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
> @@ -22,7 +22,9 @@ properties:
>            - fsl,imx7ulp-lpuart
>            - fsl,imx8qm-lpuart
>        - items:
> -          - const: fsl,imx8qxp-lpuart
> +          - enum:
> +              - fsl,imx8qxp-lpuart
> +              - fsl,imx8ulp-lpuart
>            - const: fsl,imx7ulp-lpuart
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
