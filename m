Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4DD73040E9
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 15:52:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388435AbhAZOv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 09:51:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391308AbhAZOvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 09:51:16 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B0D5C061D7F
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 06:50:35 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id f11so19853822ljm.8
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 06:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b6f1LvYnA5FB026vF4qzvowPNXCZxvMKvprMD5ct7zk=;
        b=DNO3emq0sg1yGJui5VGqWLdncnYiEqU0KPFmhDvnstsqjSeS7b8hvHznoqrQHY+XSr
         yZp/SYsBIjadcn9HN+QuFWFQtWsyu8QXadKPwo2wWhh3EtE7QkWGLm269oRP1LAYUu/S
         Pwd/tIzVJlBBKAvh7Wu8OJS9Bu/UTTvDjd8WYtR9e/7gU/WVqkoXlmpAZhXwmrpSM/dK
         f3XvrmFRNm3LpSVViZxKaVGoH0VBTgXmG+3G5HIOdZbbRSeIPWrunBhGoxDepef4MOHU
         T6N8Hy9dW6yzemGneJyghsQpfUlfUVAbUNwJilajVJaish2yyW3GaG9LqAarEdgCmD5C
         cWTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b6f1LvYnA5FB026vF4qzvowPNXCZxvMKvprMD5ct7zk=;
        b=exd881m15VshpOUoOfHdSkW1w9ORugtC3zkM6SP5SRKXlllKbz/i4FAIIIiGGLvMXA
         PRjOBB2AfLg+/zteoV9SyULOvwOgh3kQrWAOz0krR3DFvuVYOqjW7dL4h2ll718g+VUm
         AL62zlfLRtQL4fq4L9PoBj2vJ299kPBGxNvAUFGs3WwAc5BCc0Kc74i3udHWdt78IhNp
         cQ0RCioLHe42+gyPtdFS+X9mGU3RAc81pOqRJZQ+AMnZous2eQu8oVhfYh8Oy+VDAG4w
         FSr3dayU1jHEAmZvzoZrTZxg8X7fylSjsgRqlNYSAmjWgjlmqv9EBpYH7+3j/5YjIFPb
         q+HA==
X-Gm-Message-State: AOAM533C75gMf7zNIrv/GXgFYkkqASoW9KjpDALUIBkm5rmTgdaRZ4Zt
        yvUVNdatWsU9igSng55aEBmU04yla69aZTY8tk2dfA==
X-Google-Smtp-Source: ABdhPJzrFkum4g7iaOZRLr9RsdK0/FQdTk4i3qqWYXYLKw/VBZRQbPjTjiU3XlNLJirttc3OXQuYiQBwIXWegbs4fN4=
X-Received: by 2002:a2e:8746:: with SMTP id q6mr3098828ljj.326.1611672634129;
 Tue, 26 Jan 2021 06:50:34 -0800 (PST)
MIME-Version: 1.0
References: <20210125182153.212998-1-angelogioacchino.delregno@somainline.org> <20210125182153.212998-2-angelogioacchino.delregno@somainline.org>
In-Reply-To: <20210125182153.212998-2-angelogioacchino.delregno@somainline.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jan 2021 15:50:23 +0100
Message-ID: <CACRpkdYeDw68MhBBWnLhd-1PKg9MkzP1FO_cijjvq-2fPBSQ-g@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: pinctrl: Add bindings for Awinic AW9523/AW9523B
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, phone-devel@vger.kernel.org,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 7:21 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@somainline.org> wrote:

> Add bindings for the Awinic AW9523/AW9523B I2C GPIO Expander driver.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
(...)
> +  '#interrupt-cells':
> +    description:
> +      Specifies the PIN numbers and Flags, as defined in defined in
> +      include/dt-bindings/interrupt-controller/irq.h
> +    const: 2

Not really. Expand this to at least say in the description that the interrupt
must be IRQ_TYPE_EDGE_BOTH.

Preferably we should enforce it with the schema but I don't know if
that is possible in any easy way.

> +examples:
> +  # Example configuration to drive pins for a keyboard matrix
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        aw9523: gpio-expander@58 {
> +                compatible = "awinic,aw9523-pinctrl";
> +                reg = <0x58>;
> +                interrupt-parent = <&tlmm>;
> +                interrupts = <50 IRQ_TYPE_EDGE_FALLING>;
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +                gpio-ranges = <&tlmm 0 0 16>;
> +                interrupt-controller;
> +                #interrupt-cells = <2>;
> +                reset-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
> +
> +                keyboard-matrix-col-pins {
> +                        pins = "gpio8", "gpio9", "gpio10", "gpio11",
> +                               "gpio12", "gpio13", "gpio14", "gpio15";
> +                        function = "gpio";
> +                        input-disable;
> +                        output-low;
> +                };
> +
> +                keyboard-matrix-row-pins {
> +                        pins = "gpio0", "gpio1", "gpio2", "gpio3",
> +                               "gpio4", "gpio5", "gpio6", "gpio7";
> +                        function = "gpio";
> +                        bias-pull-up;
> +                        drive-open-drain;
> +                        input-enable;
> +                };
> +        };
> +    };

This is fine, but what about adding an example consumer using
<&aw9523 0 IRQ_TYPE_EDGE_BOTH>?

Yours,
Linus Walleij
