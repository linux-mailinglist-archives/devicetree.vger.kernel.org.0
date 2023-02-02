Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83214688847
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 21:31:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbjBBUbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 15:31:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbjBBUbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 15:31:35 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2422C675
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 12:31:33 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id y1so2831554wru.2
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 12:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x/zX3eATasfp7Ut9J+Nd1XQ1UCaNVcFGST/BLSWzf0g=;
        b=km5d4eAR0gniCaMFx3btr5UnSAlsPWQqZySH+u5/hxHSkXfaSvpREsjb2e6cyWVEme
         AT70Hpdh+WJkkS/isNReU1LFkR1OqNvKAI+RX4KCLLuIaoL3Wa7ZZ4OcjbZS1O6aSN4l
         g6OljW4NOZANkm2AdR+dJldDAy4k9Y8gLtRwA42I32k5j8hUhSKrvObGYJU73Yp/0o58
         t3IDaYWaqEDqrKXpi3ntrzo8GOYEAIFhA6xi/QbLR2eKbHk7opGmoOOPti2BSAmzIPrt
         2IE1c8PAViwp04iEFg2HtKBMhXGDCx4epuGvyxGMmS3Zf+qVOytfE4mumnxs+PnOkb/N
         rNIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x/zX3eATasfp7Ut9J+Nd1XQ1UCaNVcFGST/BLSWzf0g=;
        b=LagAYsQmEllssFoV54UYu4m7n0eVDNQDO9jvV23Pn+vOluuPHD2C08tq/21l9ogIZV
         kCnAaC+jK86lczyV0GTzcK6sTgjpQIx5nZ1a2tC/8LCZAV3o88TJl9UtUv9e8cuOkvi9
         AFhQd95ltUfr3G8CMKdOMQpya2I20kJvEQpw9oXOv25pBJrynsF0D3VjosZ+EsP7h8SQ
         PoGcy7fCNycwRsdnYuk0HRFwNu1kJUhe7/2FbPsVFd6AqKnnlGD651dgsiNQbttTJ1Hf
         gcgeip7m3nP5VUiYBK4lGRQtFuzubMGm0rUwm6NF+ch+kL1t9S5Un3ZvgWbVDyR8DOkY
         1qHg==
X-Gm-Message-State: AO0yUKU6rne9YpD+7aMpK3IRlO0NbvihRD010+EsG6mE6Oku6eviTj3N
        wHkX1tlJ02io3sziAemrxgWckQ==
X-Google-Smtp-Source: AK7set/vC10NCI0B09J9Pd5MVjLuTyxP7IBs8Q6L1WPVizjbupVoOw7LXBcOF2nSDOa7fLC/7etuPQ==
X-Received: by 2002:a05:6000:1c19:b0:2bf:f024:de5e with SMTP id ba25-20020a0560001c1900b002bff024de5emr7294027wrb.55.1675369892424;
        Thu, 02 Feb 2023 12:31:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o7-20020a05600002c700b002be5bdbe40csm392997wry.27.2023.02.02.12.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 12:31:32 -0800 (PST)
Message-ID: <ac0f6165-490a-d850-0ad4-a3c014f9d2e9@linaro.org>
Date:   Thu, 2 Feb 2023 21:31:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v9 1/4] dt-bindings: imx6q-pcie: Restruct i.MX PCIe schema
Content-Language: en-US
To:     Richard Zhu <hongxing.zhu@nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, l.stach@pengutronix.de,
        shawnguo@kernel.org, lorenzo.pieralisi@arm.com, peng.fan@nxp.com,
        marex@denx.de, marcel.ziswiler@toradex.com, tharvey@gateworks.com,
        frank.li@nxp.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@pengutronix.de,
        linux-imx@nxp.com
References: <1675323337-19358-1-git-send-email-hongxing.zhu@nxp.com>
 <1675323337-19358-2-git-send-email-hongxing.zhu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1675323337-19358-2-git-send-email-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/02/2023 08:35, Richard Zhu wrote:
> Restruct i.MX PCIe schema, derive the common properties, thus they can
> be shared by both the RC and Endpoint schema.
> 
> Update the description of fsl,imx6q-pcie.yaml, and move the EP mode
> compatible to fsl,imx6q-pcie-ep.yaml.
> 
> Add support for i.MX8M PCIe Endpoint modes, and update the MAINTAINER
> accordingly.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/pci/fsl,imx6q-pcie-common.yaml   | 285 ++++++++++++++++++
>  .../bindings/pci/fsl,imx6q-pcie-ep.yaml       |  83 +++++
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 247 +--------------
>  MAINTAINERS                                   |   2 +
>  4 files changed, 376 insertions(+), 241 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> new file mode 100644
> index 000000000000..f291f7529622
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> @@ -0,0 +1,285 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX6 PCIe RC/EP controller
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +description:
> +  Generic Freescale i.MX PCIe Root Port and Endpoint controller
> +  properties.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx6q-pcie
> +      - fsl,imx6sx-pcie
> +      - fsl,imx6qp-pcie
> +      - fsl,imx7d-pcie
> +      - fsl,imx8mq-pcie
> +      - fsl,imx8mm-pcie
> +      - fsl,imx8mp-pcie
> +      - fsl,imx8mm-pcie-ep
> +      - fsl,imx8mq-pcie-ep
> +      - fsl,imx8mp-pcie-ep

Compatibles are not part of common schema. Are you saying that EP
compatible is valid for PCIE not working as endpoint? This does not make
sense. The common part is only the part which is common. Compatible is
not common, not shared.


Also missing required: block.

(...)

> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> new file mode 100644
> index 000000000000..f651bc3fcaf7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX6 PCIe Endpoint controller
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +description: |+
> +  This PCIe controller is based on the Synopsys DesignWare PCIe IP and
> +  thus inherits all the common properties defined in snps,dw-pcie-ep.yaml.
> +  The controller instances are dual mode where in they can work either in
> +  Root Port mode or Endpoint mode but one at a time.
> +
> +properties:
> +  reg:
> +    minItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: dbi
> +      - const: addr_space
> +
> +  interrupts:
> +    items:
> +      - description: builtin eDMA interrupter.
> +
> +  interrupt-names:
> +    items:
> +      - const: dma
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - num-lanes
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names

Several of these should be required by common schema/

> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
> +  - $ref: /schemas/pci/fsl,imx6q-pcie-common.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +    #include <dt-bindings/reset/imx8mp-reset.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    pcie_ep: pcie-ep@33800000 {
> +      compatible = "fsl,imx8mp-pcie-ep";
> +      reg = <0x33800000 0x000400000>, <0x18000000 0x08000000>;
> +      reg-names = "dbi", "addr_space";
> +      clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> +               <&clk IMX8MP_CLK_HSIO_AXI>,
> +               <&clk IMX8MP_CLK_PCIE_ROOT>;
> +      clock-names = "pcie", "pcie_bus", "pcie_aux";
> +      assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
> +      assigned-clock-rates = <10000000>;
> +      assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
> +      num-lanes = <1>;
> +      interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>; /* eDMA */
> +      interrupt-names = "dma";
> +      fsl,max-link-speed = <3>;
> +      power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_PCIE>;
> +      resets = <&src IMX8MP_RESET_PCIE_CTRL_APPS_EN>,
> +               <&src IMX8MP_RESET_PCIE_CTRL_APPS_TURNOFF>;
> +      reset-names = "apps", "turnoff";
> +      phys = <&pcie_phy>;
> +      phy-names = "pcie-phy";
> +      num-ib-windows = <4>;
> +      num-ob-windows = <4>;
> +      status = "disabled";

Drop status

> +    };
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index f13f87fddb3d..db1d0a04bde4 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -13,21 +13,13 @@ maintainers:
>  description: |+
>    This PCIe host controller is based on the Synopsys DesignWare PCIe IP
>    and thus inherits all the common properties defined in snps,dw-pcie.yaml.
> +  The controller instances are dual mode where in they can work either in
> +  Root Port mode or Endpoint mode but one at a time.
>  
> -properties:
> -  compatible:
> -    enum:
> -      - fsl,imx6q-pcie
> -      - fsl,imx6sx-pcie
> -      - fsl,imx6qp-pcie
> -      - fsl,imx7d-pcie
> -      - fsl,imx8mq-pcie
> -      - fsl,imx8mm-pcie
> -      - fsl,imx8mp-pcie

Compatibles should stay because these are not valid for EP schema.

> -      - fsl,imx8mm-pcie-ep
> -      - fsl,imx8mq-pcie-ep
> -      - fsl,imx8mp-pcie-ep
> +  See fsl,imx6q-pcie-ep.yaml for details on the Endpoint mode device tree
> +  bindings.
>  

	
Best regards,
Krzysztof

