Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5026D3936EC
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 22:15:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235576AbhE0URa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 16:17:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:36886 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235519AbhE0UR3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 May 2021 16:17:29 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id E7DEC613ED
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 20:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1622146555;
        bh=tFekpgxnBCW9B8RjFMXNWQrv6Zb6ZGLs5ePDqpxSgdE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=iLl0m0NLbslZM0fYdRh9f/XHszKTpjvV3fvA6TLGLe+DKtPcfmqqV63rzFWfD3CXR
         ncuR4EqDYj+HER4/N/LQI+0zVJFgbIJgsrce8TqCgzg6l46fOF77vMhwcwABC9PZ7M
         mh/oy9FKDIZ178Kn6vhDRMt7n1uDsstgCjOkJwFWi8zrZl1xaoOSORIk9QfhjokJY7
         xJvGdZAO8KlTEj6hXxPSX77O0cM28mD19pjguTf7ax3IQbypBiO9rcsRrD+EsCmkAo
         5ll+9PgChzS9hg9MjPRDMbKf+f7X4aYAIcMfX2eH+zHSxMmMoxj5SBHq7jZQ+Ll8ys
         fy5XKiGtMSriw==
Received: by mail-ed1-f52.google.com with SMTP id e24so2191947eds.11
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 13:15:55 -0700 (PDT)
X-Gm-Message-State: AOAM531E1J+Rqxe2sIocVlpYi3iyalEfcvC+oce5p9skITD5COikD80L
        sKKH4hQvS8uYLpj3j8biaIoD1Tp4DmbNOrb9Iw==
X-Google-Smtp-Source: ABdhPJxbZVBOsMqT/HqqfLaPGIKYmp2V8KOD8QColAH/Tj/AWClwoZF6Ap7huIY7UiAEGSL163TdSsAVhoDGI7/FX8Q=
X-Received: by 2002:aa7:d893:: with SMTP id u19mr6286360edq.258.1622146554521;
 Thu, 27 May 2021 13:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210526182807.548118-1-sudeep.holla@arm.com> <20210526182807.548118-9-sudeep.holla@arm.com>
 <20210526183455.q6wmhm6qjggu65hs@bogus>
In-Reply-To: <20210526183455.q6wmhm6qjggu65hs@bogus>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 27 May 2021 15:15:42 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJohxPvpJJdG+j=3m7ymMQGZ_28BHr2XdR5iFOfA=Z6Og@mail.gmail.com>
Message-ID: <CAL_JsqJohxPvpJJdG+j=3m7ymMQGZ_28BHr2XdR5iFOfA=Z6Og@mail.gmail.com>
Subject: Re: [PATCH 8/8] dt-bindings: firmware: arm,scmi: Convert to json schema
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Peter Hilber <peter.hilber@opensynergy.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 26, 2021 at 1:35 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, May 26, 2021 at 07:28:07PM +0100, Sudeep Holla wrote:
> > Convert the old text format binding for System Control and Management Interface
> > (SCMI) Message Protocol into the new and shiny YAML format.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Cristian Marussi <cristian.marussi@arm.com>
> > Cc: Florian Fainelli <f.fainelli@gmail.com>
> > Cc: Jim Quinlan <jim2101024@gmail.com>
> > Cc: Etienne Carriere <etienne.carriere@linaro.org>
> > Cc: Peter Hilber <peter.hilber@opensynergy.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,scmi.txt      | 224 ---------------
> >  .../bindings/firmware/arm,scmi.yaml           | 270 ++++++++++++++++++
> >  2 files changed, 270 insertions(+), 224 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
> >  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> >
> > Hi,
> >
> > I have converted all the bindings except the below regulator part of the
> > binding. This needs to be addressed before merging ofcourse. Just posting
> > the remaining changes to get feedback and also ask suggestion for the below:
> >
> >         scmi_voltage: protocol@17 {
> >           reg = <0x17>;
> >           regulators {
> >             regulator_devX: regulator@0 {
> >               reg = <0x0>;
> >               regulator-max-microvolt = <3300000>;
> >             };
> >
> >             regulator_devY: regulator@9 {
> >               reg = <0x9>;
> >               regulator-min-microvolt = <500000>;
> >               regulator-max-microvolt = <4200000>;
> >             };
> >           };
> >         };
> >
> > I will reply with things I have tried separately to avoid confusion with this
> > the patch here.
> >
>
> Below is the patch I have tried. I even started without a separate binding
> for scmi regulator. Irrespective of what I have tried so far, I keep getting
> the same error, I even added '#address-cells' and '#size-cells' to the node
> but makes no difference.
>
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:62.19-31: Warning (reg_format): /example-0/firmware/scmi/protocol@17/regulators/regulator@0:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:67.19-31: Warning (reg_format): /example-0/firmware/scmi/protocol@17/regulators/regulator@9:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (pci_device_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:61.45-64.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@0: Relying on default #address-cells value
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:61.45-64.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@0: Relying on default #size-cells value
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:66.45-70.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@9: Relying on default #address-cells value
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dts:66.45-70.19: Warning (avoid_default_addr_size): /example-0/firmware/scmi/protocol@17/regulators/regulator@9: Relying on default #size-cells value
> Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml: Warning (unique_unit_address): Failed prerequisite 'avoid_default_addr_size'
>   CHECK   Documentation/devicetree/bindings/firmware/arm,scmi.example.dt.yaml
>
>
> Regards,
> Sudeep
>
> --->8
>
> diff --git c/Documentation/devicetree/bindings/firmware/arm,scmi.yaml i/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> index 36072585fc45..1fe23ef36adf 100644
> --- c/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> +++ i/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> @@ -101,6 +101,10 @@ description: |
>        '#thermal-sensor-cells':
>          const: 1
>
> +  '^regulator@[0-9]+$':

You need to create the whole hierarchy. This is defining 'regulator@*'
nodes at the top level of the binding. You need 'regulators' property
under 'protocol@??' and then this under 'regulators.

Is the protocol number fixed? If so, you can add a 'protocol@17'
property in addition to the pattern.

> +    type: object
> +    $ref: "/schemas/regulator/arm,scmi-regulator.yaml#"
> +
