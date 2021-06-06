Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3691839CC67
	for <lists+devicetree@lfdr.de>; Sun,  6 Jun 2021 05:14:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbhFFDPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Jun 2021 23:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbhFFDPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Jun 2021 23:15:51 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F57FC061768
        for <devicetree@vger.kernel.org>; Sat,  5 Jun 2021 20:14:03 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id v142so13872082oie.9
        for <devicetree@vger.kernel.org>; Sat, 05 Jun 2021 20:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xH80370bHV15kfuYCzEWUP1rX8OlyoQ1QuT/JYRtRcg=;
        b=Wc09PMW68hTR2QhIBmNkmJprsSFnC2+7L3XobjpMuKwWpkbRA9nWmZdtp57EzKXNcT
         Oeqp2TPaUx/RPHzYcG+qb+fPBpBpux1JGRZfGwjoTAe1oVYkDbK7CsGQt/CLcqMm/6sW
         OnVW56I5M/U28hOOcV6YfvIdKUSbhe6bV7KgcUQWUmcY3f/oDjWX3dJjO9PWehPabcBC
         3eFojHSiPd24UmGSFlqKHldMusgmzk4zaKuNixBsF9Nka6fyA8o4FnsG4VUxulxIIld2
         sS9GDLq5YGfLW/sAxHwqFoxUkBrp3ElnFI72BiJRmiQDr09OteYk9yGDTiTxiJ7A7MhI
         K/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xH80370bHV15kfuYCzEWUP1rX8OlyoQ1QuT/JYRtRcg=;
        b=fTN87Kw8bh0TEvL6Kd7Pxm/ExqdWHiKxi7LXoj9fOBNoTJzWmd2byGa599pcgL262L
         LVbY6nPghnsdXKRKCMdYzdtQJtNHxIC/Ud4szRbL6QcQZyOOjxErzYDsRzpo2xkgXCMx
         0lgqERhoNXaatULVCFscX+87jZjzQz4TPnCGACHKJEaSOgyPB2B/5roV4fHDLKbezbyZ
         rEDU3nxR+0HgOWxQlVkqu5w1O9NjIKzTUAc623W48IwZEJYM+eqtvvoKPL7GJeo3fDu0
         eLHdlDMyOQg5ScyZX35iobaLH+GPNEKsHzt2Ex+RbA6xMnwm9EtOlJnA2fUOSswjaO9Z
         450Q==
X-Gm-Message-State: AOAM530rqIMO9vx4Vu/MMA1bwSStxN8gmcUD85SDApCQCrbYL9vp6s2K
        uLNiciJUkaFxBbFU8+gKmDUsHA==
X-Google-Smtp-Source: ABdhPJwQLv9q4Q2roLYPReQRqcL9zOdvnmOn69wKr6VWF7D1nBTgUpAkzMUQjhcScE5Ltly8XZ8QHA==
X-Received: by 2002:a54:4501:: with SMTP id l1mr7554665oil.19.1622949239584;
        Sat, 05 Jun 2021 20:13:59 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id i133sm1421545oia.2.2021.06.05.20.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 20:13:59 -0700 (PDT)
Date:   Sat, 5 Jun 2021 22:13:57 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        robh@kernel.org
Cc:     lorenzo.pieralisi@arm.com, bhelgaas@google.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: pci: Add devicetree binding for
 Qualcomm PCIe EP controller
Message-ID: <YLw9de/J7h5KZtHu@builder.lan>
References: <20210603103814.95177-1-manivannan.sadhasivam@linaro.org>
 <20210603103814.95177-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210603103814.95177-2-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 03 Jun 05:38 CDT 2021, Manivannan Sadhasivam wrote:

> Add devicetree binding for Qualcomm PCIe EP controller used in platforms
> like SDX55. The EP controller is based on the Designware core with
> Qualcomm specific wrappers.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-ep.yaml | 144 ++++++++++++++++++
>  1 file changed, 144 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> new file mode 100644
> index 000000000000..3e357cb03a5c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -0,0 +1,144 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm PCIe Endpoint Controller binding
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +allOf:
> +  - $ref: "pci-ep.yaml#"
> +
> +properties:
> +  compatible:
> +    const: qcom,sdx55-pcie-ep

The binding looks good, but this is going to cause us an inevitable
warning as we'd have to describe the controller twice (rc + ep) in the
sdx55.dtsi.

@Rob, what do you suggest we do about this, because it's the same
problem currently responsible for hundreds of warnings in the case of
GENI (where each node is duplicated for different functions).

> +
> +  reg:
> +    items:
> +      - description: Qualcomm specific PARF configuration registers
> +      - description: Designware PCIe registers
> +      - description: External local bus interface registers
> +      - description: Address Translation Unit (ATU) registers
> +      - description: Memory region used to map remote RC address space
> +      - description: Qualcomm specific TCSR registers

tcsr is separate hardware block with "misc" registers, I think it's
better if we describe that as qcom,sdx55-tcsr, syscon and use the syscon
API to access those registers...

Regards,
Bjorn

> +
> +  reg-names:
> +    items:
> +      - const: parf
> +      - const: dbi
> +      - const: elbi
> +      - const: atu
> +      - const: addr_space
> +      - const: tcsr
> +
> +  clocks:
> +    items:
> +      - description: PCIe Auxiliary clock
> +      - description: PCIe CFG AHB clock
> +      - description: PCIe Master AXI clock
> +      - description: PCIe Slave AXI clock
> +      - description: PCIe Slave Q2A AXI clock
> +      - description: PCIe Sleep clock
> +      - description: PCIe Reference clock
> +
> +  clock-names:
> +    items:
> +      - const: aux
> +      - const: cfg
> +      - const: bus_master
> +      - const: bus_slave
> +      - const: slave_q2a
> +      - const: sleep
> +      - const: ref
> +
> +  interrupts:
> +    maxItems: 1
> +    description: PCIe Global interrupt
> +
> +  interrupt-names:
> +    const: global
> +
> +  reset-gpios:
> +    description: GPIO that is being used as PERST# input signal
> +    maxItems: 1
> +
> +  wake-gpios:
> +    description: GPIO that is being used as WAKE# output signal
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: core
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: pciephy
> +
> +  num-lanes:
> +    default: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - reset-gpios
> +  - resets
> +  - reset-names
> +  - power-domains
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,gcc-sdx55.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    pcie_ep: pcie-ep@40000000 {
> +        compatible = "qcom,sdx55-pcie-ep";
> +        reg = <0x01c00000 0x3000>,
> +              <0x40000000 0xf1d>,
> +              <0x40000f20 0xc8>,
> +              <0x40001000 0x1000>,
> +              <0x42000000 0x1000>,
> +              <0x01fcb000 0x1000>;
> +        reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> +                    "tcsr";
> +
> +        clocks = <&gcc GCC_PCIE_AUX_CLK>,
> +             <&gcc GCC_PCIE_CFG_AHB_CLK>,
> +             <&gcc GCC_PCIE_MSTR_AXI_CLK>,
> +             <&gcc GCC_PCIE_SLV_AXI_CLK>,
> +             <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
> +             <&gcc GCC_PCIE_SLEEP_CLK>,
> +             <&gcc GCC_PCIE_0_CLKREF_CLK>;
> +        clock-names = "aux", "cfg", "bus_master", "bus_slave",
> +                      "slave_q2a", "sleep", "ref";
> +
> +        interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "global";
> +        reset-gpios = <&tlmm 57 GPIO_ACTIVE_HIGH>;
> +        wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
> +        resets = <&gcc GCC_PCIE_BCR>;
> +        reset-names = "core";
> +        power-domains = <&gcc PCIE_GDSC>;
> +        phys = <&pcie0_lane>;
> +        phy-names = "pciephy";
> +        max-link-speed = <3>;
> +        num-lanes = <2>;
> +
> +        status = "disabled";
> +    };
> -- 
> 2.25.1
> 
