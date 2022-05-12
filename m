Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7752B524F5D
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 16:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354679AbiELOET (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 10:04:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354964AbiELOES (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 10:04:18 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25DF7580DE
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:04:17 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id w24so6394405edx.3
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ObfwnmtrxkKT50YzmCvliwo/dT5DMiUQiO0PH0LTMx0=;
        b=PQYeTpEbK+tYHe872qmLftAqI/d4BlbDIDFQkTYjTxrBTRNjTmDJ1qyGjiB2HlDqGQ
         9xauAiYkkluMogshl7JwT76akt+9lCQyiq7k9ZN39Mu+eVSBGvX7Sn6hkPEyMdu76izm
         wyOvXOhrZ9lEzFlAztS4dKVJ8bDywjg0D9FGFCC3kiHDpyx2kLAcD60elGv8jateClaN
         jw5WlU4lTHCq2K2YK4364eAdCpSVVA4YjiBJCJYHFiqTp9DzeQMa2j+rHTGzwBm/23oi
         syJHx5eyczEpaX31duAOMQdfUm8XNHp163ZsIhJ0SkBe82I4N+8ZLekjfg3+6kgd5lA7
         FbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ObfwnmtrxkKT50YzmCvliwo/dT5DMiUQiO0PH0LTMx0=;
        b=15WnoHQhAWTDM94/zIG0sHJwEjNFjVNZnHHYePCyw5fAKxxhEGr/6F4n20k1CrD9ED
         9d3vswYxmz0FejcfQNxQcMcWTjgLgRHWVNOGlUSuw8b5r18Pj4nOaMmXlL4Yqdh1gCUU
         yMuRkvAoG7neMCZrYnatxRDoRYO7/rF2NZCRhANsgFshy+nrd9JIn5Cr7GdPAlVOaus7
         uALTIdnHX8++m1uxJlUA6sXYspr+TYace9UQtizwr6/S2lUnnOB0M14cSV5/B1orcAJH
         eHgktzDQVcxLJ8GA/SuzfzBW+Qls73sn/u+3DRvCOw1UaN4b0TkmJFvsYKAnpcUuXVSl
         gCDQ==
X-Gm-Message-State: AOAM5301+IPJfKEfT89/t+nl4IOiGxNk3plawD2ih8YT2Zwuuy1ObQU9
        TmvyIp7WMlW11no/hzyhNGU8Kg==
X-Google-Smtp-Source: ABdhPJyTJw8+7v3GXv2bh38/HEmQHaY6esp5J8bzfqvccK20LUmGMVe7oaS7gE+migdw2SOqftSY1A==
X-Received: by 2002:a50:ea8b:0:b0:428:7d05:eb7e with SMTP id d11-20020a50ea8b000000b004287d05eb7emr29484883edo.185.1652364255711;
        Thu, 12 May 2022 07:04:15 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id rv21-20020a17090710d500b006f3ef214e06sm2133546ejb.108.2022.05.12.07.04.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 07:04:15 -0700 (PDT)
Message-ID: <f0969769-9f24-7e48-6a60-adeea94404e1@linaro.org>
Date:   Thu, 12 May 2022 16:04:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH V4 2/5] dt-bindings: clock: Document MA35D1 clock
 controller bindings
Content-Language: en-US
To:     Jacky Huang <ychuang3@nuvoton.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, ychuang570808@gmail.com
Cc:     robh+dt@kernel.org, sboyd@kernel.org, krzk+dt@kernel.org,
        arnd@arndb.de, olof@lixom.net, catalin.marinas@arm.com,
        will@kernel.org, soc@kernel.org, cfli0@nuvoton.com
References: <20220510032558.10304-1-ychuang3@nuvoton.com>
 <20220510032558.10304-3-ychuang3@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220510032558.10304-3-ychuang3@nuvoton.com>
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

On 10/05/2022 05:25, Jacky Huang wrote:
> Add documentation to describe Nuvoton MA35D1 clock driver bindings.
> 
> Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
> +
> +    clk: clock-controller@40460200 {
> +        compatible = "nuvoton,ma35d1-clk";
> +        reg = <0x0 0x40460200 0x0 0x100>;

I don't think you tested your bindings. This fails.

clock-names below as well. Please do not send untested code.

Testing is explained here:
https://elixir.bootlin.com/linux/v5.18-rc6/source/Documentation/devicetree/bindings/writing-schema.rst#L111

Best regards,
Krzysztof
