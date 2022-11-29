Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F2F763C32F
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:52:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235494AbiK2OwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:52:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234653AbiK2OwQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:52:16 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C566C0A
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:52:15 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id f13so22399358lfa.6
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=THbXrSPilThQmkL3HqLJtz8bSKPIZex2SgERauDeY9k=;
        b=w1Ya/H9RW3WgwQIGW3c6zugj0Cxk0KZmbF4u2y54l9S9eLu95Fbh46p8TjHNUsjOPj
         QHpkRwjhqSeT4Nh4SXwjO1Iv8wxCmpXUJwePrVL+Y2/mKyUM1w1BQ4qsk15q7e+AHEjK
         B7q/iwPjtlc8qQgAlk9pzDSO33WEnQhpo4o+Y/k4UUf4rwzIJki0S0WjgtAEEBSgLWVS
         KczYOWqxOCzNrRQJxH9gtvoTLxibDtNoDpxcgkunFbhvtXHCf04Yqc2Qnb/9GxPcPb8W
         KWIlPgYyOJyeRlyY/5iClYn4VAKlpDPMl4+qZgNsMTpfwetOBM+fdifyTuhR6gZ+rCzT
         lkOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=THbXrSPilThQmkL3HqLJtz8bSKPIZex2SgERauDeY9k=;
        b=2mHiR110SlpdSTI0ARafkQTTA7Xuhbq4NG6hWLl7E87Er3/8wB9+yRC6eYlcIFGLRY
         CkxCGddrdrdgoERIVTV/zgAwnhdTo6jNnbBwUjxmuuwh1lTLAL2NvEuCixlPYuik2/i2
         VfLyFwi2s3VgQ11SopzT26sJVOJRZVJaem/hw63KB6TeVm9lQ15VPcle4ERTCBXvPn6i
         xytoLsU5Gnt3s8nvCBE3dXYfuWbCQBCPsHTCsPGpr8X14qa/Lx8leNqw3Y7PEZeCL8eZ
         M0ZzSdcinh7JLJR6yYsh/yU/BLCQYIe0irn1ttstYuEa2PgymoIr8oCl/8En53XY5s18
         PwlA==
X-Gm-Message-State: ANoB5plk0Y0k+T6FyWdlUYSTAj89FOSbtEP9kPwh0/8HuDwSU5E/GKDY
        ii8dNUII3JNrF8MQzNjnjmK3Ow==
X-Google-Smtp-Source: AA0mqf7kC2lA2X4hdT5USucUNxqF83rk3L/+mbNQDtSoUMtSIaVsXjsMHT6yyN59hx2BC055eUbNmw==
X-Received: by 2002:a19:2d0e:0:b0:4a2:4f32:6062 with SMTP id k14-20020a192d0e000000b004a24f326062mr17726652lfj.188.1669733533413;
        Tue, 29 Nov 2022 06:52:13 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u4-20020ac248a4000000b0049944ab6895sm2209703lfg.260.2022.11.29.06.52.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 06:52:12 -0800 (PST)
Message-ID: <12a98c77-5464-0f25-9081-13217f396484@linaro.org>
Date:   Tue, 29 Nov 2022 15:52:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 7/8] dt-bindings: soc: socionext: Add UniPhier DWC3 USB
 glue layer
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221129103509.9958-1-hayashi.kunihiko@socionext.com>
 <20221129103509.9958-8-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129103509.9958-8-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/11/2022 11:35, Kunihiko Hayashi wrote:
> Add DT binding schema for components belonging to the platform-specific
> DWC3 USB glue layer implemented in UniPhier SoCs.
> 
> This USB glue layer works as a sideband logic for the host controller,
> including core reset, vbus control, PHYs, and some signals to the
> controller.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../socionext,uniphier-dwc3-glue.yaml         | 106 ++++++++++++++++++
>  1 file changed, 106 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml b/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml
> new file mode 100644
> index 000000000000..66f8786dd305
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/socionext/socionext,uniphier-dwc3-glue.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext UniPhier SoC DWC3 USB3.0 glue layer
> +
> +maintainers:
> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> +
> +description: |+
> +  DWC3 USB3.0 glue layer implemented on Socionext UniPhier SoCs is
> +  a sideband logic handling signals to DWC3 host controller inside
> +  USB3.0 component.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - socionext,uniphier-pro4-dwc3-glue
> +          - socionext,uniphier-pro5-dwc3-glue
> +          - socionext,uniphier-pxs2-dwc3-glue
> +          - socionext,uniphier-ld20-dwc3-glue
> +          - socionext,uniphier-pxs3-dwc3-glue
> +          - socionext,uniphier-nx1-dwc3-glue
> +      - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^reset-controller@[0-9a-f]+$":
> +    $ref: /schemas/reset/socionext,uniphier-glue-reset.yaml#
> +
> +  "^regulator@[0-9a-f]+$":
> +    $ref: /schemas/regulator/socionext,uniphier-regulator.yaml#
> +
> +  "^phy@[0-9a-f]+$":
> +    oneOf:
> +      - $ref: /schemas/phy/socionext,uniphier-usb3hs-phy.yaml#
> +      - $ref: /schemas/phy/socionext,uniphier-usb3ss-phy.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    usb-controller@65b00000 {

Node name: usb. There is no usage of "usb-controller".

> +        compatible = "socionext,uniphier-ld20-dwc3-glue", "simple-mfd";
> +        reg = <0x65b00000 0x400>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0 0x65b00000 0x400>;
> +
> +        reset-controller@0 {
> +            compatible = "socionext,uniphier-ld20-usb3-reset";
> +            reg = <0x0 0x4>;

So now I see the unit addresses, which means none of your previous
patches needed them. This raises next question - why this device is
special and does not use syscon but own unit address?

Are the children here - regulator, reset controller and phys - related
to the USB?

Best regards,
Krzysztof

