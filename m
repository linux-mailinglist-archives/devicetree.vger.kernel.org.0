Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4253074523D
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 22:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231337AbjGBUW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 16:22:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231211AbjGBUW1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 16:22:27 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 383C61BB
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 13:22:25 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-51de841a727so3651410a12.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 13:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688329343; x=1690921343;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ublbiuBAMBGcitttmWmHRPOByzhyZHfUTbys5aw0WvY=;
        b=qsgmn2pqNEedzCSjS+Jmgoi9pvvPIZJxg2U1pAtz2wzuM7qcDsIjcK64EmV1lDP3HD
         5mWSMyRkkUQunknygCz7yhW9Yb8hemX8DSxskGvZn6Yl9rW1tduAoRTw7M8yXEhTrMFM
         sM+oh24Slzz6NMSHQPru7BWOsDf6TrqKrLL4ukph5lYX6zv0lOjUUDmtY1qQHsYYFE0I
         3g+LcgREPUQWsUapSRGENSL/AQu1BY7wNsU6/icin5rWSjVQP2RvI9GhTEApvIIvFsTE
         3i8HVQ2AO6bynb41CoJkdwtHAk3jAmh90/q6Wk9q+Uz4zXdnw7TKuFgChNxZeHtHxwyw
         q9RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688329343; x=1690921343;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ublbiuBAMBGcitttmWmHRPOByzhyZHfUTbys5aw0WvY=;
        b=PEEpTGnK4va28kHnQ+b4T2D8Yv3sdEwVvudbqlVQhISctRUM56EobDxLMZ6qIBkHiI
         U+qZwxfYY2t9GVgL9ntOoFtPNaNQPrqhwcYD+x2ScIq4B7g6F5HXuUGagYHDHPtLP+NV
         +PqdhfXyqYuWPn5+dX9hoow2+6xMgOK/PtWnO62cvJLzIYI0Wdd46nUXsb1Emttcp0Yu
         lkx5BynsYz4r1hv6aizw9X02WO3jQtH47hLZHs0zhKr+QGDyxhAXtVXg0JfIN9cJWCmo
         jZrXikA48y8V7DMJAVUGDDb0G1gSTQhzJZlDXx6HyZq2Fp+fL2TjUJxbtFcP5WJHa5Jh
         wL6Q==
X-Gm-Message-State: ABy/qLb04VU9/OIxVb6vQgRo2Kp5G137f3DRKBD/Dxw287XDRofQaGRI
        yPSpjz8ERDWXF586F7h/nwYqEQ==
X-Google-Smtp-Source: APBJJlEvrPHskJ3Jbrfomgx8u+HL9CUqoe+biMhjntfv6CEkcXdK6cshr112iytfpVJSZr1m4yrYYg==
X-Received: by 2002:a17:906:5904:b0:98e:973:d39f with SMTP id h4-20020a170906590400b0098e0973d39fmr6500392ejq.33.1688329343664;
        Sun, 02 Jul 2023 13:22:23 -0700 (PDT)
Received: from [192.168.10.214] ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id b27-20020a170906195b00b00991e2b5a27dsm8335763eje.37.2023.07.02.13.22.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Jul 2023 13:22:23 -0700 (PDT)
Message-ID: <3ce07ab8-9ed0-d5c0-e7da-bb24085cc3f8@linaro.org>
Date:   Sun, 2 Jul 2023 22:22:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v9 00/13] dmaengine: edma: add freescale edma v3 support
Content-Language: en-US
To:     Frank Li <Frank.li@nxp.com>, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        peng.fan@nxp.com, joy.zou@nxp.com, shenwei.wang@nxp.com,
        imx@lists.linux.dev
References: <20230620201221.2580428-1-Frank.Li@nxp.com>
 <ZJxHc62V72eVMYu4@lizhi-Precision-Tower-5810>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZJxHc62V72eVMYu4@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/06/2023 16:45, Frank Li wrote:
> On Tue, Jun 20, 2023 at 04:12:08PM -0400, Frank Li wrote:
>> This patch series introduces support for the eDMA version 3 from
>> Freescale. The eDMA v3 brings alterations in the register layout,
>> particularly, the separation of channel control registers into
>> different channels. The Transfer Control Descriptor (TCD) layout,
>> however, remains identical with only the offset being changed.
>>
>> The first 11 patches aim at tidying up the existing Freescale
>> eDMA code and laying the groundwork for the integration of eDMA v3
>> support.
>>
>> Patch 1-11:
>> These patches primarily focus on cleaning up and refactoring the existing
>> fsl_edma driver code. This is to accommodate the upcoming changes and new
>> features introduced with the eDMA v3.
>>
>> Patch 12:
>> This patch introduces support for eDMA v3. In addition, this patch has
>> been designed with an eye towards future upgradability, specifically for
>> transitioning to eDMA v5. The latter involves a significant upgrade
>> where the TCD address would need to support 64 bits.
>>
>> Patch 13:
>> This patch focuses on the device tree bindings and their modifications
>> to properly handle and integrate the changes brought about by eDMA v3
> 
> @vkoul:
>   Do you have chance to check these patches? Any chance to come into 6.5
>   All audio parts of i.MX8x and i.MX9 was dependent on these patches.

Why do you ping during the merge window?

v6.5? And what about having it in next for two weeks? One thing is to
ping for something forgotten, different thing is to try squeeze patches
skipping our process.

Best regards,
Krzysztof

