Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1012E7676AA
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 21:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbjG1T6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 15:58:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbjG1T6q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 15:58:46 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A1ED420F
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 12:58:45 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3a44cccbd96so1986601b6e.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 12:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690574324; x=1691179124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HOz/xiFr6Lpg5C5vNZBLjx/aE5FgujEgkR6UJsFwc8Q=;
        b=YfiqFaNGI47iAR+b/z2vg/KlNoAbPZ/Oe0fVrGyDKo907rX0xbVwf884ADFbkGRfoz
         ieNm2vAG9QNnQdT+f2RgR0yFTAes9+aMMsP8GugPB1OvpQkNykKL9N1R7p+/QHITEo+s
         aAmGNPvIKwX+z92nENUF4mJEP1+UNl73R07favImFpFFE220X450QZxpPdi7DyTkUnrb
         8kR2YlU9YGYsebZK7cMrDq5PDDjBOASmotm7qzxkh52htjgmLsCn2+DSaVpDweJAobxl
         sjDKLiIgyvw/cg92cfY35vNEbpsFG6yCjBq5FiHT73MZP7t1eiLKiunL8Iz23GgQYxno
         /9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690574324; x=1691179124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HOz/xiFr6Lpg5C5vNZBLjx/aE5FgujEgkR6UJsFwc8Q=;
        b=LgIZFo0eE0fBQgGcKUsZhoBTl909V/CZVvvkby1z4jJykwKuc6nvSlvujhiKIEewjb
         0P16fMXYiyy5/X5TaLd/l8pmaLmhyPgqAPSO1P1PUKLU7ymMG//acyDUPU7NNN04ASGC
         dS/mEd0nomrqRKez9TDM6ftz2bvx3E9EGExAAZIE/0awKmUAk+pjsAU5Gq++wzwtPOM9
         S2awGT2499yXvkks+pwQcEax5eI50ilRnhzKZbuTCYjdcZ4PRd9S4AbncwlkBUN6jCf1
         qGqJefFbetIylYKXD7HUXBciReTlTxPki8R8ghVgX3mAxqbP8ky28N+dr47V1Nvzesz4
         r83Q==
X-Gm-Message-State: ABy/qLbtwXv+hKASW8nL2oftrcbBkJD3kc1TdSquqSceAj8ocebnJN8p
        bKt/btX56eQoIMF5FpWCyRJKEGuE9OVDqVRgd7BqSg==
X-Google-Smtp-Source: APBJJlHk37Vclt39f+KLJMdrQ7UsaQ0tZEv3cDZnJ6rhjJbQMOQr/oolj1cGCV4RTctUX4rC9c+lTQFhi5rpNeGNoVE=
X-Received: by 2002:a05:6358:5916:b0:139:65ca:5d6 with SMTP id
 g22-20020a056358591600b0013965ca05d6mr4570664rwf.25.1690574324680; Fri, 28
 Jul 2023 12:58:44 -0700 (PDT)
MIME-Version: 1.0
References: <ZMQU7ap9CxfY5eIu@standask-GA-A55M-S2HP>
In-Reply-To: <ZMQU7ap9CxfY5eIu@standask-GA-A55M-S2HP>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Jul 2023 21:58:33 +0200
Message-ID: <CACRpkdbzWt7BRfFNAZnptTkVHvp34baOnY3ZfR+1JMDJvRS2Mg@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: gpio: brcm,kona-gpio: convert to YAML
To:     Stanislav Jakubek <stano.jakubek@gmail.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Shevchenko <andy@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 28, 2023 at 9:20=E2=80=AFPM Stanislav Jakubek
<stano.jakubek@gmail.com> wrote:

> Documentation/devicetree/bindings/gpio/brcm,kona-gpio.example.dtb: gpio@3=
5003000: interrupts: [[0], [106], [4], [0], [115], [4], [0], [114], [4], [0=
], [113], [4], [0], [112], [4], [0], [111], [4]] is too long
>
> Here I'm not even sure what the issue is.

(...)
> +  interrupts:
> +    maxItems: 1

^ There

> +        interrupts =3D <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH
> +                      GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH
> +                      GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH
> +                      GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH
> +                      GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH
> +                      GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;

This is more than one item.

Yours,
Linus Walleij
