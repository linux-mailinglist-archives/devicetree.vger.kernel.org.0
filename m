Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30D703CB124
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 05:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233818AbhGPDda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 23:33:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231230AbhGPDd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 23:33:29 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2A04C06175F
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 20:30:34 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id w188so9288023oif.10
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 20:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C5ZpnIISOrgQPHb15dzDQUziq6RdWWF09/GhJ/pLK9Q=;
        b=DlB5Ax6RTB+64Wl4Bhd0D9P3BMd5uvgbmCw59vWih+On0xy/aX/diGhYukLbpqZH9X
         cWEA/2fQHrEoV6FJUeOV5MHG9yS3qeahzmIcvLkrU3dDWxSMCzjUSEdIPs5cCLgaoi/G
         AfiaLjnKLc8YryY1mV8ZlK8Aj304yhJFLtiQoYU9MfCzRRseA+PgECV8I6HeoJQzXAiN
         8ieYiujy+eNNb7XZdS1dwoLrLCXklK8GLe5R4pM2gFK0xFIv7/AOKNhOcE6Se2MHPH/L
         wE1rOm8IO1VZaM7U684WKWr21ZunNbYUoTPBtsznsjLX5VZUXeQDU1tNgHLtgUEXcxto
         kmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C5ZpnIISOrgQPHb15dzDQUziq6RdWWF09/GhJ/pLK9Q=;
        b=P67zQxIAEGMCqtNBY0uZAHLOUrj8gEL3Q++XKtSdmWCqLDmdC4WXs0HCSPZRQ56Lvo
         jXPXMBmj0lO+1spUS4RJ88Fy5vxITmZ7WAm3RAHKd1IuSI1M9txFXUuJ8cd37gbS0Ny5
         SczWDqEbZ27YeNQp63xUfG/s6ksMORa/smJkDgJHVAJ/K2kODHhFJRR2SShi3WtL86Af
         0Lr53sQl2AwBQFJpJCjZRgik4BfO/+KyiYJUxoad5ZJQoNCIYCmU3pDx9IlmOdODJE3t
         Ribr5Kpy/WgatsHvieeIVEchsybp1FNWgL82huQMx2OvAlAHMGhN15FrdmIPCXirFjoU
         43Ow==
X-Gm-Message-State: AOAM5308CiZ+H1YkqoksX72rTMhr9B/1SRFcO+syCa/D8tXs0ceQ2MQm
        Sh2BdWC9zqhs4nH9/awdlyN6C4SAhfF4g3A+gRs=
X-Google-Smtp-Source: ABdhPJxLHBcOSDdV5XEyAFbfELdpkq05Z1e3SPTz31uVpyqwT+H67JT2FrjStoW8LsAP05XllqfrtkFWWaeymOf8omg=
X-Received: by 2002:a05:6808:1153:: with SMTP id u19mr10692961oiu.20.1626406234308;
 Thu, 15 Jul 2021 20:30:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-7-aisheng.dong@nxp.com> <1626357250.406964.968555.nullmailer@robh.at.kernel.org>
In-Reply-To: <1626357250.406964.968555.nullmailer@robh.at.kernel.org>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 16 Jul 2021 11:28:33 +0800
Message-ID: <CAA+hA=TsEfz9Zo3wfsf6ZXnYHtfv5AbGNqVQEMn0q0bh1TOQDQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] dt-bindings: soc: imx: add missing iomuxc gpr binding
To:     Rob Herring <robh@kernel.org>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Thu, Jul 15, 2021 at 9:54 PM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, 15 Jul 2021 16:25:35 +0800, Dong Aisheng wrote:
> > The General Purpose Registers IOMUXC_GPR are used to select operating
> > modes for general features in the SoC, usually not related to the IOMUX
> > itself.
> >
> > This binding doc is generated based on the exist usage in dts
> > in order to fix dt schema check failures.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> >  .../devicetree/bindings/soc/imx/fsl,gpr.yaml  | 69 +++++++++++++++++++
> >  1 file changed, 69 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/syscon.example.dt.yaml: iomuxc-gpr@20e0000: compatible: 'oneOf' conditional failed, one must be fixed:
>         ['fsl,imx6q-iomuxc-gpr', 'syscon'] is too short
>         'fsl,imx53-iomuxc-gpr' was expected
>         'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx6sl-iomuxc-gpr', 'fsl,imx6sll-iomuxc-gpr', 'fsl,imx6sx-iomuxc-gpr', 'fsl,imx6ul-iomuxc-gpr', 'fsl,imx7d-iomuxc-gpr']
>         'fsl,imx7d-iomuxc-gpr' was expected
>         'fsl,imx8mq-iomuxc-gpr' was expected
>         'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx8mm-iomuxc-gpr', 'fsl,imx8mn-iomuxc-gpr', 'fsl,imx8mp-iomuxc-gpr']
>         'fsl,imx6q-iomuxc-gpr' was expected
>         From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
> \ndoc reference errors (make refcheckdocs):
> Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> MAINTAINERS: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt

The example in syscon.yaml is invalid and needs change as follows.
However, should I do it in a separate patch cause they're changes for
two irrelevant binding
files or merge into this one ?

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml
b/Documentation/devicetree/bindings/mfd/syscon.yaml
index f14ae6da0068..11eae4c5848e 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -90,7 +90,7 @@ examples:

   - |
     gpr: iomuxc-gpr@20e0000 {
-        compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
+        compatible = "fsl,imx6q-iomuxc-gpr", "syscon", "mfd";
         reg = <0x020e0000 0x38>;
         hwlocks = <&hwlock1 1>;
     };

Regards
Aisheng


>
> See https://patchwork.ozlabs.org/patch/1505583
>
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit.
>
