Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 048923D9457
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 19:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbhG1Rae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 13:30:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:55308 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229537AbhG1Rae (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Jul 2021 13:30:34 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7101A6103B
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 17:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627493432;
        bh=qkxNjkQk4u84I+INFIzCFiGHCK1DkqiseSGHr3OWDvQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=OMGFe2UYMgnZyIvo54mZKzmmhv7uqQ2Uv7r6gt+J7y3JsZXuwVOisfKKQdZOzl9/r
         ON5rITIDQdG14lWNThcEOWiz/ZoCF++dOArAqrSPnpFK13/6Hz9EaNZ6umbtwHwW0T
         1TtT72NFpMmAYav7CU27NjsOQ/ACRZ2Q3fTM78fC6/cdYDFn4ZEIBiabFccWy2qCJp
         ApCmb0I7g5pVIaW/vHqifq8geFfXJ/wBTQAsfo/MyZUysg8bjCTTLyFaN2VSFlqEmC
         4hjYYBoXHYCCA4FHJvFE9CXlYAdORpnnklMAYRJiM5/FCWaQbvObR/1IR68aChkf3H
         5Gaekidpj80rg==
Received: by mail-ej1-f49.google.com with SMTP id nd39so5863711ejc.5
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 10:30:32 -0700 (PDT)
X-Gm-Message-State: AOAM5311z6AE0vE7c7AMFtcvKrBPXWf7WfEElS0IRJQ0Q/jKKhewHEFp
        pRMTSrfXDF2PiO3btYiZjwmG3fgy51RTCtWBOA==
X-Google-Smtp-Source: ABdhPJyJBzllMtFuUqakRt+2RuVgtqSrdi2kzQpBUoiDb19UrT6KYmrXlGakJRTUcMC2V8NRFtRxodsSeFnUZucbEgI=
X-Received: by 2002:a17:906:af7c:: with SMTP id os28mr525218ejb.341.1627493430984;
 Wed, 28 Jul 2021 10:30:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-7-aisheng.dong@nxp.com> <1626357250.406964.968555.nullmailer@robh.at.kernel.org>
 <CAA+hA=TsEfz9Zo3wfsf6ZXnYHtfv5AbGNqVQEMn0q0bh1TOQDQ@mail.gmail.com>
In-Reply-To: <CAA+hA=TsEfz9Zo3wfsf6ZXnYHtfv5AbGNqVQEMn0q0bh1TOQDQ@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 28 Jul 2021 11:30:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLZLK75pj_HQDNY1CtHuKGRx-u36eDOyr8ObkR==GW6gQ@mail.gmail.com>
Message-ID: <CAL_JsqLZLK75pj_HQDNY1CtHuKGRx-u36eDOyr8ObkR==GW6gQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] dt-bindings: soc: imx: add missing iomuxc gpr binding
To:     Dong Aisheng <dongas86@gmail.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        devicetree <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 15, 2021 at 9:30 PM Dong Aisheng <dongas86@gmail.com> wrote:
>
> Hi Rob,
>
> On Thu, Jul 15, 2021 at 9:54 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, 15 Jul 2021 16:25:35 +0800, Dong Aisheng wrote:
> > > The General Purpose Registers IOMUXC_GPR are used to select operating
> > > modes for general features in the SoC, usually not related to the IOMUX
> > > itself.
> > >
> > > This binding doc is generated based on the exist usage in dts
> > > in order to fix dt schema check failures.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > >  .../devicetree/bindings/soc/imx/fsl,gpr.yaml  | 69 +++++++++++++++++++
> > >  1 file changed, 69 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
> > >
> >
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/syscon.example.dt.yaml: iomuxc-gpr@20e0000: compatible: 'oneOf' conditional failed, one must be fixed:
> >         ['fsl,imx6q-iomuxc-gpr', 'syscon'] is too short
> >         'fsl,imx53-iomuxc-gpr' was expected
> >         'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx6sl-iomuxc-gpr', 'fsl,imx6sll-iomuxc-gpr', 'fsl,imx6sx-iomuxc-gpr', 'fsl,imx6ul-iomuxc-gpr', 'fsl,imx7d-iomuxc-gpr']
> >         'fsl,imx7d-iomuxc-gpr' was expected
> >         'fsl,imx8mq-iomuxc-gpr' was expected
> >         'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx8mm-iomuxc-gpr', 'fsl,imx8mn-iomuxc-gpr', 'fsl,imx8mp-iomuxc-gpr']
> >         'fsl,imx6q-iomuxc-gpr' was expected
> >         From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
> > \ndoc reference errors (make refcheckdocs):
> > Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > MAINTAINERS: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
>
> The example in syscon.yaml is invalid and needs change as follows.
> However, should I do it in a separate patch cause they're changes for
> two irrelevant binding
> files or merge into this one ?

Separate patch.

> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml
> b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index f14ae6da0068..11eae4c5848e 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -90,7 +90,7 @@ examples:
>
>    - |
>      gpr: iomuxc-gpr@20e0000 {
> -        compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
> +        compatible = "fsl,imx6q-iomuxc-gpr", "syscon", "mfd";

I assume you mean 'simple-mfd'?

Adding that means this example doesn't really even match the
syscon.yaml, so I'd just drop the example.
