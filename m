Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16C063DE4E1
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 06:07:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbhHCEHT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 00:07:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbhHCEHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 00:07:18 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEDF1C06175F
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 21:07:06 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 68-20020a9d0f4a0000b02904b1f1d7c5f4so19559681ott.9
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 21:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ed5JmzXEsSlRBxaquaxIRAQrvjn353FcdpZeUSfWte8=;
        b=tB/1PZ5rcHEE5WPoU9EPd9oLNvU2uRKt4/44EYG/2SjWzzSb68eM/j+Kwkz6BUyHvJ
         YWUbheXwe9SQHh5XV2DmS6u54AWU1rNHbMihOUGiLDM/HstbeTATz/WyVp0CnQYybLkJ
         5PhwM5CNfnfs1QBZUTO4xWJuEocw4SU1DYUNIWc+igCk5wSrYWHoLqWQLP2xIw7Y653h
         9Ju/9aIFxq6uNHVhV2w6IR2SZWpIyO8C+tdtTQN//d0sVJcgLH3QxzJzm6p6vFCArWiW
         M8tAAfj3U9vGp74JtM+Tc/lOiyedQpYvMqROhVHlfp1h2U5761sLLag+9+CtX1snkMSI
         4OhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ed5JmzXEsSlRBxaquaxIRAQrvjn353FcdpZeUSfWte8=;
        b=VufyA5ZMg0Oc3R8zUhiEScoyyrbpxJc9o4Gj2RGJA/szhBKSO6oO5I3w7RWPjAcphY
         vy5UBjWzpUToFnFSPjbJd9kWXOsffaWDnPLj/lXLPO052fiauxXltkN+X7D38QX2ZiLF
         THbqPMUYfOYFaK8oyA8bJl3MDkrCF6QNNw6NK4J+fV4UqRbDSUmGZOcTuLoOkkFiHCyS
         Hna0cJE7Hq1Hwk1ic3Ko78NthuGcLQtQwVcC0sb9N8UfcGXp12N4NSucxG4HwPbMrYar
         ch9dSFcGFTHdlYE4B1yAcSG4JDjxthn788XJ+Itw/O921Paj+P4BoZe/RockWrSRWj0r
         VUbw==
X-Gm-Message-State: AOAM533j1QcEZwq16HJiOEfgjjMWSYfFi9RkoBGCbDEGq5LJs5V1t/6c
        XBnCcqE1rV3ngEI75S4MIAKaIHzTChTkPIHh4ms=
X-Google-Smtp-Source: ABdhPJwBcXzRzX9//S0p5eOhIKJEyfN70ej7bQxX6WMt2A6YR+Dd70a9z9AefTws4WZ3NkwTu3+suy3ObyJUy93qRWk=
X-Received: by 2002:a9d:202d:: with SMTP id n42mr360017ota.52.1627963626206;
 Mon, 02 Aug 2021 21:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-6-aisheng.dong@nxp.com> <20210722024948.GA3198597@robh.at.kernel.org>
 <CAA+hA=TwGGwZi2HzZSLSZHYWEi8Pp6AnHeRpfDhD0pUfY_xPSQ@mail.gmail.com> <CAL_Jsq+4247uCgu5pDAEqO9Nn=9deeJBkiOrG3fTwdqPO+6J2w@mail.gmail.com>
In-Reply-To: <CAL_Jsq+4247uCgu5pDAEqO9Nn=9deeJBkiOrG3fTwdqPO+6J2w@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Tue, 3 Aug 2021 12:04:44 +0800
Message-ID: <CAA+hA=RQdpjMCivgBq2fBHD2NFqK5_8pSDgqmxGJohRiGac2wQ@mail.gmail.com>
Subject: Re: [PATCH 5/7] dt-bindings: soc: imx: add missing anatop binding
To:     Rob Herring <robh@kernel.org>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 2, 2021 at 11:02 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Aug 2, 2021 at 5:38 AM Dong Aisheng <dongas86@gmail.com> wrote:
> >
> > Hi Rob,
> >
> > On Thu, Jul 22, 2021 at 10:49 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Jul 15, 2021 at 04:25:34PM +0800, Dong Aisheng wrote:
> > > > Anatop is a system combo module which supports various analog functions
> > > > like PLL, Regulators, LDOs, Sensors and etc.
> > > > This binding doc is generated based on the exist usage in dts
> > > > in order to fix dt schema check failures.
> > > >
> > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > > ---
> > > >  .../bindings/soc/imx/fsl,anatop.yaml          | 68 +++++++++++++++++++
> > > >  1 file changed, 68 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > > > new file mode 100644
> > > > index 000000000000..f379d960f527
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > > > @@ -0,0 +1,68 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/soc/imx/fsl,anatop.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Freescale Anatop binding
> > > > +
> > > > +maintainers:
> > > > +  - Dong Aisheng <aisheng.dong@nxp.com>
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    oneOf:
> > > > +      - items:
> > > > +          - const: fsl,imx6q-anatop
> > > > +          - const: syscon
> > > > +          - const: simple-mfd
> > > > +      - items:
> > > > +          - enum:
> > > > +              - fsl,imx6sl-anatop
> > > > +              - fsl,imx6sll-anatop
> > > > +              - fsl,imx6sx-anatop
> > > > +              - fsl,imx6ul-anatop
> > > > +              - fsl,imx7d-anatop
> > > > +          - const: fsl,imx6q-anatop
> > > > +          - const: syscon
> > > > +          - const: simple-mfd
> > > > +      - items:
> > > > +          - enum:
> > > > +              - fsl,imx8mq-anatop
> > > > +              - fsl,imx8mm-anatop
> > > > +              - fsl,vf610-anatop
> > > > +          - const: syscon
> > > > +      - items:
> > > > +          - enum:
> > > > +              - fsl,imx8mn-anatop
> > > > +              - fsl,imx8mp-anatop
> > > > +          - const: fsl,imx8mm-anatop
> > > > +          - const: syscon
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupts:
> > > > +    items:
> > > > +      - description: Temperature Sensor
> > > > +      - description: PMU interrupt 1
> > > > +      - description: PMU interrupt 2
> > > > +    minItems: 1
> > > > +    maxItems: 3
> > >
> > > Don't need maxItems.
> > >
> >
> > Got it
> >
> > > > +
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +
> > > > +additionalProperties: true
> > >
> > > This should be the case only for common schemas used by other schemas.
> > >
> >
> > Like iomuxc-gpr in patch 6, the problem is that for those nodes with
> > simple-mfd backwards compatibility,
> > there could be possibly some random subnodes since there're generic
> > combo registers.
> > That's why i use additionalProperties true to cover it.
> > Do you think it's ok?
>
> No, because all that should be reviewed rather than random subnodes.
> Otherwise, how do we validate them?

anatop and iomuxc-gpr are not simple mfd devices as they're misc
registers and could contain
various sub misc functions. And those sub functions usually have a
separate dt binding doc which
already covers them and does validation.
The binding here is addressing validation itself. It does not limit
the possible various sub function nodes
which already have a binding doc. Just like a bus node.

If we define them now, it means we may need to keep updating schema when new
user node appear as current dts may not use all possible sub functions.

However, i do agree that defining them all (and may need add more in
the future) helps validation.
But i'm not sure if it's worthy to do it for such cases for a 'bus' node?

Could you help clarify a bit more?

Regards
Aisheng

>
> Rob
