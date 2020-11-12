Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBBCD2B04E3
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 13:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728009AbgKLMTs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 07:19:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727789AbgKLMTr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 07:19:47 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02D3EC0613D1
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 04:19:47 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id u19so1849903lfr.7
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 04:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fNo0JKoiJ1vOX3ZB6BEwcttXVx3kYmziVKFAjG7xIvE=;
        b=RG4CArdxOaLNInraDXtxYeMoHrIrSbm3URzrzTYvW2d303uiTqraoK8L0TP+BJJi5r
         T8Z6D0h1ThQttR6Iov8OKg3fduf+fufh1pSuzGfFupNwXRAGM9SWZ1kpQEwMEzZYeD9R
         7X5+/O6KpZ4IaCmtqR3Aj/VnyuNMiYAaLKtNpSVk64tgPT5jL4jTWSujWpYdH/r0Djdy
         j5wVqzhzW0frsyik2N5xDDvh41ZpWcXBqD6rkecuLvzuOQ5SaSYkX+ebDVsQSmd+dkq/
         uBP0+cfY4nWEZTIBip7vG4lYGXda4R6xJVdxTtdiyLk8PUZOE7IJvduQ6i0EBeGRDQb7
         BvjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fNo0JKoiJ1vOX3ZB6BEwcttXVx3kYmziVKFAjG7xIvE=;
        b=TzjTzoSPzggHidwJUIBBERWsbAUTJFDthevxbr/aY7jDa/Tx0RZnapwCYJYg6ZbOz2
         FoUab0W4hRltRc3QltZFyfOAOhw9CNrAiBU/U0W0bkJDEM2WE01LaJnV7X6apMZb/VRQ
         L+jhW+OfnvWTABdFIy1aVFSQYU6IN9ZAcRU4xD9tqq8WgYMQbceGTEbsm8coBMMUJanj
         ErzZBDDChbA4Xee/juOG9NJIGu5fqNEEPZEoJlskNzhflLa+CAuKacA4T2XZUawplEHN
         /7ebPo0jpxXTdJm6IIR0pR2kWG6AWNUeQ/QW0AETUIK3nKbsLrMUYdrkKRX/gPE3btqR
         XXnA==
X-Gm-Message-State: AOAM532tZQ3wGcDYEPIEQ8S9VzbviBYd9N8irDQQmh5QvgUqbNDSfPPd
        GmB0whSm4QXn2kB7C5wfQJOk4DloQCNHQ09YdeqoR839xwS9aw==
X-Google-Smtp-Source: ABdhPJwhVAqY9IgDLkJKooOcv72RFKtk97zrU2tY0DMdBtlXUE7NyZpIvLivv7gH+mTnWrLiDkVNxEsaUL91IL5j9Y4=
X-Received: by 2002:a19:e08:: with SMTP id 8mr2688842lfo.441.1605183585470;
 Thu, 12 Nov 2020 04:19:45 -0800 (PST)
MIME-Version: 1.0
References: <20201111130754.2283993-1-linus.walleij@linaro.org> <20201111205857.GB3013948@ravnborg.org>
In-Reply-To: <20201111205857.GB3013948@ravnborg.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 12 Nov 2020 13:19:34 +0100
Message-ID: <CACRpkdaUZMNQn7bvmPKP+kbqsW66HrS0RTDkUjrAW15EEf+8EA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: mcde: Convert to YAML schema
To:     Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh+dt@kernel.org>
Cc:     "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Sean Paul <sean@poorly.run>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 11, 2020 at 9:59 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> On Wed, Nov 11, 2020 at 02:07:54PM +0100, Linus Walleij wrote:

> > -- clocks: an array of the MCDE clocks in this strict order:
> > -  MCDECLK (main MCDE clock), LCDCLK (LCD clock), PLLDSI
> > -  (HDMI clock), DSI0ESCLK (DSI0 energy save clock),
>
> > -  DSI1ESCLK (DSI1 energy save clock), DSI2ESCLK (DSI2 energy
> > -  save clock)
>
> I did not find these two clocks in the binding below.

The old bindings are wrong. These clocks belong on the DSI
host adapters, so they are in this part of the binding:

+      clocks:
+        description: phandles to the high speed and low power (energy
save) clocks
+          the high speed clock is not present on the third (dsi2) block, so it
+          should only have the "lp" clock
+        minItems: 1
+        maxItems: 2
+
+      clock-names:
+        oneOf:
+          - items:
+              - const: hs
+              - const: lp
+          - items:
+              - const: lp

All device trees have these in the right place, we just didn't notice that
the bindings were wrong exactly because we weren't using
formal YAML syntax. Now the strictness of this parser makes me
fix my bugs...

> > +  port:
> > +    type: object
> > +    description:
> > +      A DPI port node with endpoint definitions as defined in
> > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 1
> > +
> > +  ranges: true
>
> This is a transition from .txt to DT Schema so OK with this sub-node.
> But otherwise the dsi node should have been linked using graph nodes.
> So OK - just thinking out loud.

Actually when I introduced the MCDE DSI last year at first I used port
and graphs:
https://lore.kernel.org/dri-devel/20190207083647.20615-3-linus.walleij@linaro.org/
Then Rob asked "why?":
https://lore.kernel.org/dri-devel/20190225223124.GA29057@bogus/
And then I removed it, as having a panel directly under a
DSI host is fine.

> > +patternProperties:
> > +  "^dsi@[0-9a-f]+$":
> > +    description: subnodes for the three DSI host adapters
> > +    type: object
> > +    allOf:
> > +      - $ref: dsi-controller.yaml#
(...)
> The dsi nodes needs the #address-cells and #size-cells - at least if a
> panel node is specified.

This is specified in the referenced schema dsi-controller.yaml.

> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - epod-supply
> > +  - vana-supply
> > +
> > +additionalProperties: true
>
> Why are additional properties allowed here?

It's because the SoC peripherals have things like pin control
(currently handled by a quirk in the YAML validator I think) and
resets is something else I will likely add at some point, and then
this would result in warnings unless I lock-step changes in the
schema and DTS files.

I *can* disallow this if you insist.

Yours.
Linus Walleij
