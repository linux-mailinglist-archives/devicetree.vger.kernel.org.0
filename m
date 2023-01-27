Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2062067E8F0
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 16:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233034AbjA0PIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 10:08:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbjA0PIS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 10:08:18 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6C28834AE
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 07:08:13 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id j36-20020a05600c1c2400b003dc39cb9c33so1323008wms.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 07:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AW2pWXTyUHGTvF3vRsrjdCAjX1GGIv4T9LN8Vukc73Y=;
        b=tTz9+hqJ7Jy1km5Dced/EYS/TFgBjlN4MHTuOxRHugbLWpQK/LCF0b6aDaIRqSma4I
         +kWw5+19yGWEq3zkw8Y5rUu/v5zT9lkQKC2ARFeEt+OWwBha93eynpgSDWb5/E/6ZAc8
         9n9JYPTmtLf9TpekqJpz6sRI7ODTBxq2VAFfmTO4zrTqRGJUDjvcs/rbSg4AyCOObFwJ
         J+r8/nTY7PWU3akKOc3L9vUpEGlHcZ7SnsdMllrHEOVVqmSxsIJubhGIZAzevXNzCwwO
         M2g98zO0kZsrqGHZPM+x/l8yez9sVj1+NoJAeC39o+CIefB+O/nLs0oUPD+PVnCGKwC2
         iZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AW2pWXTyUHGTvF3vRsrjdCAjX1GGIv4T9LN8Vukc73Y=;
        b=eNGKE8DLn6o8lpJC2QsBNDLST8vwdaKSE7XGS0xm5f827Z+P2hyp+PMbHrz6pRrjL+
         tZBkKXJ+/DII6tB93LtGcoB/YLq1i2m3nsqEAruauybw9RPmQFuZzAoZc+22HnoIC8nK
         DYNJo/MNXgqudLUsuH5pMTM2B7m0Nku9n4gNi6t2wsFRPFkK4dyQmWJ4vuaylwbJrIH+
         3jbwRvpT8dzHrX/WlnaobLKFn4KQd/7HWvOcHXLdbhx26FV9rgS8evOG2V9g5sjFjsL9
         RWljbEsSq7tvzluVn+cEj3ga2KK41o4P+ne4pgub8L43RC6tVHCCKgY2ijB/8CoNW42s
         Bx1A==
X-Gm-Message-State: AFqh2kp79GHqnizNZg+tMbqzxJAXKbq/xYT7U4dM0T3pFcD9zMsSq5LR
        eeyluk5ClAe5YBjVGDm6Erd8VA==
X-Google-Smtp-Source: AMrXdXt78EcrCHO17FyVHOV+gQgWXoL2exBvkBWIstUfl0BNIQuPBstljwxZrmYkM2CDqNkqhXEnnA==
X-Received: by 2002:a05:600c:c05:b0:3db:2252:e50e with SMTP id fm5-20020a05600c0c0500b003db2252e50emr32563617wmb.24.1674832092081;
        Fri, 27 Jan 2023 07:08:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bi5-20020a05600c3d8500b003db0bb81b6asm4890048wmb.1.2023.01.27.07.08.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 07:08:11 -0800 (PST)
Message-ID: <33c2038b-5e06-4eb2-82b8-007bb735bfb1@linaro.org>
Date:   Fri, 27 Jan 2023 16:08:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 07/15] dt-bindings: clock: Add Ambarella clock bindings
Content-Language: en-US
To:     Li Chen <me@linux.beauty>
Cc:     li chen <lchen@ambarella.com>,
        michael turquette <mturquette@baylibre.com>,
        stephen boyd <sboyd@kernel.org>,
        rob herring <robh+dt@kernel.org>,
        krzysztof kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "moderated list:arm/ambarella soc support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:common clk framework" <linux-clk@vger.kernel.org>,
        "open list:open firmware and flattened device tree bindings" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        arnd bergmann <arnd@arndb.de>
References: <20230123073305.149940-1-lchen@ambarella.com>
 <20230123073305.149940-8-lchen@ambarella.com>
 <0c19efb4-3bca-f500-ca24-14b9d24369ef@linaro.org>
 <87y1prgdyu.wl-me@linux.beauty>
 <b26a52ff-6b8a-8a64-7189-346cd2b0d705@linaro.org>
 <87tu0ehl88.wl-me@linux.beauty>
 <ec9fc589-2612-3315-3550-83b68bead926@linaro.org>
 <87sffyhgvw.wl-me@linux.beauty>
 <f70def8e-b148-616f-a93e-c2a8fb85be03@linaro.org>
 <185f3b3a330.11c135c37327076.6300919877819761183@linux.beauty>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <185f3b3a330.11c135c37327076.6300919877819761183@linux.beauty>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 15:48, Li Chen wrote:
>  > 
>  > but what you are saying is that there is no separate clock controller
>  > device with its own IO address but these clocks are part of rct_syscon.
>  > Then model it that way in DTS. The rct_syscon is then your clock
>  > controller and all these fake gclk-core and gclk-ddr nodes should be gone.
> 
> Ok, I will remove these fake nodes, and model the hardware as:
> 
> rct_syscon node
> | clock node(pll, div, mux, composite  clocks live in the same driver)
> | other periphal nodes

You need clock node if it takes any resources. If it doesn't, you do not
need it.

Best regards,
Krzysztof

