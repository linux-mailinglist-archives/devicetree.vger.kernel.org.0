Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0C96674B21
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 05:45:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbjATEpQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 23:45:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230286AbjATEoc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 23:44:32 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38C66C459C
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 20:39:51 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id a9-20020a17090a740900b0022a0e51fb17so1244960pjg.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 20:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RWIYNuppM7AAD+qvYPC/5QUche3E86AIBS0kbWaUk0U=;
        b=CtKnlch5TApzzr0CCGqPM1CQvozLqv75z1WuB86J4aAQnrqwbaT6IT4JSebIrm0D7K
         2i1vtDakT4Qxk2A4k2AbKc3IHowSMTdVyUaW5ftRzrSb4FqtmMscdyBm6cvvQe5dJ7mH
         Iys0VJ8Og83For34iNxZIi5Y3fufTuY9O0hv/dVtUcLkHTwyxDTJZPl9ydrs5FhZYGfn
         ikbLjSOpwNUHabkSNJsrgE4CyYtb3xgZM191JfHhSV4ILIkcTTl42hcqH0W0G7fnutWk
         c08fFva0D2elOoGGc9Zn9YtAiSH2v7/HVz5feKBHb+Bmku1wWQuZxGYsjlvzwG5drMJI
         rTSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RWIYNuppM7AAD+qvYPC/5QUche3E86AIBS0kbWaUk0U=;
        b=U0PyqS/pfIrZUXBQ1/gyZolboElcbgvAHldR0gmXYRhwbSJAYbx8RZuJjkOdadEsZa
         ARm4pas2TRKP4e1yCL5Fu3dhnWABrm5FP/GFPQ3KUUBhf6R12Jcgs8LdLvHP2RmToX6e
         gw8CSfgLLmsDcmWSeyqNIiGtH43d9Xhbehy8D449+9mIPLR0B0zujHL5efavxRNo/aJ3
         rzX1hTYDvZN7nOOicVYqmKQjGUAhMvwqM28m/5ysFf6MqD8itz3NeD3eBiIBq6cs+cCV
         TFvAs1dlMhR2lWkE2Uw+u1trthYuqxvPJfLJDanikVkipWkkG32PZwOlOVKRcMD/ZoTE
         Fqwg==
X-Gm-Message-State: AFqh2koYNcEV/XojP+0nNnmh1uWFuyf3gfKsrFDtl5c2MhYPECU07YIu
        kgMhyo9p7Cvn4Ix1uZ7QsmT5pA==
X-Google-Smtp-Source: AMrXdXvvdLSwY/uzoL7Th6HNxOWjozwdhP+EXwEN6MojPot3e4KZMXx6DEzWH5ZdVGvwV+QYAsDEXw==
X-Received: by 2002:a17:902:c401:b0:194:dc73:5cf8 with SMTP id k1-20020a170902c40100b00194dc735cf8mr3601413plk.39.1674189520041;
        Thu, 19 Jan 2023 20:38:40 -0800 (PST)
Received: from localhost ([122.172.83.155])
        by smtp.gmail.com with ESMTPSA id f5-20020a170902684500b0019488a36e2asm9781690pln.277.2023.01.19.20.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 20:38:39 -0800 (PST)
Date:   Fri, 20 Jan 2023 10:08:34 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Ilia Lin <ilia.lin@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: opp: constrain required-opps
Message-ID: <20230120043834.txkg4tockxcjqs2g@vireshk-i7>
References: <20230119130028.106817-1-krzysztof.kozlowski@linaro.org>
 <20230119130028.106817-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230119130028.106817-2-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19-01-23, 14:00, Krzysztof Kozlowski wrote:
> Be specific how many required-opps are allowed.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> This change is independent, although logically is connected with my
> dtschema pull:
> https://github.com/devicetree-org/dt-schema/pull/95
> ---
>  Documentation/devicetree/bindings/opp/opp-v2-base.yaml     | 1 +
>  Documentation/devicetree/bindings/opp/opp-v2-kryo-cpu.yaml | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/opp/opp-v2-base.yaml b/Documentation/devicetree/bindings/opp/opp-v2-base.yaml
> index 47e6f36b7637..9b141a409191 100644
> --- a/Documentation/devicetree/bindings/opp/opp-v2-base.yaml
> +++ b/Documentation/devicetree/bindings/opp/opp-v2-base.yaml
> @@ -202,6 +202,7 @@ patternProperties:
>            for the functioning of the current device at the current OPP (where
>            this property is present).
>          $ref: /schemas/types.yaml#/definitions/phandle-array
> +        maxItems: 1

I may not under this property very well. What exactly does this line
say ? Asking as required-properties can have an array of phandles as
well.

>          items:
>            maxItems: 1
>  
> diff --git a/Documentation/devicetree/bindings/opp/opp-v2-kryo-cpu.yaml b/Documentation/devicetree/bindings/opp/opp-v2-kryo-cpu.yaml
> index b4947b326773..438880db1872 100644
> --- a/Documentation/devicetree/bindings/opp/opp-v2-kryo-cpu.yaml
> +++ b/Documentation/devicetree/bindings/opp/opp-v2-kryo-cpu.yaml
> @@ -59,7 +59,8 @@ patternProperties:
>  
>        clock-latency-ns: true
>  
> -      required-opps: true
> +      required-opps:
> +        maxItems: 1
>  
>      required:
>        - opp-hz
> -- 
> 2.34.1

-- 
viresh
