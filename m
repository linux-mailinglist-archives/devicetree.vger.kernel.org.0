Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA37766493
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 08:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233133AbjG1G4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 02:56:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjG1G4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 02:56:32 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09012BA
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 23:56:31 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9d3dacb33so485131fa.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 23:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690527389; x=1691132189;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VreCUFB5kzGwTE8bquwu9Z+e/3ur68r7J1DSeuRNyD0=;
        b=mZMoLWHG65XVvEKR0LLV5dcFIfEmOy1dHPGwEpWl6Ycs+Nn/5eVIpe/oBc8WhzJ01P
         yRt96GOC2eBD0uVFm3f0cxOtIMcZ5myDymUaF24dyu2GC2dXHVMgHrNfLdsmT8M2W2Wa
         5FaL/lhCHlMPmCnPJ0e75xb6+ImJiri/Ft/O/ta2IS2FD17ZHbHAMIUKTyQkcoulK8Jb
         oBbkYrqkB52fZgnlqV2F7vILuXeZ14DiK86/XAonltRWQzvunsqVvh1DvORLVllYhQBG
         9sZN0VfvLJ0uYd9vme4a05booi6SNECqnQRBN9h+E/iviHqwtMjT5risZs59Jk5yGC7q
         AHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690527389; x=1691132189;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VreCUFB5kzGwTE8bquwu9Z+e/3ur68r7J1DSeuRNyD0=;
        b=Ljin+NftcHTGkCc/p1HvdpWce++DuMsGXy4cCZbo1dbWPR4pAS0DfoeVHHUDjBVZuD
         yI3hbUM2+joyr0fDc77vgYOye/8fZDPrAB4AoKcJdKhmjk5vFP7/Gkhi7wlBcAAvrSQD
         5e6WoxhXi3m3WF1pi93yjCJNBdrKUbS3POElrgnfHkJlz91lgftHL3N9nHXCTCX4jJn9
         MTalkxwUYnHNECgrPfURcUhgakdYjAFPCBzelTb2He5+7Uxbw+FWlWuOIpzbeW3R43KA
         QKSelthzjdOV5A4A/Z6GVviXOGCGk2ngFDVzexUvVXB3eLH0ltOnd1nMrZ0iIQS0HHRw
         BQKQ==
X-Gm-Message-State: ABy/qLZLeTlFOtWGXcSXnt1bKJjkRmGv2OwNlXBthSxyVnNyeOcYQ6x4
        Slf8MtHhOUyKF7J5u9twOHvbp9cG/66zcvKPK056Gw==
X-Google-Smtp-Source: APBJJlHWClCWS/slPCAYZeik+Paow8nKYb/tCOT5BCx46pLAs+0QX8CmCibw+N7CVPFDBcN0mib7Tw==
X-Received: by 2002:a05:651c:206:b0:2b9:c4ce:558f with SMTP id y6-20020a05651c020600b002b9c4ce558fmr959873ljn.37.1690527389232;
        Thu, 27 Jul 2023 23:56:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p20-20020a1c7414000000b003fbdd9c72aasm3440570wmc.21.2023.07.27.23.56.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 23:56:28 -0700 (PDT)
Message-ID: <c735bf62-9d06-c46f-fe80-d9fc88ab847f@linaro.org>
Date:   Fri, 28 Jul 2023 08:56:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3] dt-bindings: clock: versal: Convert the
 xlnx,zynqmp-clk.txt to yaml
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org
Cc:     git@amd.com, linux-clk@vger.kernel.org, michal.simek@amd.com,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com
References: <20230724111843.18706-1-shubhrajyoti.datta@amd.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230724111843.18706-1-shubhrajyoti.datta@amd.com>
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

On 24/07/2023 13:18, Shubhrajyoti Datta wrote:
> Convert the xlnx,zynqmp-clk.txt to yaml.
> versal-clk.yaml already exists that's why ZynqMP is converted and
> merged.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>


> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - xlnx,zynqmp-clk
> +
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: PS reference clock
> +            - description: reference clock for video system
> +            - description: alternative PS reference clock
> +            - description: auxiliary reference clock
> +            - description: transceiver reference clock
> +            - description: (E)MIO clock source  (Optional clock)
> +            - description: GEM emio clock  (Optional clock)
> +            - description: Watchdog external clock (Optional clock)

This is 8 items, not 7 as your top-level property says.

> +
> +        clock-names:
> +          items:
> +            - const: pss_ref_clk
> +            - const: video_clk
> +            - const: pss_alt_ref_clk
> +            - const: aux_ref_clk
> +            - const: gt_crx_ref_clk
> +            - pattern: "^mio_clk[00-77]+.*$"
> +            - pattern: "gem[0-3]+_emio_clk.*$"
> +            - pattern: "swdt[0-1]+_ext_clk.*$"
> +


Best regards,
Krzysztof

