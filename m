Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2AA3A4331
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 15:46:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230349AbhFKNsn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 09:48:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbhFKNsm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 09:48:42 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0CBC061574
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:46:33 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id x196so5848497oif.10
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VJnmeYwyR6tE7aUy4wN04W/vNCh54Lt3xGpKX7rWwuY=;
        b=D313K+0y9G9UQKoTH2ndSvmOs4y/ur7KQJ0Jid767UngsR1O+RKTCfbG2zU75N+Y+I
         PJpJ4TNt3CoMILyByf04vlki1aVb75I8jdt6mM7VQIKkIt3C97uZ4RNurkAsqfcYlOPC
         6s6zZDXO0JkzhFxNeWPYgOkHHBjeE5+XbwhwoNYOFoYbckwk0ZKE2GxvKKVvYX1XmV5s
         51P45Zzi5JyF0Nao7S7H7saGVYqZEDKQF9xEhrGXPmCSAwZ8tucTtVxt/PTrSpngmnig
         9z3cuHY76Z/Jnl15Q2R42uSN6VVQ+vIzuLCb+oYAnAQuWV/l8F4PEWAuaaLr+RVSuL3e
         XDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VJnmeYwyR6tE7aUy4wN04W/vNCh54Lt3xGpKX7rWwuY=;
        b=TjaIdQmBLQBiYKgSaTkYEbMJzVO6eZnQ+OgLxiDldP4SFMOAxtIoi9oZauWjsJcFji
         IBcOrrdYrjL9iRXBhQYutjPDaQ5t52jUGSr2aDY27dASRryt20WRsFX9qJ5cqVoeflv4
         FT698AKJsmV0HTEX/4WBfjR2QTHFye/85q5zP4z7cfxmgtz2KtyKUC60LaQrmZlRV2Ob
         nf5BGrViTQ9Gn5D/YWfKUhjlTk+lyHHltu+K8BonJTWYa/Uj0tvP1+Q5petqfBjfcI/d
         /S5X3wJgd0QHFipsk8AatyIk91zQms0guPVVjy1gZCR0yQWF1h7ljAiHnkAf+nIDg99N
         bExg==
X-Gm-Message-State: AOAM532LiXCxynydLhL19AUWDlaZVjT1UOxJGPIJdQvYObWEiszNb+Eq
        Iexqd8ow4dlXbmYfWawO7tIqQ+LgLjYbbxg1VaA=
X-Google-Smtp-Source: ABdhPJxHZYbiN9fO9i4E1JP9MHzbX0JoygI33jAIeCztZo77z0TiWmXET3PzHKz0Vf1147rEwFdOtXiCren3Bakb8WQ=
X-Received: by 2002:a05:6808:1304:: with SMTP id y4mr14040053oiv.20.1623419193150;
 Fri, 11 Jun 2021 06:46:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-2-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-2-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:45:16 +0800
Message-ID: <CAA+hA=SNncTgPRC8v_UQjs63qLrFW49AGjzeAnQ4sRFb4Jf7xQ@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: gpio: gpio-vf610: Add imx8ulp
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

On Mon, Jun 7, 2021 at 4:31 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> Add the compatible string for i.MX8ULP.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  Documentation/devicetree/bindings/gpio/gpio-vf610.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> index 19738a457a58..e1359391d3a4 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> @@ -24,6 +24,9 @@ properties:
>        - items:
>            - const: fsl,imx7ulp-gpio
>            - const: fsl,vf610-gpio
> +      - items:
> +          - const: fsl,imx8ulp-gpio
> +          - const: fsl,imx7ulp-gpio
>
>    reg:
>      description: The first reg tuple represents the PORT module, the second tuple
> --
> 2.26.2
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
