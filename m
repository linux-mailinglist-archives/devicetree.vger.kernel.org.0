Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E947B64B7B4
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:47:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235077AbiLMOrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:47:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235151AbiLMOrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:47:41 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BC89E55
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:47:35 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id x28so5272121lfn.6
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k4nok8BY3siiFDquPeQ2TytKvcjSmVS/dgvFgseg7ik=;
        b=HYnCBRpytxfwopQmurCJw4ZesXzpWh1ZTkuM1rKlpuyTPQ7uudbwVhn335QadRIYLD
         WehWc+3TWZe+JF8z+HK+M0pczq1vvbzXSN72PYIk8LWpCO+DQ+lSzfZdmXGac+M0LOam
         VNHmvTGxY1fokVeODQxnHvwxO/oWFxq0EkUShW94YNbw/1UfxcZFgFpddQMjwM7aOmMD
         XP4BJHSFArlTGvycZe5iBzdtl+wn49Gb//w6jRZMaRi+Cq7NTZiBltp2jo98MgbF93Ex
         piFidWdsnRwOnIXtPxfX8XG2DNKoxVIQBJB+8dMkhT20+pha1USml/e53jYfKWJezzGP
         dOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k4nok8BY3siiFDquPeQ2TytKvcjSmVS/dgvFgseg7ik=;
        b=43LUfPZN2HmPmul5ozDtT25HExINOk5tjn5JWDTk2tebi5T+zasBYBbb44YkI0UxTs
         wiBGekrwXJ9+fcrFPkbEFkFPQTM1nmlh+wFMX7wPFXw66+B28BWa4180HGVd/QmixZdt
         hfKEx6rIKldmy3b+enXUHBs0hwSiaBcwnExivvxEFqXcH5ej3mzVOTuHULdS7vN9wYiP
         cQO8Q64ffZ+XZQ6X1l55N7R6r0x0Pn7CCCAnQ4FQ9cGGerEjoQOIp+3QfRPJbGu7otd5
         6VhuOE3sy6e2G6KR56DMp2fNVa3k9dfSg4uxCb3d53tu336hQTPTo+jni/PccvdeV8W6
         k0HA==
X-Gm-Message-State: ANoB5pkOMMFMWCh1WwLNXBTVdWLkqwdmQPAYfGxZuLDJ/5ih1hlADWj0
        rApCaUC6jziMtepthDMNTfrDlw==
X-Google-Smtp-Source: AA0mqf5AWivQso3+rQ7GJPnrkOnerQ3wHYiwvAoRejbAB4MoX2q6aan0hLdcEUxuc+smxvJfPmbw5g==
X-Received: by 2002:a05:6512:10c3:b0:4b5:5095:e211 with SMTP id k3-20020a05651210c300b004b55095e211mr5971923lfg.27.1670942853726;
        Tue, 13 Dec 2022 06:47:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b00492e5d31201sm398941lfr.7.2022.12.13.06.47.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:47:33 -0800 (PST)
Message-ID: <966e2e81-71ce-e3cd-af8c-29f2756e452e@linaro.org>
Date:   Tue, 13 Dec 2022 15:47:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert Synquacer EXIU
 to DT schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ard Biesheuvel <ardb@kernel.org>
Cc:     Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20221209171636.3351602-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221209171636.3351602-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/12/2022 18:16, Rob Herring wrote:
> Convert the Socionext Synquacer EXIU interrupt controller to DT schema
> format.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../socionext,synquacer-exiu.txt              | 31 -----------
>  .../socionext,synquacer-exiu.yaml             | 53 +++++++++++++++++++
>  2 files changed, 53 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.txt b/Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.txt
> deleted file mode 100644
> index dac0846fe789..000000000000
> --- a/Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.txt
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -Socionext SynQuacer External Interrupt Unit (EXIU)
> -
> -The Socionext Synquacer SoC has an external interrupt unit (EXIU)
> -that forwards a block of 32 configurable input lines to 32 adjacent
> -level-high type GICv3 SPIs.
> -
> -Required properties:
> -
> -- compatible           : Should be "socionext,synquacer-exiu".
> -- reg                  : Specifies base physical address and size of the
> -                         control registers.
> -- interrupt-controller : Identifies the node as an interrupt controller.
> -- #interrupt-cells     : Specifies the number of cells needed to encode an
> -                         interrupt source. The value must be 3.
> -- socionext,spi-base   : The SPI number of the first SPI of the 32 adjacent
> -                         ones the EXIU forwards its interrups to.
> -
> -Notes:
> -
> -- Only SPIs can use the EXIU as an interrupt parent.
> -
> -Example:
> -
> -	exiu: interrupt-controller@510c0000 {
> -		compatible = "socionext,synquacer-exiu";
> -		reg = <0x0 0x510c0000 0x0 0x20>;
> -		interrupt-controller;
> -		interrupt-parent = <&gic>;
> -		#interrupt-cells = <3>;
> -		socionext,spi-base = <112>;
> -	};
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.yaml b/Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.yaml
> new file mode 100644
> index 000000000000..a0d65022f07b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/socionext,synquacer-exiu.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/socionext,synquacer-exiu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext SynQuacer External Interrupt Unit (EXIU)
> +
> +maintainers:
> +  - Ard Biesheuvel <ardb@kernel.org>
> +
> +description: |+
> +  The Socionext SynQuacer SoC has an external interrupt unit (EXIU)
> +  that forwards a block of 32 configurable input lines to 32 adjacent
> +  level-high type GICv3 SPIs.
> +
> +properties:
> +  compatible:
> +    const: socionext,synquacer-exiu
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#interrupt-cells':
> +    const: 3
> +
> +  interrupt-controller: true
> +
> +  socionext,spi-base:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: The SPI number of the first SPI of the 32 adjacent ones the
> +      EXIU forwards its interrups to.
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#interrupt-cells'
> +  - interrupt-controller
> +  - socionext,spi-base
> +
> +unevaluatedProperties: false

One blank line here...

> +examples:
> +  - |
> +

and this one can be dropped

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

