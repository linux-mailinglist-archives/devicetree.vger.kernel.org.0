Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8463DDBC2
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 17:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234645AbhHBPCW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 11:02:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:57086 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234651AbhHBPCS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Aug 2021 11:02:18 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C190610FD
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 15:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627916529;
        bh=24hp/ZyqmbccsclVib+lhMMKYYp+1XDaihWTuYhTKKM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=IY4uZ55CHqEwkavuvt1zZk1KPdjNYT3N/L3EEDZefWLNPmdn5sTC0z1ClX418Oyl2
         7sPDmFJ77gtqWfrmo85OnCgKj+ET6tIhssNPTkXyFmqwgUv35rWYYHYmnEa15oAY6S
         HJB3Za2jEYpGCok0jdD5Onynp0Cevyx7eOUGiG+2ROaUdN+1X0cqcSXNPH7lHU7QQK
         7+lz0lpYxipR/oDED2hStShsZRvh6+CskvuKjeF0uiqw/Kv/D/9UTHofZxAUB2gm7J
         HeK/3z0llTOe8Snep1aTqGagKdBKNDRRlMMw6eJzEXSIUhzFCHycfrGqfmHwEKvLgD
         RNKIb4DaAGnqQ==
Received: by mail-ej1-f53.google.com with SMTP id hs10so22723895ejc.0
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 08:02:08 -0700 (PDT)
X-Gm-Message-State: AOAM532r41aZKQ1g2sNMAfAAiZwl4+iHWXOAdo38oqHrI5OeMsXQnHgG
        07eFvFIxefDm56MXgkshJnEqM+eyojqEiGKMzg==
X-Google-Smtp-Source: ABdhPJxMhxjR2Ydlg0Cp7bNg/W7DfWSC26RcG9jU6gkFqbqA7dYX1RnU9CmW07iWXaUHyXEg7kuHR+HpztlWfADNzL8=
X-Received: by 2002:a17:906:3495:: with SMTP id g21mr16061013ejb.359.1627916527493;
 Mon, 02 Aug 2021 08:02:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-6-aisheng.dong@nxp.com> <20210722024948.GA3198597@robh.at.kernel.org>
 <CAA+hA=TwGGwZi2HzZSLSZHYWEi8Pp6AnHeRpfDhD0pUfY_xPSQ@mail.gmail.com>
In-Reply-To: <CAA+hA=TwGGwZi2HzZSLSZHYWEi8Pp6AnHeRpfDhD0pUfY_xPSQ@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 2 Aug 2021 09:01:55 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+4247uCgu5pDAEqO9Nn=9deeJBkiOrG3fTwdqPO+6J2w@mail.gmail.com>
Message-ID: <CAL_Jsq+4247uCgu5pDAEqO9Nn=9deeJBkiOrG3fTwdqPO+6J2w@mail.gmail.com>
Subject: Re: [PATCH 5/7] dt-bindings: soc: imx: add missing anatop binding
To:     Dong Aisheng <dongas86@gmail.com>
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

On Mon, Aug 2, 2021 at 5:38 AM Dong Aisheng <dongas86@gmail.com> wrote:
>
> Hi Rob,
>
> On Thu, Jul 22, 2021 at 10:49 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Jul 15, 2021 at 04:25:34PM +0800, Dong Aisheng wrote:
> > > Anatop is a system combo module which supports various analog functions
> > > like PLL, Regulators, LDOs, Sensors and etc.
> > > This binding doc is generated based on the exist usage in dts
> > > in order to fix dt schema check failures.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > >  .../bindings/soc/imx/fsl,anatop.yaml          | 68 +++++++++++++++++++
> > >  1 file changed, 68 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > > new file mode 100644
> > > index 000000000000..f379d960f527
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > > @@ -0,0 +1,68 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/soc/imx/fsl,anatop.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Freescale Anatop binding
> > > +
> > > +maintainers:
> > > +  - Dong Aisheng <aisheng.dong@nxp.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +          - const: fsl,imx6q-anatop
> > > +          - const: syscon
> > > +          - const: simple-mfd
> > > +      - items:
> > > +          - enum:
> > > +              - fsl,imx6sl-anatop
> > > +              - fsl,imx6sll-anatop
> > > +              - fsl,imx6sx-anatop
> > > +              - fsl,imx6ul-anatop
> > > +              - fsl,imx7d-anatop
> > > +          - const: fsl,imx6q-anatop
> > > +          - const: syscon
> > > +          - const: simple-mfd
> > > +      - items:
> > > +          - enum:
> > > +              - fsl,imx8mq-anatop
> > > +              - fsl,imx8mm-anatop
> > > +              - fsl,vf610-anatop
> > > +          - const: syscon
> > > +      - items:
> > > +          - enum:
> > > +              - fsl,imx8mn-anatop
> > > +              - fsl,imx8mp-anatop
> > > +          - const: fsl,imx8mm-anatop
> > > +          - const: syscon
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    items:
> > > +      - description: Temperature Sensor
> > > +      - description: PMU interrupt 1
> > > +      - description: PMU interrupt 2
> > > +    minItems: 1
> > > +    maxItems: 3
> >
> > Don't need maxItems.
> >
>
> Got it
>
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +
> > > +additionalProperties: true
> >
> > This should be the case only for common schemas used by other schemas.
> >
>
> Like iomuxc-gpr in patch 6, the problem is that for those nodes with
> simple-mfd backwards compatibility,
> there could be possibly some random subnodes since there're generic
> combo registers.
> That's why i use additionalProperties true to cover it.
> Do you think it's ok?

No, because all that should be reviewed rather than random subnodes.
Otherwise, how do we validate them?

Rob
