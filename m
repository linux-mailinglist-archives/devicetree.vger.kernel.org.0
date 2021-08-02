Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C64803DD4C4
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 13:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233511AbhHBLiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 07:38:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233483AbhHBLiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 07:38:52 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E7CC06175F
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 04:38:42 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id o20so23700726oiw.12
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 04:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7SAJNLwKuybUhm2YpoBnegjDu+Xs6hzDflfVcI/48tI=;
        b=MJkv6hFQ3yed68KWWLQt4dwfwHJ9dy4dxD20qWYmHvcRnJyFSwR5iktIhuo395GJzK
         X5BveXjNLxzSeqYU5YLt4gItU9DWdfahMM/Hifu0AQYtYYpz7puoHlIbh1bzXj5UZKnN
         CLQB4TaZ6tlkfUTQkbKiBvc6YSgSv20vJsXFb0B9t2qFcPB2QdoaioGPCh0LzSCmz2T5
         l1IWKmHAX4tYM+bKtVC+EBSYGWzlR5QMv8FLe0lw2xmAjXbYlXHrcVoCurlTaBMoJVLl
         scnrHx26MV5Fthrit2RGGcP/uEgwNehiZZh4xc0dLKvJphWvgyMRkc3JXl7hRIM7JGLY
         SBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7SAJNLwKuybUhm2YpoBnegjDu+Xs6hzDflfVcI/48tI=;
        b=uMiOy3HOWPxRsA5FvQmqmwzdON/AkmKTyttXn/Q2xYREPLDFayBdqeIsupOvG9t4T9
         MmDpnYXW6AOmiIriALG+nHYLRrqyrHQbF0mlCOen89yPN9QrVV+1xol6OOTksmdN8ShX
         QhaYK4Cj9L05B09SKqh5yhZHb9BjUBcnZ/MOQ3M1M02uT92Adm4AhVz7fHp0aJje7HOW
         hGSW42eiqH/g2lmqO/1r+EABVhxEH/9auRNk5FVfacAuBOh2A5dhJ8H3twkPIB0I+d/i
         zBPAzdw6uGsuY6iKi9toab107BwTtPqKBP6gfFPoT01XNjNjVe62tscZI7HwjaUbPJPm
         8uPQ==
X-Gm-Message-State: AOAM531MQLgETZQJ8LmLP+mYJlWrCby5+98vNZDZ0VSnF/sHWYa2f/LT
        dS1Rk8njEvk9XCzDKGAtyKNIVnY1T1sIe76WONg=
X-Google-Smtp-Source: ABdhPJwQb5ujGVbIprMNxleBtw7yFrfuzpH0j1zz6SrD3pDKasqDJmw8QmjVe2AFrK2V54vyqTmp+E2lJePBbP526Ck=
X-Received: by 2002:aca:f54e:: with SMTP id t75mr9935563oih.142.1627904321915;
 Mon, 02 Aug 2021 04:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-6-aisheng.dong@nxp.com> <20210722024948.GA3198597@robh.at.kernel.org>
In-Reply-To: <20210722024948.GA3198597@robh.at.kernel.org>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Mon, 2 Aug 2021 19:36:20 +0800
Message-ID: <CAA+hA=TwGGwZi2HzZSLSZHYWEi8Pp6AnHeRpfDhD0pUfY_xPSQ@mail.gmail.com>
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

Hi Rob,

On Thu, Jul 22, 2021 at 10:49 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Jul 15, 2021 at 04:25:34PM +0800, Dong Aisheng wrote:
> > Anatop is a system combo module which supports various analog functions
> > like PLL, Regulators, LDOs, Sensors and etc.
> > This binding doc is generated based on the exist usage in dts
> > in order to fix dt schema check failures.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> >  .../bindings/soc/imx/fsl,anatop.yaml          | 68 +++++++++++++++++++
> >  1 file changed, 68 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > new file mode 100644
> > index 000000000000..f379d960f527
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/soc/imx/fsl,anatop.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Freescale Anatop binding
> > +
> > +maintainers:
> > +  - Dong Aisheng <aisheng.dong@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - const: fsl,imx6q-anatop
> > +          - const: syscon
> > +          - const: simple-mfd
> > +      - items:
> > +          - enum:
> > +              - fsl,imx6sl-anatop
> > +              - fsl,imx6sll-anatop
> > +              - fsl,imx6sx-anatop
> > +              - fsl,imx6ul-anatop
> > +              - fsl,imx7d-anatop
> > +          - const: fsl,imx6q-anatop
> > +          - const: syscon
> > +          - const: simple-mfd
> > +      - items:
> > +          - enum:
> > +              - fsl,imx8mq-anatop
> > +              - fsl,imx8mm-anatop
> > +              - fsl,vf610-anatop
> > +          - const: syscon
> > +      - items:
> > +          - enum:
> > +              - fsl,imx8mn-anatop
> > +              - fsl,imx8mp-anatop
> > +          - const: fsl,imx8mm-anatop
> > +          - const: syscon
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    items:
> > +      - description: Temperature Sensor
> > +      - description: PMU interrupt 1
> > +      - description: PMU interrupt 2
> > +    minItems: 1
> > +    maxItems: 3
>
> Don't need maxItems.
>

Got it

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: true
>
> This should be the case only for common schemas used by other schemas.
>

Like iomuxc-gpr in patch 6, the problem is that for those nodes with
simple-mfd backwards compatibility,
there could be possibly some random subnodes since there're generic
combo registers.
That's why i use additionalProperties true to cover it.
Do you think it's ok?

e.g.
anatop: anatop@20c8000 {
        compatible = "fsl,imx6q-anatop", "syscon", "simple-mfd";
        reg = <0x020c8000 0x1000>;
        interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>,
                     <0 54 IRQ_TYPE_LEVEL_HIGH>,
                     <0 127 IRQ_TYPE_LEVEL_HIGH>;

        reg_vdd1p1: regulator-1p1 {
                compatible = "fsl,anatop-regulator";
                regulator-name = "vdd1p1";
                regulator-min-microvolt = <1000000>;
                regulator-max-microvolt = <1200000>;
                ...
        };

        tempmon: tempmon {
                compatible = "fsl,imx6q-tempmon";
                interrupt-parent = <&gpc>;
                interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
                fsl,tempmon = <&anatop>;
                nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
                nvmem-cell-names = "calib", "temp_grade";
                clocks = <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
                #thermal-sensor-cells = <0>;
        };
};

gpr: iomuxc-gpr@20e0000 {
        compatible = "fsl,imx6q-iomuxc-gpr", "syscon", "simple-mfd";
        reg = <0x20e0000 0x38>;

        mux: mux-controller {
                compatible = "mmio-mux";
                #mux-control-cells = <1>;
        };
};

> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    anatop: anatop@20c8000 {
>

Got it

Regards
Aisheng

> Drop unused labels.
>
> > +        compatible = "fsl,imx6q-anatop", "syscon", "simple-mfd";
> > +        reg = <0x020c8000 0x1000>;
> > +        interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <0 54 IRQ_TYPE_LEVEL_HIGH>,
> > +                     <0 127 IRQ_TYPE_LEVEL_HIGH>;
> > +        };
> > --
> > 2.25.1
> >
> >
