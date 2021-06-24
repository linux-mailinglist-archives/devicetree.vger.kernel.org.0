Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1E833B38D6
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 23:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232460AbhFXVjE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 17:39:04 -0400
Received: from mail-il1-f169.google.com ([209.85.166.169]:46707 "EHLO
        mail-il1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232300AbhFXVjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 17:39:04 -0400
Received: by mail-il1-f169.google.com with SMTP id i12so7776152ila.13
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 14:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AHbH5kF7Cy1XU2kGrVtrtWyI5H5sbSVIukGmBvzc/PE=;
        b=PG/bcR2fy5Hnr8EkbdiDu2SAK4h7tIWa3aM9H5VRUHfhczpaGojzWmZ/HNgH+UNDzf
         gzs2LaA2yHNHq9O+R0MuNaFbNyTcOwKSZORCy+fJLQ3S0vOqkNTmhVc7VoD27JB3Gj+5
         0TLMvW6tN2iIkIYaNOKFyu7EMjF5bBM6Mr98iSUvvfjwmSWYSPnP42YzXKXpjMMaOQX+
         XV+G6opX+B+Ltc6MftLL6cAJWAYJvPDksZaVJwzKL2cmjIuA6ntFm+L9TiLwQqlnfkq2
         wYm7JAqYBcm+T/gOQNUZCjjsSYi5YaRZKZcRXdr605ItzK82BzC0YL+wrWdr6Mtx185I
         VcRg==
X-Gm-Message-State: AOAM531E2ATalrqKOe06FrisZHIE4v+Iyffj2YB1T3xOnBMHXGYtzKDj
        ExrmtKYbJATMR8Kf5viBSA==
X-Google-Smtp-Source: ABdhPJzh1mWlpZWe73bi95RWFb+7l4CbEvdxJiH5sDxST0VZGG7eEPTzN/xKRifG0n+2QAiZMlK4qQ==
X-Received: by 2002:a92:2004:: with SMTP id j4mr5178796ile.53.1624570603372;
        Thu, 24 Jun 2021 14:36:43 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n5sm147412ilo.78.2021.06.24.14.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 14:36:42 -0700 (PDT)
Received: (nullmailer pid 2027915 invoked by uid 1000);
        Thu, 24 Jun 2021 21:36:38 -0000
Date:   Thu, 24 Jun 2021 15:36:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
        linus.walleij@linaro.org, aisheng.dong@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 09/11] dt-bindings: clock: Add imx8ulp clock support
Message-ID: <20210624213638.GA2026087@robh.at.kernel.org>
References: <20210618065423.3424938-1-ping.bai@nxp.com>
 <20210618065423.3424938-10-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210618065423.3424938-10-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 18, 2021 at 02:54:21PM +0800, Jacky Bai wrote:
> Add the clock dt-binding file for i.MX8ULP.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  - v2 changes:
>    update the license
> ---
>  .../bindings/clock/imx8ulp-clock.yaml         |  72 +++++
>  include/dt-bindings/clock/imx8ulp-clock.h     | 261 ++++++++++++++++++
>  2 files changed, 333 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
>  create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
> new file mode 100644
> index 000000000000..b47d09ed4a57
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)

Sigh, like all the others: (GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/imx8ulp-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8ULP Clock Control Module Binding
> +
> +maintainers:
> +  - Jacky Bai <ping.bai@nxp.com>
> +
> +description: |
> +  On i.MX8ULP, The clock sources generation, distribution and management is
> +  under the control of several CGCs & PCCs modules. The CGC modules generate
> +  and distribute clocks on the device. PCC modules control clock selection,
> +  optional division and clock gating mode for peripherals
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8ulp-cgc1
> +      - fsl,imx8ulp-cgc2
> +      - fsl,imx8ulp-pcc3
> +      - fsl,imx8ulp-pcc4
> +      - fsl,imx8ulp-pcc5
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description:
> +      specify the external clocks used by the CGC module, the clocks
> +      are rosc, sosc, frosc, lposc
> +    maxItems: 4
> +
> +  clock-names:
> +    description:
> +      specify the external clocks names used by the CGC module. the valid
> +      clock names should rosc, sosc, frosc, lposc.
> +    maxItems: 4
> +
> +  '#clock-cells':
> +    const: 1
> +    description:
> +      The clock consumer should specify the desired clock by having the clock
> +      ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8ulp-clock.h
> +      for the full list of i.MX8ULP clock IDs.
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    clock-controller@292c0000 {
> +        compatible = "fsl,imx8ulp-cgc1";
> +        reg = <0x292c0000 0x10000>;
> +        clocks = <&rosc>, <&sosc>, <&frosc>, <&lposc>;
> +        clock-names = "rosc", "sosc", "frosc", "lposc";
> +        #clock-cells = <1>;
> +    };
> +
> +  - |
> +    clock-controller@292d0000 {
> +        compatible = "fsl,imx8ulp-pcc3";
> +        reg = <0x292d0000 0x10000>;
> +        #clock-cells = <1>;
> +    };
> diff --git a/include/dt-bindings/clock/imx8ulp-clock.h b/include/dt-bindings/clock/imx8ulp-clock.h
> new file mode 100644
> index 000000000000..5bd2044633d3
> --- /dev/null
> +++ b/include/dt-bindings/clock/imx8ulp-clock.h
> @@ -0,0 +1,261 @@
> +/* SPDX-License-Identifier: GPL-2.0+ OR MIT */
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#ifndef __DT_BINDINGS_CLOCK_IMX8ULP_H
> +#define __DT_BINDINGS_CLOCK_IMX8ULP_H
> +
> +#define IMX8ULP_CLK_DUMMY			0
> +#define IMX8ULP_CLK_ROSC			1
> +#define IMX8ULP_CLK_FROSC			2
> +#define IMX8ULP_CLK_LPOSC			3
> +#define IMX8ULP_CLK_SOSC			4
> +
> +/* CGC1 */
> +#define IMX8ULP_CLK_SPLL2			5
> +#define IMX8ULP_CLK_SPLL3			6
> +#define IMX8ULP_CLK_A35_SEL			7
> +#define IMX8ULP_CLK_A35_DIV			8
> +#define IMX8ULP_CLK_SPLL2_PRE_SEL		9
> +#define IMX8ULP_CLK_SPLL3_PRE_SEL		10
> +#define IMX8ULP_CLK_SPLL3_PFD0			11
> +#define IMX8ULP_CLK_SPLL3_PFD1			12
> +#define IMX8ULP_CLK_SPLL3_PFD2			13
> +#define IMX8ULP_CLK_SPLL3_PFD3			14
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV1		15
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV2		16
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV1		17
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV2		18
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV1		19
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV2		20
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV1		21
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV2		22
> +#define IMX8ULP_CLK_NIC_SEL			23
> +#define IMX8ULP_CLK_NIC_AD_DIVPLAT		24
> +#define IMX8ULP_CLK_NIC_PER_DIVPLAT		25
> +#define IMX8ULP_CLK_XBAR_SEL			26
> +#define IMX8ULP_CLK_XBAR_AD_DIVPLAT		27
> +#define IMX8ULP_CLK_XBAR_DIVBUS			28
> +#define IMX8ULP_CLK_XBAR_AD_SLOW		29
> +#define IMX8ULP_CLK_SOSC_DIV1			30
> +#define IMX8ULP_CLK_SOSC_DIV2			31
> +#define IMX8ULP_CLK_SOSC_DIV3			32
> +#define IMX8ULP_CLK_FROSC_DIV1			33
> +#define IMX8ULP_CLK_FROSC_DIV2			34
> +#define IMX8ULP_CLK_FROSC_DIV3			35
> +#define IMX8ULP_CLK_SPLL3_VCODIV		36
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV1_GATE	37
> +#define IMX8ULP_CLK_SPLL3_PFD0_DIV2_GATE	38
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV1_GATE	39
> +#define IMX8ULP_CLK_SPLL3_PFD1_DIV2_GATE	40
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV1_GATE	41
> +#define IMX8ULP_CLK_SPLL3_PFD2_DIV2_GATE	42
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV1_GATE	43
> +#define IMX8ULP_CLK_SPLL3_PFD3_DIV2_GATE	44
> +#define IMX8ULP_CLK_SOSC_DIV1_GATE		45
> +#define IMX8ULP_CLK_SOSC_DIV2_GATE		46
> +#define IMX8ULP_CLK_SOSC_DIV3_GATE		47
> +#define IMX8ULP_CLK_FROSC_DIV1_GATE		48
> +#define IMX8ULP_CLK_FROSC_DIV2_GATE		49
> +#define IMX8ULP_CLK_FROSC_DIV3_GATE		50
> +#define IMX8ULP_CLK_SAI4_SEL			51
> +#define IMX8ULP_CLK_SAI5_SEL			52
> +#define IMX8ULP_CLK_AUD_CLK1			53
> +#define IMX8ULP_CLK_ARM				54
> +#define IMX8ULP_CLK_ENET_TS_SEL			55
> +
> +#define IMX8ULP_CLK_CGC1_END			56
> +
> +/* CGC2 */
> +#define IMX8ULP_CLK_PLL4_PRE_SEL	0
> +#define IMX8ULP_CLK_PLL4		1
> +#define IMX8ULP_CLK_PLL4_VCODIV		2
> +#define IMX8ULP_CLK_DDR_SEL		3
> +#define IMX8ULP_CLK_DDR_DIV		4
> +#define IMX8ULP_CLK_LPAV_AXI_SEL	5
> +#define IMX8ULP_CLK_LPAV_AXI_DIV	6
> +#define IMX8ULP_CLK_LPAV_AHB_DIV	7
> +#define IMX8ULP_CLK_LPAV_BUS_DIV	8
> +#define IMX8ULP_CLK_PLL4_PFD0		9
> +#define IMX8ULP_CLK_PLL4_PFD1		10
> +#define IMX8ULP_CLK_PLL4_PFD2		11
> +#define IMX8ULP_CLK_PLL4_PFD3		12
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV1_GATE	13
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV2_GATE	14
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV1_GATE	15
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV2_GATE	16
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV1_GATE	17
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV2_GATE	18
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV1_GATE	19
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV2_GATE	20
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV1	21
> +#define IMX8ULP_CLK_PLL4_PFD0_DIV2	22
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV1	23
> +#define IMX8ULP_CLK_PLL4_PFD1_DIV2	24
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV1	25
> +#define IMX8ULP_CLK_PLL4_PFD2_DIV2	26
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV1	27
> +#define IMX8ULP_CLK_PLL4_PFD3_DIV2	28
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV1_GATE	29
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV2_GATE	30
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV3_GATE	31
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV1	32
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV2	33
> +#define IMX8ULP_CLK_CGC2_SOSC_DIV3	34
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV1_GATE	35
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV2_GATE	36
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV3_GATE	37
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV1	38
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV2	39
> +#define IMX8ULP_CLK_CGC2_FROSC_DIV3	40
> +#define IMX8ULP_CLK_AUD_CLK2		41
> +#define IMX8ULP_CLK_SAI6_SEL		42
> +#define IMX8ULP_CLK_SAI7_SEL		43
> +#define IMX8ULP_CLK_SPDIF_SEL		44
> +#define IMX8ULP_CLK_HIFI_SEL		45
> +#define IMX8ULP_CLK_HIFI_DIVCORE	46
> +#define IMX8ULP_CLK_HIFI_DIVPLAT	47
> +#define IMX8ULP_CLK_DSI_PHY_REF		48
> +
> +#define IMX8ULP_CLK_CGC2_END		49
> +
> +/* PCC3 */
> +#define IMX8ULP_CLK_WDOG3		0
> +#define IMX8ULP_CLK_WDOG4		1
> +#define IMX8ULP_CLK_LPIT1		2
> +#define IMX8ULP_CLK_TPM4		3
> +#define IMX8ULP_CLK_TPM5		4
> +#define IMX8ULP_CLK_FLEXIO1		5
> +#define IMX8ULP_CLK_I3C2		6
> +#define IMX8ULP_CLK_LPI2C4		7
> +#define IMX8ULP_CLK_LPI2C5		8
> +#define IMX8ULP_CLK_LPUART4		9
> +#define IMX8ULP_CLK_LPUART5		10
> +#define IMX8ULP_CLK_LPSPI4		11
> +#define IMX8ULP_CLK_LPSPI5		12
> +#define IMX8ULP_CLK_DMA1_MP		13
> +#define IMX8ULP_CLK_DMA1_CH0		14
> +#define IMX8ULP_CLK_DMA1_CH1		15
> +#define IMX8ULP_CLK_DMA1_CH2		16
> +#define IMX8ULP_CLK_DMA1_CH3		17
> +#define IMX8ULP_CLK_DMA1_CH4		18
> +#define IMX8ULP_CLK_DMA1_CH5		19
> +#define IMX8ULP_CLK_DMA1_CH6		20
> +#define IMX8ULP_CLK_DMA1_CH7		21
> +#define IMX8ULP_CLK_DMA1_CH8		22
> +#define IMX8ULP_CLK_DMA1_CH9		23
> +#define IMX8ULP_CLK_DMA1_CH10		24
> +#define IMX8ULP_CLK_DMA1_CH11		25
> +#define IMX8ULP_CLK_DMA1_CH12		26
> +#define IMX8ULP_CLK_DMA1_CH13		27
> +#define IMX8ULP_CLK_DMA1_CH14		28
> +#define IMX8ULP_CLK_DMA1_CH15		29
> +#define IMX8ULP_CLK_DMA1_CH16		30
> +#define IMX8ULP_CLK_DMA1_CH17		31
> +#define IMX8ULP_CLK_DMA1_CH18		32
> +#define IMX8ULP_CLK_DMA1_CH19		33
> +#define IMX8ULP_CLK_DMA1_CH20		34
> +#define IMX8ULP_CLK_DMA1_CH21		35
> +#define IMX8ULP_CLK_DMA1_CH22		36
> +#define IMX8ULP_CLK_DMA1_CH23		37
> +#define IMX8ULP_CLK_DMA1_CH24		38
> +#define IMX8ULP_CLK_DMA1_CH25		39
> +#define IMX8ULP_CLK_DMA1_CH26		40
> +#define IMX8ULP_CLK_DMA1_CH27		41
> +#define IMX8ULP_CLK_DMA1_CH28		42
> +#define IMX8ULP_CLK_DMA1_CH29		43
> +#define IMX8ULP_CLK_DMA1_CH30		44
> +#define IMX8ULP_CLK_DMA1_CH31		45
> +#define IMX8ULP_CLK_MU3_A		46
> +
> +#define IMX8ULP_CLK_PCC3_END		47
> +
> +/* PCC4 */
> +#define IMX8ULP_CLK_FLEXSPI2		0
> +#define IMX8ULP_CLK_TPM6		1
> +#define IMX8ULP_CLK_TPM7		2
> +#define IMX8ULP_CLK_LPI2C6		3
> +#define IMX8ULP_CLK_LPI2C7		4
> +#define IMX8ULP_CLK_LPUART6		5
> +#define IMX8ULP_CLK_LPUART7		6
> +#define IMX8ULP_CLK_SAI4		7
> +#define IMX8ULP_CLK_SAI5		8
> +#define IMX8ULP_CLK_PCTLE		9
> +#define IMX8ULP_CLK_PCTLF		10
> +#define IMX8ULP_CLK_USDHC0		11
> +#define IMX8ULP_CLK_USDHC1		12
> +#define IMX8ULP_CLK_USDHC2		13
> +#define IMX8ULP_CLK_USB0		14
> +#define IMX8ULP_CLK_USB0_PHY		15
> +#define IMX8ULP_CLK_USB1		16
> +#define IMX8ULP_CLK_USB1_PHY		17
> +#define IMX8ULP_CLK_USB_XBAR		18
> +#define IMX8ULP_CLK_ENET		19
> +#define IMX8ULP_CLK_SFA1		20
> +#define IMX8ULP_CLK_RGPIOE		21
> +#define IMX8ULP_CLK_RGPIOF		22
> +
> +#define IMX8ULP_CLK_PCC4_END		23
> +
> +/* PCC5 */
> +#define IMX8ULP_CLK_TPM8		0
> +#define IMX8ULP_CLK_SAI6		1
> +#define IMX8ULP_CLK_SAI7		2
> +#define IMX8ULP_CLK_SPDIF		3
> +#define IMX8ULP_CLK_ISI			4
> +#define IMX8ULP_CLK_CSI_REGS 		5
> +#define IMX8ULP_CLK_PCTLD		6
> +#define IMX8ULP_CLK_CSI			7
> +#define IMX8ULP_CLK_DSI			8
> +#define IMX8ULP_CLK_WDOG5		9
> +#define IMX8ULP_CLK_EPDC		10
> +#define IMX8ULP_CLK_PXP			11
> +#define IMX8ULP_CLK_SFA2		12
> +#define IMX8ULP_CLK_GPU2D		13
> +#define IMX8ULP_CLK_GPU3D		14
> +#define IMX8ULP_CLK_DC_NANO		15
> +#define IMX8ULP_CLK_CSI_CLK_UI 		16
> +#define IMX8ULP_CLK_CSI_CLK_ESC		17
> +#define IMX8ULP_CLK_RGPIOD		18
> +#define IMX8ULP_CLK_DMA2_MP		19
> +#define IMX8ULP_CLK_DMA2_CH0		20
> +#define IMX8ULP_CLK_DMA2_CH1		21
> +#define IMX8ULP_CLK_DMA2_CH2		22
> +#define IMX8ULP_CLK_DMA2_CH3		23
> +#define IMX8ULP_CLK_DMA2_CH4		24
> +#define IMX8ULP_CLK_DMA2_CH5		25
> +#define IMX8ULP_CLK_DMA2_CH6		26
> +#define IMX8ULP_CLK_DMA2_CH7		27
> +#define IMX8ULP_CLK_DMA2_CH8		28
> +#define IMX8ULP_CLK_DMA2_CH9		29
> +#define IMX8ULP_CLK_DMA2_CH10		30
> +#define IMX8ULP_CLK_DMA2_CH11		31
> +#define IMX8ULP_CLK_DMA2_CH12		32
> +#define IMX8ULP_CLK_DMA2_CH13		33
> +#define IMX8ULP_CLK_DMA2_CH14		34
> +#define IMX8ULP_CLK_DMA2_CH15		35
> +#define IMX8ULP_CLK_DMA2_CH16		36
> +#define IMX8ULP_CLK_DMA2_CH17		37
> +#define IMX8ULP_CLK_DMA2_CH18		38
> +#define IMX8ULP_CLK_DMA2_CH19		39
> +#define IMX8ULP_CLK_DMA2_CH20		40
> +#define IMX8ULP_CLK_DMA2_CH21		41
> +#define IMX8ULP_CLK_DMA2_CH22		42
> +#define IMX8ULP_CLK_DMA2_CH23		43
> +#define IMX8ULP_CLK_DMA2_CH24		44
> +#define IMX8ULP_CLK_DMA2_CH25		45
> +#define IMX8ULP_CLK_DMA2_CH26		46
> +#define IMX8ULP_CLK_DMA2_CH27		47
> +#define IMX8ULP_CLK_DMA2_CH28		48
> +#define IMX8ULP_CLK_DMA2_CH29		49
> +#define IMX8ULP_CLK_DMA2_CH30		50
> +#define IMX8ULP_CLK_DMA2_CH31		51
> +#define IMX8ULP_CLK_MU2_B		52
> +#define IMX8ULP_CLK_MU3_B		53
> +#define IMX8ULP_CLK_AVD_SIM		54
> +#define IMX8ULP_CLK_DSI_TX_ESC		55
> +
> +#define IMX8ULP_CLK_PCC5_END		56
> +
> +#endif
> -- 
> 2.26.2
> 
> 
