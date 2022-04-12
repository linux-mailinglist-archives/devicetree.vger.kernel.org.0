Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 535494FE059
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345339AbiDLMfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:35:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346054AbiDLMf1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:35:27 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2BAB5DE41
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:53:47 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id bh17so36791107ejb.8
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cwWMneWmYo0bsVQNTnfjzMcjYCr1j17IxDi8v2ddzV0=;
        b=pOPSFaKNtRrc6Xfd6Mgck9tiiSqlG/jRNHohJ6jbz469ZDQEJDVr5tBlX/x+HzYwET
         UazcNzCtzLdaFmC9tgK7KPUq7O+v+EG92zXkoHj1FlwX+809xEXwr5rOZJKRTlgzWRJb
         LfVUVGYh6ySPN0yaBiYZXDMMoGG5bWlAEOBfIMFCnuMm8eOS/PMXVrzTVblV5IhcGbI2
         ocGyzKdbCItAa649nhhKEpivREE2IGCbn0YXFUrMUthE1DrYQBA/g8MRXaF2P5ixtFOk
         fB/cBcJTrOJIU5kUorcq+6d7oZCRDkUB0tnNdsEDPtBYpA389yzBbduVHLPf+NYbvrmJ
         DFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cwWMneWmYo0bsVQNTnfjzMcjYCr1j17IxDi8v2ddzV0=;
        b=sbW/rSY7Nl+qtqBVc24WosMs8DmFRwvIL4T0/jtpfnhYkT11uIG2CaZ6R4qI0kwA1c
         jt+CEuKiTi8Pv0KlQTH+DvGBajRRCnzTWXJa9R+PpSEE7Jx8PTBtEK1D9Fl0KJQGPKVv
         EDWNs/aZMv9DH3/AX05QD6lwesGCmBD2V+e4fBguTtexWS1TEcF7gAdtySbCJ6UypH5y
         f/agA9Lw5TIamAaP4hoqKs0BLZhhvFT1gWkxE6gDCU8nQS9ABbKyB0jOf6s0Uar7Bs0c
         1wcDbQ0XZ4uussy+7hKexHZIjFTI+p5vJ9ahp8Oq8q/PV8e2HLjwBK1aj99mRM74dfYY
         iDkw==
X-Gm-Message-State: AOAM533BGKHBzXmSfWTch0xCjq7UPZ6lnthB9s3qzT8WCkQM7P+4fkDa
        o6kUpi5+m/jqD0J0dj7AsliyQQ==
X-Google-Smtp-Source: ABdhPJzjUIVyQeW3XuC0ld4eIJnrJZrmjsdr+XuecYgxxiG+iAXjBdVXzyJPY252GX4f3SnJi4TWGA==
X-Received: by 2002:a17:906:99c5:b0:6df:8215:4ccd with SMTP id s5-20020a17090699c500b006df82154ccdmr34666885ejn.684.1649764426399;
        Tue, 12 Apr 2022 04:53:46 -0700 (PDT)
Received: from [192.168.0.195] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id v21-20020a1709064e9500b006e8973a14d0sm2158703eju.174.2022.04.12.04.53.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 04:53:45 -0700 (PDT)
Message-ID: <c13a0f34-4938-3d56-43e0-5a9053e0bc25@linaro.org>
Date:   Tue, 12 Apr 2022 13:53:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: Add TMP401, TMP411 and TMP43x
Content-Language: en-US
To:     Camel Guo <camel.guo@axis.com>, linux@roeck-us.net,
        jdelvare@suse.com, robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     kernel@axis.com, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Camel Guo <camelg@axis.com>
References: <20220411100329.1783432-1-camel.guo@axis.com>
 <20220411100329.1783432-2-camel.guo@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220411100329.1783432-2-camel.guo@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 12:03, Camel Guo wrote:
> From: Camel Guo <camelg@axis.com>
> 
> Document the TMP401, TMP411 and TMP43x device devicetree bindings
> 
> Signed-off-by: Camel Guo <camelg@axis.com>
> ---
>  .../devicetree/bindings/hwmon/ti,tmp401.yaml  | 111 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/ti,tmp401.yaml
> 

Thank you for your patch. There is something to discuss/improve.

> diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp401.yaml b/Documentation/devicetree/bindings/hwmon/ti,tmp401.yaml
> new file mode 100644
> index 000000000000..28be5cbb009b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ti,tmp401.yaml
> @@ -0,0 +1,111 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/ti,tmp401.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TMP401, TPM411 and TMP43x temperature sensor
> +
> +maintainers:
> +  - Guenter Roeck <linux@roeck-us.net>
> +
> +description: |
> +  ±1°C Remote and Local temperature sensor
> +
> +  Datasheets:
> +  https://www.ti.com/lit/ds/symlink/tmp401.pdf
> +  https://www.ti.com/lit/ds/symlink/tmp411.pdf
> +  https://www.ti.com/lit/ds/symlink/tmp431.pdf
> +  https://www.ti.com/lit/ds/symlink/tmp435.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,tmp401
> +      - ti,tmp411
> +      - ti,tmp431
> +      - ti,tmp432
> +      - ti,tmp435

Blank line, please.

> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  ti,extended-range-enable:
> +    description: |

No need for "|". Here and in most of other cases below.

> +      When set, this sensor measures over extended temperature range.
> +    type: boolean
> +
> +  ti,n-factor:
> +    description: |
> +      The value (two's complement) to be programmed in the n-factor correction
> +      register.

Do not describe the programming model (registers) but hardware property
instead.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    items:
> +      minimum: 0
> +      maximum: 255
> +
> +  ti,beta-compensation:
> +    description: |
> +      The value to be programmed in the beta range register.

The same, register values should not be stored in DT.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    items:
> +      minimum: 0
> +      maximum: 15
> +


Best regards,
Krzysztof
