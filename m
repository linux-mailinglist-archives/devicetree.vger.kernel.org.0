Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB517525E54
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 11:19:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378658AbiEMIz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:55:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378496AbiEMIzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:55:25 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDFCD2B24CA
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:55:23 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id r188-20020a1c44c5000000b003946c466c17so3895293wma.4
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=myXpimdE/F5KRARbA10voLV62pU/bNX1bVWuCXbL0BA=;
        b=fd5RrXYkoqBZJ/N32aKOfl0RiNHDy8NcbumP96Rx79mqf24Yp+AhEFgzcxxZXfunKA
         D9dp23B4yh90HBZHdjWA6gukTnZBs1OXIyESrxJXVo78IqlvigORtSYn+o9CrXV+ByU7
         pZG1pjczQitPJYfwUMUjicK4SAmflQSwZ0IRQQFqaJUxx7EilZ3ZSj3eYOREFGHWikc+
         s6WCALdEFq5/K2HiIQ5s9QAOcv+gDWktMoeNS4xQ9gMNsCfcb8AyQDq+/ARWfwmnQxhc
         6RFFHCglv0UyAgdAtHGsJjzbCWCShHyMQI2hPYup78EPMBSkLQeOGWgVdgkIHfCL48t8
         hfjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=myXpimdE/F5KRARbA10voLV62pU/bNX1bVWuCXbL0BA=;
        b=hALWKckDjFlHkOEwPj0kPkvr+WLJQYEBJUUStWBfR9xhrHIS8HQ7a8v8sL31qRE6XT
         qr9scuoaj3ys+u+Z3WzBhSuu2Tn+Es+IGnFH43578AqhYNsq8NOP5awPUVTK/+cltRti
         xQu/TFJWlBOoktKHIehz1114HXN7ekDp0PGXbsY7Jf+rASPzCGXAi8iPcsvEUTr3T1cI
         gZHthStgEfHksoOTBFsTC3J3bWKC4Qg0M4DWSBgUlmtxCD0K/yeJkm3/ZFQGx31FYinc
         e7lEWQ6KMd5VQ2EsZ9scDo/a2vLzQKJrmpmtFxu6HdMTzoh6Nw06kj6tuHdFa/Amu3Bu
         VCJg==
X-Gm-Message-State: AOAM531hryIyMLllAgFcc5aVu9EJWT/Sg7KO4oAlAnkFAof2xtFyQ06/
        7rDHbbKJd/HXrz7pN8Sv97njAw==
X-Google-Smtp-Source: ABdhPJyGLJRJtebEKuvBCod0eNbDO5UdXq3r1pESWtRkj21BaegBUo51/kcof3SgYECbZyaIIUIY2w==
X-Received: by 2002:a05:600c:4e8c:b0:394:8144:6836 with SMTP id f12-20020a05600c4e8c00b0039481446836mr13738438wmq.130.1652432122469;
        Fri, 13 May 2022 01:55:22 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h21-20020a05600c351500b0039454a85a9asm2014229wmq.30.2022.05.13.01.55.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:55:21 -0700 (PDT)
Message-ID: <b4f919fa-b204-ca3b-6039-639176b94886@linaro.org>
Date:   Fri, 13 May 2022 10:55:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: humidity: Add si7020 bindings
Content-Language: en-US
To:     Eddie James <eajames@linux.ibm.com>, linux-iio@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        lars@metafoo.de, jic23@kernel.org, miltonm@us.ibm.com
References: <20220512162020.33450-1-eajames@linux.ibm.com>
 <20220512162020.33450-2-eajames@linux.ibm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512162020.33450-2-eajames@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 18:20, Eddie James wrote:
> Document the si7020 bindings with a new "silabs,skip-reset" property.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../bindings/iio/humidity/silabs,si7020.yaml  | 47 +++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml  |  2 -
>  2 files changed, 47 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/iio/humidity/silabs,si7020.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/humidity/silabs,si7020.yaml b/Documentation/devicetree/bindings/iio/humidity/silabs,si7020.yaml
> new file mode 100644
> index 000000000000..9bee010f8d56
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/humidity/silabs,si7020.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/humidity/silabs,si7020.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SI7020 humidity + temperature sensor
> +
> +maintainers:
> +  - David Barksdale <dbarksdale@uplogix.com>
> +
> +description: |
> +   The Silicon Labs Si7013/20/21 Relative Humidity and Temperature Sensors
> +   are i2c devices which have an identical programming interface for
> +   measuring relative humidity and temperature.
> +
> +properties:
> +  compatible:
> +    const: silabs,si7020
> +
> +  reg:
> +    maxItems: 1
> +
> +  siliabs,skip-reset:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Disables resetting of the device during probe
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c0 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      si7021-a20@40 {

Same comments as your v1. Generic node name, wrong property skip-reset
(implementation specific) and so on...

Give some time for review, before resending.


Best regards,
Krzysztof
