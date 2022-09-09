Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A53A5B317A
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 10:17:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230260AbiIIIPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 04:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231643AbiIIIPr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 04:15:47 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77467C7432
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 01:15:42 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id w8so1384914lft.12
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 01:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=W/xreeGvNkb7JyZgF+t6RkVPOOlwBSAA0/UCzyIRMsE=;
        b=cpHIgbmxGf6VnxhYVGrxQhM6cU5tfRxXNBISrU14pbieYxzMlmT2ssUG1vWDmAKniU
         8YgSMDm6XygZhijbCMqPRn/qUcl6va8eof+otnLLLuM+VAoJNavPj98MAJgB9vXQeHV3
         AwRzswIhcZxSwLoaIQKJcifF+/taeTTkMuPxMnCyx3Bnt+cxvVuo7MtsnkKH5HTwoKCg
         /Mx+3hDzWbLgawG4oKp5p0KiOjFL8dwn+I9bKSbJdW+os7E9oSQUnXyyjFIceWdZgZ6g
         HQaBMy1gCyFdWbX0rOF8xjnGQ322DvOGfZASkWTwuSH4wivM/IxO/2j0lW6eqFcZnNiS
         tiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=W/xreeGvNkb7JyZgF+t6RkVPOOlwBSAA0/UCzyIRMsE=;
        b=kyLIDaj0x0uLCX3EJ9Wu1mQ1NrwsDt2czozpKvrwnmx9UpBYD8RD/+yaMYLuU/KMMu
         YpO6Z89SNan0PzpbVMIYJJ/urVDNh/Te4Qsph4B3t2/k0lm4jY//Bq7bVf0FmZ/aER1l
         kFJgf0WTXIsfQU2Pq1y3l+n7J7RRs65nZKK1h5inzDaUnwtJTDB6cxAw1YY73inbL6Il
         J/szB0oQUB64PSwfDu1N5Vtps62cp1S9qH8lc+U3aywOiyRg1nSbSvc2zfRqVsJnFnOi
         l81UHjFNCU1cwtCNBBIZBBSfo5zN/y/VeL/egGhTACJuB/LjVeeSKn4rpwmttucYr3Mn
         gsWw==
X-Gm-Message-State: ACgBeo0Z6gH6AWFd5OkFi+pBnVNZYDZrFkhT5FFKdD24ddJ+HYxMFxLC
        NZItHJmhm4UccITKjNFrLp3BOg==
X-Google-Smtp-Source: AA6agR6eF6OzzUpaR7DtCygvRXUrw8nngBEYzOqC1mWyqyXz75uo02cebZthmxLAR1wiAKiHewpGdg==
X-Received: by 2002:a05:6512:c2a:b0:497:a1ee:7a21 with SMTP id z42-20020a0565120c2a00b00497a1ee7a21mr3947382lfu.221.1662711340407;
        Fri, 09 Sep 2022 01:15:40 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m22-20020ac24296000000b00494a27500c1sm176355lfh.163.2022.09.09.01.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 01:15:39 -0700 (PDT)
Message-ID: <2dbd4c08-1020-f743-1935-fd2ef8151e77@linaro.org>
Date:   Fri, 9 Sep 2022 10:15:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V7 1/2] dt-bindings: mfd: sprd: Add bindings for ums512
 global registers
Content-Language: en-US
To:     Cixi Geng <gengcixi@gmail.com>, lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, orsonzhai@gmail.com,
        baolin.wang@linux.alibaba.com, zhang.lyra@gmail.com,
        mturquette@baylibre.com, sboyd@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20220909073456.239668-1-gengcixi@gmail.com>
 <20220909073456.239668-2-gengcixi@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909073456.239668-2-gengcixi@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 09:34, Cixi Geng wrote:
> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> 
> Add bindings for Unisoc system global register which provide register map
> for clocks.
> 
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> Signed-off-by: Cixi Geng <cixi.geng1@unisoc.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mfd/sprd,ums512-glbreg.yaml      | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml b/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
> new file mode 100644
> index 000000000000..c8125dbd1d72
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2022 Unisoc Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/sprd,ums512-glbreg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Unisoc System Global Register
> +
> +maintainers:
> +  - Orson Zhai <orsonzhai@gmail.com>
> +  - Baolin Wang <baolin.wang7@gmail.com>
> +  - Chunyan Zhang <zhang.lyra@gmail.com>
> +
> +description:
> +  Unisoc system global registers provide register map
> +  for clocks and some multimedia modules of the SoC.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: sprd,ums512-glbregs
> +      - const: syscon
> +      - const: simple-mfd
> +
> +  "#address-cells": true
> +  "#size-cells": true

Hmm, why these are not const?

> +
> +  ranges:
> +    maxItems: 1
> +
> +  reg:
> +    maxItems: 1

Best regards,
Krzysztof
