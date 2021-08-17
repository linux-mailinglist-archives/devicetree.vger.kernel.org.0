Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C8773EF292
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 21:15:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231901AbhHQTPx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 15:15:53 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:33659 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbhHQTPx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Aug 2021 15:15:53 -0400
Received: by mail-oi1-f175.google.com with SMTP id n27so758806oij.0
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 12:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bhTQFMEACiMy1VxgGyDtlovqvavcjvtzn6ezciSsatA=;
        b=EfbVvbfJuOSPFpvnhC66m46LUH9neKxJuC1S41lCaj0AJzgfor5GqCB+6chd/dPIn2
         GIC1O2IpMt8wzI9G+8n9DpRkMho/3dnIljviSD4talPWsR02qNT/2W7+dSqEl3SCUOqA
         Cni7Zhn6t9gt0jqz/TLopZDTd+Kij5HhEZ2IcXhN2dB5Y50/Mw3dTLksXujmVMKqBz4K
         H9S3Yd1vMROS3lbMe1Ros4HPkX7j/McC3S4KYncztvojGHuLoek9ibfFrGSq/ZVYnbID
         pbQRADJ4ndrk1EFh9TVo4HRdJX3nkpu7XZTJ8oTS1YcLfUxxGdwuzoUXY/jaHq5Hbegk
         oV7Q==
X-Gm-Message-State: AOAM531IyzWNWrQITpxAIj8r0F0KcwEo/MfOQMB9YIYWODNg3qqgaNeN
        NgPYgw7tY4F1XHDq3QizIQ==
X-Google-Smtp-Source: ABdhPJynUfC3iNhrJqFOU9oNm/E2vYVg+94eeuz+NQycgfhj/Jr0KkirtxvbWrZdSe+LiuPmkg0vlg==
X-Received: by 2002:a05:6808:d51:: with SMTP id w17mr3826129oik.179.1629227719506;
        Tue, 17 Aug 2021 12:15:19 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c23sm539782otu.60.2021.08.17.12.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 12:15:18 -0700 (PDT)
Received: (nullmailer pid 686682 invoked by uid 1000);
        Tue, 17 Aug 2021 19:15:17 -0000
Date:   Tue, 17 Aug 2021 14:15:17 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, abel.vesa@nxp.com, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/9] dt-bindings: clock: Add imx8ulp clock support
Message-ID: <YRwKxWbIXsQLmIcq@robh.at.kernel.org>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
 <20210810062820.1062884-2-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210810062820.1062884-2-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 10, 2021 at 02:28:12PM +0800, Jacky Bai wrote:
> Add the clock dt-binding file for i.MX8ULP.
> 
> For pcc node, it will also be used as a reset controller,
> so add the '#reset-cells' property description and add the
> pcc reset IDs.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  v2 changes:
>    - removed the redundant clocks & clock-names property
> 
>  v1 changes:
>    - Move this patch from dts patchset into this patchset
> ---
>  .../bindings/clock/imx8ulp-clock.yaml         |  71 +++++
>  include/dt-bindings/clock/imx8ulp-clock.h     | 258 ++++++++++++++++++
>  include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++++
>  3 files changed, 388 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
>  create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
>  create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
> new file mode 100644
> index 000000000000..9a075de1086a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
> +  and distribute clocks on the device. PCC modules control software reset,
> +  clock selection, optional division and clock gating mode for peripherals.
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
> +  '#clock-cells':
> +    const: 1
> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8ulp-pcc3
> +              - fsl,imx8ulp-pcc4
> +              - fsl,imx8ulp-pcc5
> +    then:
> +      required:
> +        - '#reset-cells'

And #reset-cells is optional for a CGC? I think this should be 2 schema 
files. There's nothing really shared any more than any other clock/reset 
controller.

> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    clock-controller@292c0000 {
> +        compatible = "fsl,imx8ulp-cgc1";
> +        reg = <0x292c0000 0x10000>;
> +        #clock-cells = <1>;
> +    };
> +
> +  - |
> +    clock-controller@292d0000 {
> +        compatible = "fsl,imx8ulp-pcc3";
> +        reg = <0x292d0000 0x10000>;
> +        #clock-cells = <1>;
> +        #reset-cells = <1>;
> +    };
