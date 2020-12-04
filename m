Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34F742CEEBA
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 14:20:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727383AbgLDNTi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 08:19:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728159AbgLDNTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 08:19:37 -0500
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B26B7C061A4F
        for <devicetree@vger.kernel.org>; Fri,  4 Dec 2020 05:18:57 -0800 (PST)
Received: by mail-vs1-xe42.google.com with SMTP id b23so3191915vsp.9
        for <devicetree@vger.kernel.org>; Fri, 04 Dec 2020 05:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jBNEUh/XtKi2eD8HVG/5DioPhKz6ioH7lNEIt4K6i5M=;
        b=aKkZitLkekd1Pooc4uxJqdRoZrdBSSK03Ev4OkjKehsx5KXNePG+CHpBTUhyd+IYzc
         DWtP/RMlpDFFlztdBtCHZ/70g+C2K3+CF4DyLh5rubI74X0jrlg1SDJkmNh19LbqDLHL
         3wRYZgKsmMPjezrWjyMarchMH4EzGKO+2dYfBJpiGqWIsjOFh56F6VdFU5c2kN4uMvzd
         xZqiPfvtqPL+hrhK2gzKHtJvrYsfGGpwcYeOyMKUnz8K3gF8PTL3AqYKwkBlsuVfdyva
         kTZa/7w7yJIpQk5+M19rKJ0jsiwkMhqk+8XuLVx5rtPAfJE1H8LI7sndoB8jEZzwZolk
         Omaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jBNEUh/XtKi2eD8HVG/5DioPhKz6ioH7lNEIt4K6i5M=;
        b=fPdtyYW5KIbDfzv6l2kmdscdE/96USBky8dV0uYV3ZkLXWsUrIdjMPJ2Ix+ieb1J1L
         CKoxk6nE1cNh34MG0jTHZFzjUp0IHJdQpfqvGdAC5XGAbCjhy3sF6vZShx48TPvjMZf+
         V7jCf7RqUaNfwVUPon9h5oiQVsV0kJ+THvgCadkYYavtJ3nVFrRAl5DzozXUS+C1ucpf
         2EVmIy6W7dHJT+Ods4UiBGqIHy26R3rjCszHhLloIgLxUZIUkzYFmJ0R3hJtwUMxUECg
         fL1GLY88A149494db3e+r85bH/HRidH4UR/tNZnSXG8gXTuC0N3wEXDkrwZF9bGC5DqA
         OAjQ==
X-Gm-Message-State: AOAM533EYHz42+z4VG2Xy1kCeLnwLxE5tweF9nLEULVYxvwJkYEbbbSQ
        uKsp1go6ZDU7fNvyffnC6kT99TztCPFfIJk1MMY3tQ==
X-Google-Smtp-Source: ABdhPJwflJcYgzBlpRuR7y9qVoINWYG/pPFk/3b4tu5anT1AGwT4XzvkQsH3wpuoouw6UhvB+0k2/CNbdiy+8PMuEqE=
X-Received: by 2002:a05:6102:2127:: with SMTP id f7mr3446383vsg.48.1607087936378;
 Fri, 04 Dec 2020 05:18:56 -0800 (PST)
MIME-Version: 1.0
References: <20201129203116.11987-1-adrien.grassein@gmail.com>
In-Reply-To: <20201129203116.11987-1-adrien.grassein@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 4 Dec 2020 14:18:18 +0100
Message-ID: <CAPDyKFp0U5=s_AJh4-QAn=WCodkYUaFE9BuLjpJB80z23J7JkA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: add an option to disable HS400 for fsl
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 29 Nov 2020 at 21:31, Adrien Grassein <adrien.grassein@gmail.com> wrote:
>
> Add an option to disable the hs400 support in the fsl esdhc
> driver.
>
> Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index e71d13c2d109..070b40ae8c44 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -101,6 +101,10 @@ properties:
>        If not use this property, driver default set the delay target to value 7.
>        Only eMMC HS400 mode need to take care of this property.
>      default: 0
> +  fsl,no-mmc-hs400:
> +    description: |
> +      boolean, if present, indicate to disable mmc-hs400 support.
> +    type: boolean

You need to disable hs400, because the sdhci capability register
wrongly claims it to be supported, right?

May I suggest using the DT property "sdhci-caps-mask" instead?

Kind regards
Uffe
