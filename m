Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5776639CB7
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 21:13:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbiK0UNs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 15:13:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiK0UNr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 15:13:47 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B5C4B7DD
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:13:46 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-381662c78a9so87349807b3.7
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4BsW9fXXbads+WS5bi3bLc7tk6sMWKRmXy9gWw9jX90=;
        b=rqIBNsWYh9TDSn+szrrH7hFK5cywiDuBssu7dqeevJYpiqdca3AFFZBhveqTB3j+Dk
         FwfO6uBJuR8MWy7Jp0pOGlMcVtn8cg8rSrzv36OOVeMAkCr3rl75xH11dNtpjBjtmh40
         /b16DdLr6BhqbHa7dURA7bArGwDHKv5cGlKhp49XcjLZb98Of+W2jRYEJ8i2g9RhVew8
         0l5upPm98Bh7BIAmm4QVPfarXGNtz4tlverV9QN8Go2GZcG0SLK9oaOrrFbDubiJcv1o
         ee8qDqqdOy5R9sQXiZlNh8WKKC+qpvdwcTiypMpTTfT2SOLY1afo39RvYaw3oRkcQ4l6
         Kacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4BsW9fXXbads+WS5bi3bLc7tk6sMWKRmXy9gWw9jX90=;
        b=a40kUYDxQgeMEAwCbtuu7l/uzVbN0OEwuHSzDTjipwYe2zDrQVWoHKUVFfPz9G4lUl
         9v75yfClYHWyMD01lhyccYY4ona9pGC/tQouClVMHT3li0T2al+VnUhv3xHH6v000Ce+
         2Vwba0P7DZZXwpEPX6y4RzcB/O+DUtHGA51V7VBvnwAQqbXQO0Pg0urz4YeUH4pUoBzY
         8Asb5gSYxC/m2cPZkwt1KashTM32e8lvRmhuMPRVN9/IEZG4xNdlNn+9HZ0bD2zcgcfo
         +xdgb6/qGgiEMheGSYsXjgd0qIciLjrKINe26ENxX9DbbjwxCtOK/Xxuzq0R+IP5EBgo
         mb5g==
X-Gm-Message-State: ANoB5plEcFRuy7tIv5k1VehWBvcQg62BEXfNy2cmKb9sUqvSU6CWj6cO
        1fuJiJ5bK2jG0T8cxbywmAvK6t71iIQgAyYtO9GNPA==
X-Google-Smtp-Source: AA0mqf46J1rXJ7aX/aiH//oD2+ojh2fJ969CivbeZNxzdJWyjrl+njLK6ztw38uVdPTvZ9IG2j2EqT7yBe6Q59JeRH4=
X-Received: by 2002:a0d:d711:0:b0:3c3:dc9f:d24f with SMTP id
 z17-20020a0dd711000000b003c3dc9fd24fmr4114185ywd.343.1669580025359; Sun, 27
 Nov 2022 12:13:45 -0800 (PST)
MIME-Version: 1.0
References: <20221125223217.2409659-1-linus.walleij@linaro.org>
 <20221125223217.2409659-2-linus.walleij@linaro.org> <a4ea3bd0-b716-5bda-c6c7-cad06e964fa1@linaro.org>
In-Reply-To: <a4ea3bd0-b716-5bda-c6c7-cad06e964fa1@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 27 Nov 2022 21:13:33 +0100
Message-ID: <CACRpkdZ0rk8pCgmvB9190hmYLBUjQ+-Qe-ecS8aMNcO+=HH8wA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: crypto: Let STM32 define Ux500 CRYP
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-crypto@vger.kernel.org,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        phone-devel@vger.kernel.org, Stefan Hansson <newbyte@disroot.org>,
        Lionel Debieve <lionel.debieve@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 27, 2022 at 1:44 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 25/11/2022 23:32, Linus Walleij wrote:
> > This adds device tree bindings for the Ux500 CRYP block
> > as a compatible in the STM32 CRYP bindings.
> >
> > The Ux500 CRYP binding has been used for ages in the kernel
> > device tree for Ux500 but was never documented, so fill in
> > the gap by making it a sibling of the STM32 CRYP block,
> > which is what it is.
> >
> > The relationship to the existing STM32 CRYP block is pretty
> > obvious when looking at the register map, and I have written
> > patches to reuse the STM32 CRYP driver on the Ux500.
> >
> > The two properties added are DMA channels and power domain.
> > Power domains are a generic SoC feature and the STM32 variant
> > also has DMA channels.
> >
> > Cc: devicetree@vger.kernel.org
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Lionel Debieve <lionel.debieve@foss.st.com>
> > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> > ChangeLog v1->v2:
> > - Drop the second (new) example.
> > ---
> >  .../bindings/crypto/st,stm32-cryp.yaml        | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
> > index ed23bf94a8e0..6759c5bf3e57 100644
> > --- a/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
> > +++ b/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
> > @@ -6,12 +6,18 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> >
> >  title: STMicroelectronics STM32 CRYP bindings
> >
> > +description: The STM32 CRYP block is built on the CRYP block found in
> > +  the STn8820 SoC introduced in 2007, and subsequently used in the U8500
> > +  SoC in 2010.
> > +
> >  maintainers:
> >    - Lionel Debieve <lionel.debieve@foss.st.com>
> >
> >  properties:
> >    compatible:
> >      enum:
> > +      - st,stn8820-cryp
> > +      - stericsson,ux500-cryp
> >        - st,stm32f756-cryp
> >        - st,stm32mp1-cryp
> >
> > @@ -27,6 +33,19 @@ properties:
> >    resets:
> >      maxItems: 1
> >
> > +  dmas:
> > +    items:
> > +      - description: mem2cryp DMA channel
> > +      - description: cryp2mem DMA channel
> > +
> > +  dma-names:
> > +    items:
> > +      - const: mem2cryp
> > +      - const: cryp2mem
>
> Usually these are called rx/tx, but I understand you are documenting
> existing usage from DTS or driver? In such case:

It's in the driver. Dunno how to do it for the future, we could
deprecate these and add rx/tx as preferred in a separate
patch.

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks!

Yours,
Linus Walleij
