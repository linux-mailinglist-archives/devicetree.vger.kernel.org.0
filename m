Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C657738B98
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 18:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230051AbjFUQjA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 12:39:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbjFUQil (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 12:38:41 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B5C81BEC
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 09:38:13 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-98746d7f35dso782905566b.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 09:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687365484; x=1689957484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kHT0xkRPj/tHL2KhcXjDvfPGYpV6DV94rE8fbAVVN3g=;
        b=OuIf/Hk8Z6ZNeL5MTS+7vZTCeT+7y44aCN21cSuhvvHxvmGKL9onTLPW+IbnI9a5y5
         mlpV9SlP91WvG262OezJ/Ggywgt2WRILVvI7LWesxWa7U7Kp4wWHg2aRtwOkIG9xTYxI
         YpZhIV5WhQDhb9Zx1JXuNFy+YMgZ+jxeAKUoHG3qAwq1a5QxeB8IBwxtHNvOpad5xCjK
         QRQwiRjgglxH/qutqzAVg5xLJuorhIGhZ/GIynSYGrVcvlbSC3FueXm8nygKzCL06RNU
         den+lYE4UgFRCIWv09jZ9DvbXcoaBVDrSMTZlR/mlaHsxzgeC8fmHDSVNQ3kfW4oTZoO
         dWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687365484; x=1689957484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kHT0xkRPj/tHL2KhcXjDvfPGYpV6DV94rE8fbAVVN3g=;
        b=kWhddYwqXnfYT6+ivNFZkHisT+L6AK6Wq1G+ylA/hf7f4rjZN1i2umzuZnrYMyis/M
         3xk3ixin05zDChwRQDdO+Sc/Gxxml2w5OeyCooU6lWIk4G6oyjDClbjmBkt/7MW3CA7u
         X0SOZXHcvE2FSuWp4FjvXT20pTvQU+sj6XlH3qdzf7Jw1zOanw6eHAQSlXvGLqFJgKVR
         kMRnzRfcPPfyqtaL+bDx3OUOKH+A3jNzkFitzk2KnAEb9Hzh2sWgalHDK2xehCEsFn+Q
         HRBB8KkIZAkiySNdlZnPSOOCCliohou1JM+SBXDBNy/IrH/18E7Pb1iOMQ0qQBTQTpdJ
         M1VQ==
X-Gm-Message-State: AC+VfDxmLhKZNFkUKFZRl9oAYVwelXO4Ahzc4HZGQ0R+7gX5cc7gRO4j
        rTZwRI/jVWTkgal9wJwPKA89Vw==
X-Google-Smtp-Source: ACHHUZ74pD5lWhZRri048RG4p/7SNG3Sl7EjZJfgYf3y4RRrD12qSUSfXikA6LBchkNrVcsv/EkWKg==
X-Received: by 2002:a17:906:9b86:b0:982:21a1:c4e0 with SMTP id dd6-20020a1709069b8600b0098221a1c4e0mr16135482ejc.56.1687365484337;
        Wed, 21 Jun 2023 09:38:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id z19-20020a170906669300b00977c7566ccbsm3378068ejo.164.2023.06.21.09.38.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 09:38:03 -0700 (PDT)
Message-ID: <da300402-d417-5646-d4c9-7c100c351db1@linaro.org>
Date:   Wed, 21 Jun 2023 18:38:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] dt-bindings: power: supply: Document Mitsumi MM8013
 fuel gauge
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20230621-topic-mm8013-v1-0-4407c6260053@linaro.org>
 <20230621-topic-mm8013-v1-2-4407c6260053@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230621-topic-mm8013-v1-2-4407c6260053@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2023 17:39, Konrad Dybcio wrote:
> The Mitsumie MM8013 is an I2C fuel gauge for Li-Ion cells. The partial

Mitsumi

> datasheet is available at [1]. Add bindings for this chip.
> 
> [1] https://www.mitsumi.co.jp/latest-M/Catalog/pdf/battery_mm_8013_e.pdf
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../bindings/power/supply/mitsumi,mm8013.yaml      | 35 ++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/supply/mitsumi,mm8013.yaml b/Documentation/devicetree/bindings/power/supply/mitsumi,mm8013.yaml
> new file mode 100644
> index 000000000000..080fd44083ac
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/supply/mitsumi,mm8013.yaml
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/supply/mitsumi,mm8013.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mitsumi MM8013 fuel gauge
> +
> +maintainers:
> +  - Konrad Dybcio <konradybcio@kernel.org>
> +
> +properties:
> +  compatible:
> +    const: mitsumi,mm8013
> +
> +  reg:
> +    maxItems: 1


I think you miss several properties: three power supplies (although not
all might be needed) and most likely monitored-battery. One regulator
output and output GPIO probably can be skipped.

Best regards,
Krzysztof

