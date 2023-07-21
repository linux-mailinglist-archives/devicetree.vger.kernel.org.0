Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2332E75C0BA
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:04:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbjGUIEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:04:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231273AbjGUIEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:04:21 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17F0A2710
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:04:19 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-31297125334so1020436f8f.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689926657; x=1690531457;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u9uYOCRA5YadDN02dX7/R6KaJAYc8dbbN6vLAWHejI0=;
        b=DfC2Abzho1Hf/+i1bGQ/ahasv/PMsVT80j0C85yQGApL2UwCYU+QicLDzNpZsHGJqU
         JdsaBm3igzvnH3jSCK0cP3GW3juQ69C7QQs4MB2ykqac6t+a4cL+kVTmmaFyhKEF2okS
         DENYjZ6fqArK6sdMSisfJ9DveXQaTZ+/3viKlkbsWzOUp9/BGiyYHsHpVTUTBZZHsq0W
         h+HbUfbOaezPWYJ497heHnwa55TJcstlEEOSqk/OW5JdDn4ApokjdXA8wLSWr0X6xSWT
         qxz9iQjjOsB4AKkbpnB9vke87XRtiS0W1thnwEyHVPr+mXpABjgapSggnij57RmbgZCk
         ugoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689926657; x=1690531457;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u9uYOCRA5YadDN02dX7/R6KaJAYc8dbbN6vLAWHejI0=;
        b=MFRSd3c76f3atuVE/7V3patd/Ngox0JnsacnAGIx/um3ABBO6+CyePt5SMWrScO2BJ
         NAnil2PI8hflPxL6u10TnwD113Q1P1fdKtJoe9O6O89KcvdBdG8QLA91yOwCHi6woA9M
         k69FPfU85hfClQtFTbonD6RN73uwQyYyUcBf/ZLzA/qIXw14fAxvjYQWh4bfIm3/pmN+
         c3+474MAQxdCTic9kZ3GVSCBoVNYUBgvD9zTKFOZWn+wQFG6QJ4+RVu+u6j8ez2CrJNU
         fx89BDbyIBQ7ALY86qSHbtTw1cunkUH/Y5JCLSSunvKU+EDO5lNu+3naUwos80xqEbZP
         iLnw==
X-Gm-Message-State: ABy/qLbDisfl+zR7smC1GiD9zKFcjbF2kreWV4e7KYN4BMN6lL8XEWV5
        Oi9mxU+qgFEourx9cLhdlxd5mA==
X-Google-Smtp-Source: APBJJlEML6EeH92FgA4w00FQaUwkaGEn7DDRSFfRrlIJyO51/cyCNcuW4pf7Q9nhFGKwSequGJWveQ==
X-Received: by 2002:adf:e64a:0:b0:316:f4b9:a952 with SMTP id b10-20020adfe64a000000b00316f4b9a952mr4818727wrn.31.1689926657529;
        Fri, 21 Jul 2023 01:04:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l16-20020a1c7910000000b003fba137857esm2900437wme.14.2023.07.21.01.04.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 01:04:17 -0700 (PDT)
Message-ID: <216a3abe-1350-cbb1-4cfd-0dc4d7f70a88@linaro.org>
Date:   Fri, 21 Jul 2023 10:04:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: usb: Add Intel SoCFPGA USB controller
 bindings
Content-Language: en-US
To:     adrian.ho.yin.ng@intel.com, gregkh@linuxfoundation.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, Thinh.Nguyen@synopsys.com,
        p.zabel@pengutronix.de
References: <cover.1689913114.git.adrian.ho.yin.ng@intel.com>
 <68037e45970a9ef930c609c002d36863d96b39cc.1689913114.git.adrian.ho.yin.ng@intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <68037e45970a9ef930c609c002d36863d96b39cc.1689913114.git.adrian.ho.yin.ng@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 06:30, adrian.ho.yin.ng@intel.com wrote:
> From: Adrian Ng Ho Yin <adrian.ho.yin.ng@intel.com>
> 
> Existing binding intel,keembay-dwc3.yaml does not have the required
> properties for Intel SoCFPGA devices.
> Introduce new binding description for Intel SoCFPGA USB controller
> which will be used for current and future SoCFPGA devices.
> 
> Signed-off-by: Adrian Ng Ho Yin <adrian.ho.yin.ng@intel.com>

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.

> ---
>  .../bindings/usb/intel,socfpga-dwc3.yaml      | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/intel,socfpga-dwc3.yaml

Filename matching compatible.

> 
> diff --git a/Documentation/devicetree/bindings/usb/intel,socfpga-dwc3.yaml b/Documentation/devicetree/bindings/usb/intel,socfpga-dwc3.yaml
> new file mode 100644
> index 000000000000..dedef70df887
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/intel,socfpga-dwc3.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/intel,socfpga-dwc3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel SoCFPGA DWC3 USB controller
> +
> +maintainers:
> +  - Adrian Ng Ho Yin <adrian.ho.yin.ng@intel.com>
> +
> +properties:
> +  compatible:
> +    const: intel,agilex5-dwc3

Why using compatible style different than other Agilex blocks? Which one
is recommended/official/correct?

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2

What are the items?

> +
> +  ranges: true
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: dwc3
> +      - const: dwc3-ecc
> +
> +  '#address-cells':
> +    enum: [ 1, 2 ]
> +
> +  '#size-cells':
> +    enum: [ 1, 2 ]
> +
> +# Required child node:
> +
> +patternProperties:
> +  "^usb@[0-9a-f]+$":
> +    $ref: snps,dwc3.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - ranges
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/reset/altr,rst-mgr.h>
> +    #define AGILEX5_USB31_SUSPEND_CLK
> +    #define AGILEX5_USB31_BUS_CLK_EARLY

Drop defines. Include proper header or use some numbers, if the headers
are not there yet.

> +
> +    usb1@11000000 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +          compatible = "intel,agilex5-dwc3";
Best regards,
Krzysztof

