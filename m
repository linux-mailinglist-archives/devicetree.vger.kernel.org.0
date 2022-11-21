Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0AAD6320DA
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 12:39:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbiKULj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 06:39:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230419AbiKULjk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 06:39:40 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20E1F8CF22
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 03:38:36 -0800 (PST)
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E709D3F0A2
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 11:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1669030714;
        bh=k1LFdNn2YthCqXfDo2Al9HOEWWRFBoST7OMZo/loF+4=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=TFnv8/tfGLwGb9JTZ4UQBkwoD9YDU4OI4XTg1q7CGTKGBRrIaTmw/gIFxf8JcekRd
         cwlbnok25Xjw+F31LZLNrR2s5EmHLqSXg+52ZXdbCPifFAEZwF57HOFt0y44NCjdQ5
         11kabYSp4wCYZCii/e4jYbsrciZsvGj4+vDbc7eWBL18PrqT8EHd2OO4/KosxHR0PJ
         u+lPRzm714uDmnakkppxxp8oBWA40VpKCxyvGstRZGxDzmbS5cTqC5uzfUm8plfbPF
         cJ1lxPCnBptU0TGdppTYduLm1YYW+mpD3pJXmnfZgUE4FijBEi11jZTanfq6mPZDEK
         CNut8ShesPevw==
Received: by mail-yb1-f200.google.com with SMTP id b17-20020a25b851000000b006e32b877068so10866896ybm.16
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 03:38:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k1LFdNn2YthCqXfDo2Al9HOEWWRFBoST7OMZo/loF+4=;
        b=sgM5SJxUBxH+dG3o/lV7wgblnNjB34t59y3IXRCsSTNjQSOs3U7tbFFUbGeJsXW+8h
         pNk2OtnnjwGJBXbL/z62vPztn2hIBPSPrcq0h1S8FcxO+c4xd3NVf0ZZMY2DmHoF5SJU
         Qruhipx8lnqqEhXoA9wNJq4gtdxx0coEEtoBCb/lizX4RJYhtf1tPxg69RezvayGM+71
         MunYN7XVHxP1N5y+zAkgKwfvmWyi+4WYcYTaRCIO5xjF+3C3VRoeVVtgwevCe7UHEE8X
         ggC4ggMc3xh7AcgZkWTG7becvGpzeRe258C5XWGSQFBLpFeU8IM0IEv9hHYXJtWNZszr
         RKbA==
X-Gm-Message-State: ANoB5pnTAmUWpazSpGsVbjfJPtf1NpX6M7eZcMz9JVb43e03s4ashU3V
        86tzq5bVlfbWUnDoUlmkVAbJsi5WvVaJkR12RrBz4P9cD8nTuxp7CUEM98MebxNQ3xEc8/zTE8C
        ovSqsaOK1U+OWYIyLFiC7rEE3HP+QumV6pS9XPeim4Ay9Uyt6uhfxsH0=
X-Received: by 2002:a25:e80f:0:b0:6df:927f:38c9 with SMTP id k15-20020a25e80f000000b006df927f38c9mr16158718ybd.92.1669030713975;
        Mon, 21 Nov 2022 03:38:33 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5WqnZPCDXzAGWO5+CsGrfvY5dZ99oEse/5+ZdgxQLRmeJNBWFQZouQa8Zd7b6wtc3vX0BNaCAIpFXWIf5Gs/k=
X-Received: by 2002:a25:e80f:0:b0:6df:927f:38c9 with SMTP id
 k15-20020a25e80f000000b006df927f38c9mr16158698ybd.92.1669030713733; Mon, 21
 Nov 2022 03:38:33 -0800 (PST)
MIME-Version: 1.0
References: <20221118010627.70576-1-hal.feng@starfivetech.com>
 <20221118010627.70576-11-hal.feng@starfivetech.com> <8153973d-e8ad-e47a-3808-bbcdbfd169a5@linaro.org>
In-Reply-To: <8153973d-e8ad-e47a-3808-bbcdbfd169a5@linaro.org>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Mon, 21 Nov 2022 12:38:17 +0100
Message-ID: <CAJM55Z9ouj=jD2Otx3fK4W1wgnPjecUgFuKksw5CmU6SraM_Nw@mail.gmail.com>
Subject: Re: [PATCH v2 10/14] dt-bindings: clock: Add StarFive JH7110
 always-on clock and reset generator
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Hal Feng <hal.feng@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Nov 2022 at 09:49, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 18/11/2022 02:06, Hal Feng wrote:
> > From: Emil Renner Berthing <kernel@esmil.dk>
> >
> > Add bindings for the always-on clock and reset generator (AONCRG) on the
> > JH7110 RISC-V SoC by StarFive Ltd.
> >
> > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> > ---
> >  .../clock/starfive,jh7110-aoncrg.yaml         | 76 +++++++++++++++++++
> >  1 file changed, 76 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh7110-aoncrg.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/starfive,jh7110-aoncrg.yaml b/Documentation/devicetree/bindings/clock/starfive,jh7110-aoncrg.yaml
> > new file mode 100644
> > index 000000000000..afbb205e294f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/starfive,jh7110-aoncrg.yaml
> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/starfive,jh7110-aoncrg.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: StarFive JH7110 Always-On Clock and Reset Generator
> > +
> > +maintainers:
> > +  - Emil Renner Berthing <kernel@esmil.dk>
> > +
> > +properties:
> > +  compatible:
> > +    const: starfive,jh7110-aoncrg
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Main Oscillator
> > +      - description: RTC clock
>
> Real Time Clock clock? :) I don't think the input to clock controller is
> the output of RTC...

The description is bad, but even the documentation calls it "clk_rtc"
even though it's really an optional input from a 32k oscillator.

> Best regards,
> Krzysztof
>
