Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 669B76B2493
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 13:53:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230297AbjCIMxy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 07:53:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230361AbjCIMxw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 07:53:52 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7194A838A9
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 04:53:49 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id g3so6623934eda.1
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 04:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678366428;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BO4cSDH+yXCwg0BT3FsRcGzY/hRaLSEZ2u3ktKpW830=;
        b=ziWmzXQIaPy8kBMFn8U4Isxw4W011yHj1C92+vFeuSCbLm9g1WT38plDvFVRGx2o5S
         jH1jIYwIWfUyKXpXjG0iCd0INbTeBfMLPZqcssG4PoQsEdK8Jyb4w10tbvbo7KJAGLAo
         pFDM4xc0ROwcMCFxLrlm9M3EzRaHcpy3flTaPVFeccQ/k8ig36ebRyoNPHFtI05Y40M8
         h3WOAgENN3HpeH9bHCFz/jn5VdXSat/rXdmG9SmyHqzhRTdKP4IYg4vsLz0Q2QgHNs4i
         LCLAY9Wsxi2U1rD8y8mVySz3tzERir1uwFjmfA5odNPSfSFs1+YeR8Qi9jjcpiN/mNL9
         lokw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678366428;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BO4cSDH+yXCwg0BT3FsRcGzY/hRaLSEZ2u3ktKpW830=;
        b=ikYCdcmHeCPCykq0l+aJ/1BaF0rFfVnmbzWRqldydJkAgGFqB6f2pc7Szxr7n2sCQb
         93SClprFg5xeyOPbZLs/Wh1akg8ezEMWEe7Iidnsh4w1oLfCWSmPtPPFUNJOw9jM5sgj
         ddHkLEd2OAv6sh6c5EnIM8vCLZHSZ+/RoCLcB5+gYVUmCvia9q1q8WnXyf4c059WGTTh
         +364gsziDha7hC4TbdcEiNww7wC5VMtgLMPTmz34LTCVyEpL9x8CGPwiID2cTzrpuHJ1
         3j5ma8duL1Bz0ARqno5afvg6n6ZhDyOIL+jVSEWSdaISarLMWxxVBvW+14rJ2fhr2qVJ
         EQ2w==
X-Gm-Message-State: AO0yUKXNT1+97ZjIsvBZegW/136g1rcHYJBwBgFzTkTPbVAS4ouqDdJM
        OxOeQ3EvDrI6PHyjgF/Ms/6REQ==
X-Google-Smtp-Source: AK7set8sieCz4hwrVvbAOjrecgn2A01genzK5N4Z+WBEZA1KC00G5BKipuhwVn3ZnC5rsqEVTLYnAA==
X-Received: by 2002:a17:906:80c1:b0:87b:d62c:d87 with SMTP id a1-20020a17090680c100b0087bd62c0d87mr22515819ejx.1.1678366427965;
        Thu, 09 Mar 2023 04:53:47 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:7ee2:e73e:802e:45c1? ([2a02:810d:15c0:828:7ee2:e73e:802e:45c1])
        by smtp.gmail.com with ESMTPSA id e7-20020a170906c00700b008cff300cf47sm8737117ejz.72.2023.03.09.04.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 04:53:47 -0800 (PST)
Message-ID: <98964f70-f7f7-9560-3cfb-84eafb33a492@linaro.org>
Date:   Thu, 9 Mar 2023 13:53:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [EXTERNAL] Re: [PATCH v5 1/2] dt-bindings: net: Add ICSSG
 Ethernet
Content-Language: en-US
To:     Md Danish Anwar <a0501179@ti.com>, Rob Herring <robh@kernel.org>,
        MD Danish Anwar <danishanwar@ti.com>
Cc:     "Andrew F. Davis" <afd@ti.com>, Suman Anna <s-anna@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        YueHaibing <yuehaibing@huawei.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>, andrew@lunn.ch, nm@ti.com,
        ssantosh@kernel.org, srk@ti.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230210114957.2667963-1-danishanwar@ti.com>
 <20230210114957.2667963-2-danishanwar@ti.com>
 <20230210192001.GB2923614-robh@kernel.org>
 <43df3c2c-d0d0-f2b8-cf8b-8a2453ca43b4@ti.com>
 <63dbbda7-a444-8dac-6399-45e305652155@linaro.org>
 <d7f18805-7b26-e2c9-a40e-262165ec8f9b@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d7f18805-7b26-e2c9-a40e-262165ec8f9b@ti.com>
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

On 09/03/2023 12:44, Md Danish Anwar wrote:

> 
> The SRAM that we are using here is phandle to MMIO-SRAM only. In the example
> section you can see, sram node points to msmc_ram (ti,sram = <&msmc_ram>;) And
> msmc_ram has compatible as "mmio-sram" in k3-am65-main.dtsi [1].
> 
> 	msmc_ram: sram@70000000 {
> 		compatible = "mmio-sram";
> 		reg = <0x0 0x70000000 0x0 0x200000>;
> 
> So I can use 'sram' property as there is no need to make this as ti specific.
> Let me know if it seems good to you.

Yes, it's fine, thanks.

Best regards,
Krzysztof

