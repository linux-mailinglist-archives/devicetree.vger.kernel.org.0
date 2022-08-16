Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6835956B3
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 11:39:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233661AbiHPJiY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 05:38:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233678AbiHPJhn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 05:37:43 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67B68D6326
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 00:59:33 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id y23so9849929ljh.12
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 00:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=g9AVhSipbaf/eXJy1pQ1TuttjNQk/U+DsKSgY1pczUU=;
        b=Uy6ZJgSKHU3wkm4PXrWnNLDqhjscMTqd0Ux0IrKuwQlJzNcE1idKJ01LVbbz+DwEbp
         0NaniCFs53GfwgdvFUL+EbwjEVdbeR7nuZph0C0MUk/EE9srqfIBGfJl+0s7m33T2ky3
         rDMpTTO/0Vx+ZD1eh/ZupuG3PU0Ir75fFSPVUn9b1F0J6rv7cBJBQyzuapg1lHhxFcBT
         3FtOb1TMEKgs9M8oWOwqhMPFzmojkygIdW0YwbgBVcT+i9RHURGWJQmWs5oecGT3cGSo
         ToFBbahVd1Hdr+pHXbUwBqiqDdKnUW6AWRKH415NRa6XxavubS5Q0WVCJXwc6CaJr6On
         I1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=g9AVhSipbaf/eXJy1pQ1TuttjNQk/U+DsKSgY1pczUU=;
        b=k5B5cp/uW7OR1fP7Rvbe8YhzcBBmlWb1lEk7d3fW6gFYvxJXwShLphZSCnGaCpBV7B
         ujOqG7oD6FRKI+16kjtn/VD5bUMsZ6NNjyFDKEkAWgpvaWQDBxYfAZJnDusclfZrI//m
         Ct8ZhzA1E2utqFrKT3OnLid7s/dQE+POVllbKe4y3kkfpzLuquxCLXtyKJxNIp0Bn78S
         QXqpls+sIpqXDELFLAqsx+YFrSPTTsccXpGIwfpmmM2fiduv7ymxtwn0c5e/+POT/280
         EHBvZIzy7f199ijCx6SsZeDmRAVgEV8fWLb4NsLre6TQK9to7Y9Va30xMkR0KMjMEkFQ
         3hjg==
X-Gm-Message-State: ACgBeo2kYByCj2YhZtTKmQ3lpVq9JOeBOrjP2dMQtzlOzJzNL7k86Fdm
        cnadRxPnT0Dd6xbXfL8lHQqnuNVNTJsVFw3i
X-Google-Smtp-Source: AA6agR6xQcCDwa5Y7ZedEXSH3KPdCrhgYaOW8MRt2LmiBXBDpKyIkaGnAKC7W2LpJgA43dLKExvbYg==
X-Received: by 2002:a2e:a78f:0:b0:25f:dedf:efb8 with SMTP id c15-20020a2ea78f000000b0025fdedfefb8mr6167930ljf.317.1660636771402;
        Tue, 16 Aug 2022 00:59:31 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id m23-20020a2e8717000000b0025e5631194dsm1695640lji.21.2022.08.16.00.59.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 00:59:30 -0700 (PDT)
Message-ID: <c7146f96-fec6-5371-7137-9829e635ea20@linaro.org>
Date:   Tue, 16 Aug 2022 10:59:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: edac: Add bindings for Xilinx ZynqMP OCM
Content-Language: en-US
To:     Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Borislav Petkov <bp@alien8.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        James Morse <james.morse@arm.com>,
        Robert Richter <rric@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org,
        saikrishna12468@gmail.com, git@amd.com,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
References: <20220816073203.27314-1-sai.krishna.potthuri@amd.com>
 <20220816073203.27314-2-sai.krishna.potthuri@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220816073203.27314-2-sai.krishna.potthuri@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/08/2022 10:32, Sai Krishna Potthuri wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Add bindings for Xilinx ZynqMP OCM controller.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> ---
>  .../bindings/edac/xlnx,zynqmp-ocmc.yaml       | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml b/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml
> new file mode 100644
> index 000000000000..9bcecaccade2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/edac/xlnx,zynqmp-ocmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx Zynqmp OCM EDAC driver

s/EDAC driver//
Is it a memory controller?

> +
> +maintainers:
> +  - Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> +  - Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> +
> +description: |
> +  Xilinx ZynqMP OCM EDAC driver, it does reports the OCM ECC single bit errors

The same. Describe the hardware, not the Linux driver or its subsystem.

> +  that are corrected and double bit ecc errors that are detected by the OCM

s/ecc/ECC/

> +  ECC controller.
> +
> +properties:
> +  compatible:
> +    const: xlnx,zynqmp-ocmc-1.0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    memory-controller@ff960000 {
> +      compatible = "xlnx,zynqmp-ocmc-1.0";
> +      reg = <0xff960000 0x1000>;
> +      interrupts = <0 10 4>;

Isn't the interrupt using common flags? If so, use proper defines.

> +    };


Best regards,
Krzysztof
